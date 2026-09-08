import express from 'express';
import cookieParser from 'cookie-parser';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';

import { PORT, IS_PROD, PRECO_CENTAVOS, AMOSTRA_GRATIS } from './config.js';
import { carregarUsuario } from './middleware/auth.js';
import { router as authRoutes } from './routes/auth.routes.js';
import { router as quizRoutes } from './routes/quiz.routes.js';
import { router as paymentRoutes } from './routes/payment.routes.js';
import { router as webhookRoutes } from './routes/webhook.routes.js';
import { router as adminRoutes } from './routes/admin.routes.js';
import { pool } from './db/pool.js';

const AQUI = dirname(fileURLToPath(import.meta.url));
const PUBLICO = join(AQUI, 'public');

const app = express();
app.disable('x-powered-by');
// O Railway fica atras de proxy; sem isso o cookie secure e o rate limit se perdem.
app.set('trust proxy', 1);

app.use(express.json({ limit: '256kb' }));
app.use(cookieParser());
app.use(carregarUsuario);

app.get('/healthz', async (_req, res) => {
  try {
    await pool.query('SELECT 1');
    res.json({ ok: true });
  } catch {
    res.status(503).json({ ok: false });
  }
});

// --------- API ---------
app.use('/api/auth', authRoutes);
app.use('/api/quiz', quizRoutes);
app.use('/api/pagamentos', paymentRoutes);
app.use('/api/webhooks', webhookRoutes);
app.use('/api/admin', adminRoutes);

app.get('/api/config', (req, res) => {
  res.json({
    precoCentavos: PRECO_CENTAVOS,
    amostraGratis: AMOSTRA_GRATIS,
    usuario: req.user
      ? {
          id: req.user.id,
          email: req.user.email,
          name: req.user.name,
          isAdmin: req.user.is_admin,
          accessEnabled: req.user.access_enabled,
        }
      : null,
  });
});

// --------- paginas ---------
const pagina = (arquivo) => (_req, res) => res.sendFile(join(PUBLICO, arquivo));

function exigeLoginPagina(req, res, next) {
  if (!req.user) return res.redirect('/?destino=' + encodeURIComponent(req.originalUrl));
  next();
}

app.get('/', (req, res) => {
  if (req.user) return res.redirect(req.user.access_enabled ? '/app' : '/pagamento');
  res.sendFile(join(PUBLICO, 'entrada.html'));
});
app.get('/app', exigeLoginPagina, pagina('app.html'));
app.get('/pagamento', exigeLoginPagina, pagina('pagamento.html'));
app.get('/admin', exigeLoginPagina, (req, res, next) => {
  if (!req.user.is_admin) return res.status(403).send('Acesso restrito.');
  next();
}, pagina('admin.html'));

// Serve apenas a pasta de assets. As paginas .html saem exclusivamente pelas
// rotas acima, que checam sessao — servir src/public inteiro deixaria
// /app.html acessivel sem login. A raiz do repositorio, que ainda guarda o
// banco de questoes em index.html, nunca e exposta.
app.use('/assets', express.static(join(PUBLICO, 'assets'), {
  index: false,
  maxAge: IS_PROD ? '1h' : 0,
}));

app.use((_req, res) => res.status(404).json({ erro: 'Rota nao encontrada.' }));

app.use((err, _req, res, _next) => {
  console.error('[erro]', err);
  res.status(500).json({ erro: 'Erro interno.' });
});

const servidor = app.listen(PORT, () => {
  console.log(`[quiz-do-braga] ouvindo na porta ${PORT} (${IS_PROD ? 'producao' : 'dev'})`);
});

for (const sinal of ['SIGTERM', 'SIGINT']) {
  process.on(sinal, () => {
    servidor.close(() => pool.end().then(() => process.exit(0)));
  });
}
