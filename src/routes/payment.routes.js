import { Router } from 'express';
import { query } from '../db/pool.js';
import { PRECO_CENTAVOS, PRODUTO_NOME } from '../config.js';
import { exigeLogin } from '../middleware/auth.js';
import { criarPreferencia } from '../services/mercadopago.js';

export const router = Router();

/** Abre o checkout do Mercado Pago e devolve a URL para onde redirecionar. */
router.post('/checkout', exigeLogin, async (req, res, next) => {
  try {
    if (req.user.access_enabled) {
      return res.status(409).json({ erro: 'Seu acesso ja esta liberado.' });
    }

    const pref = await criarPreferencia({
      userId: req.user.id,
      email: req.user.email,
      precoCentavos: PRECO_CENTAVOS,
      titulo: PRODUTO_NOME,
      idempotencia: `pref-${req.user.id}-${Date.now()}`,
    });

    await query(
      `INSERT INTO payments (user_id, mp_preference_id, status, amount_cents)
       VALUES ($1, $2, 'pending', $3)`,
      [req.user.id, pref.id, PRECO_CENTAVOS]
    );

    res.json({
      preferenciaId: pref.id,
      url: pref.init_point || pref.sandbox_init_point,
      precoCentavos: PRECO_CENTAVOS,
    });
  } catch (e) {
    next(e);
  }
});

/**
 * Estado do pagamento do usuario. A tela de pagamento consulta isso em
 * intervalos, porque quem libera o acesso e o webhook, nao o retorno do navegador.
 */
router.get('/status', exigeLogin, async (req, res, next) => {
  try {
    const { rows } = await query(
      `SELECT status, method, amount_cents, updated_at
         FROM payments WHERE user_id = $1
        ORDER BY updated_at DESC LIMIT 1`,
      [req.user.id]
    );
    res.json({
      acessoLiberado: req.user.access_enabled,
      paymentStatus: req.user.payment_status,
      liberadoEm: req.user.access_granted_at,
      ultimoPagamento: rows[0] || null,
      precoCentavos: PRECO_CENTAVOS,
    });
  } catch (e) {
    next(e);
  }
});
