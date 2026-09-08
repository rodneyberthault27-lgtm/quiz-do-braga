import { Router } from 'express';
import { query } from '../db/pool.js';
import { exigeAdmin } from '../middleware/auth.js';

export const router = Router();

router.use(exigeAdmin);

/** Numeros do topo do painel. */
router.get('/resumo', async (_req, res, next) => {
  try {
    const { rows } = await query(`
      SELECT
        count(*)::int                                        AS cadastrados,
        count(*) FILTER (WHERE access_enabled)::int          AS liberados,
        count(*) FILTER (WHERE NOT access_enabled)::int      AS aguardando,
        count(*) FILTER (WHERE payment_status = 'paid')::int AS pagos
      FROM users
    `);
    res.json(rows[0]);
  } catch (e) {
    next(e);
  }
});

/** Lista de usuarios com busca por nome ou e-mail. */
router.get('/usuarios', async (req, res, next) => {
  try {
    const busca = String(req.query.busca || '').trim();
    const limite = Math.min(Number(req.query.limite) || 50, 200);

    const { rows } = await query(
      `SELECT u.id, u.email, u.name, u.is_admin, u.payment_status,
              u.access_enabled, u.access_granted_at, u.created_at,
              p.status AS ultimo_status, p.method AS ultimo_metodo
         FROM users u
         LEFT JOIN LATERAL (
              SELECT status, method FROM payments
               WHERE user_id = u.id ORDER BY updated_at DESC LIMIT 1
         ) p ON true
        WHERE $1 = '' OR u.email ILIKE '%' || $1 || '%' OR u.name ILIKE '%' || $1 || '%'
        ORDER BY u.created_at DESC
        LIMIT $2`,
      [busca, limite]
    );
    res.json({ usuarios: rows });
  } catch (e) {
    next(e);
  }
});

/** Libera ou bloqueia acesso na mao (Pix fora do sistema, cortesia, estorno). */
router.patch('/usuarios/:id/acesso', async (req, res, next) => {
  try {
    const liberar = req.body?.liberar === true;
    if (req.params.id === req.user.id && !liberar) {
      return res.status(400).json({ erro: 'Voce nao pode bloquear o proprio acesso.' });
    }

    const { rows } = await query(
      `UPDATE users
          SET access_enabled = $2,
              access_granted_at = CASE WHEN $2 THEN COALESCE(access_granted_at, now()) ELSE access_granted_at END,
              payment_status = CASE WHEN $2 THEN 'paid' ELSE payment_status END
        WHERE id = $1
        RETURNING id, email, access_enabled, payment_status, access_granted_at`,
      [req.params.id, liberar]
    );
    if (!rows[0]) return res.status(404).json({ erro: 'Usuario nao encontrado.' });
    res.json({ usuario: rows[0] });
  } catch (e) {
    next(e);
  }
});

/** Ultimos webhooks, para depurar pagamento que nao liberou. */
router.get('/webhooks', async (_req, res, next) => {
  try {
    const { rows } = await query(
      `SELECT id, topic, external_id, signature_ok, processed, error, received_at
         FROM webhook_events ORDER BY received_at DESC LIMIT 50`
    );
    res.json({ eventos: rows });
  } catch (e) {
    next(e);
  }
});
