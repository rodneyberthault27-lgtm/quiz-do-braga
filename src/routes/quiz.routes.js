import { Router } from 'express';
import { query } from '../db/pool.js';
import { MODOS } from '../config.js';
import { exigeLogin } from '../middleware/auth.js';

export const router = Router();

/** Modos disponiveis e se este usuario pode jogar cada um. */
router.get('/modos', exigeLogin, (req, res) => {
  const pago = req.user.access_enabled;
  res.json({
    acessoLiberado: pago,
    modos: Object.entries(MODOS).map(([chave, m]) => ({
      chave,
      rotulo: m.rotulo,
      tamanho: m.tamanho,
      liberado: m.gratis || pago,
    })),
  });
});

/**
 * Sorteia o lote da partida.
 * As questoes so saem do servidor aqui, e apenas para quem pode jogar o modo.
 */
router.post('/partida', exigeLogin, async (req, res, next) => {
  try {
    const chave = String(req.body?.modo || 'amostra');
    const modo = MODOS[chave];
    if (!modo) return res.status(400).json({ erro: 'Modo de partida desconhecido.' });

    if (!modo.gratis && !req.user.access_enabled) {
      return res.status(402).json({
        erro: 'Esta rodada faz parte do acesso completo.',
        precisaPagar: true,
      });
    }

    const { rows } = await query(
      `SELECT id, block, prompt, options, correct_index, reference
         FROM questions
        WHERE bank = $1
        ORDER BY random()
        LIMIT $2`,
      [modo.bank, modo.tamanho]
    );

    if (!rows.length) {
      return res.status(503).json({ erro: 'Banco de questoes vazio. Rode as migrations.' });
    }

    res.json({
      modo: chave,
      rotulo: modo.rotulo,
      questoes: rows.map((q) => ({
        id: q.id,
        b: q.block,
        q: q.prompt,
        o: q.options,
        c: q.correct_index,
        r: q.reference,
      })),
    });
  } catch (e) {
    next(e);
  }
});

/** Total de questoes por banco, para a tela inicial. */
router.get('/tamanho-banco', exigeLogin, async (_req, res, next) => {
  try {
    const { rows } = await query(
      `SELECT bank, count(*)::int AS total FROM questions GROUP BY bank`
    );
    const por = Object.fromEntries(rows.map((r) => [r.bank, r.total]));
    res.json({ padrao: por.padrao || 0, banca: por.banca || 0 });
  } catch (e) {
    next(e);
  }
});
