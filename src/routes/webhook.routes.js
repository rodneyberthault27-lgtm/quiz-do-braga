import { Router } from 'express';
import { query, transacao } from '../db/pool.js';
import { assinaturaValida, buscarPagamento } from '../services/mercadopago.js';

export const router = Router();

/**
 * Webhook do Mercado Pago.
 *
 * Regras que sustentam este endpoint:
 *  - a assinatura e conferida antes de qualquer coisa;
 *  - o corpo da notificacao nunca e tratado como verdade: o status vem de uma
 *    consulta a API do Mercado Pago;
 *  - e idempotente, porque o Mercado Pago reenvia a mesma notificacao;
 *  - responde 200 mesmo em caso ja processado, para nao gerar reenvio eterno.
 */
router.post('/mercadopago', async (req, res) => {
  const corpo = req.body || {};
  const topico = corpo.type || corpo.topic || req.query.type || req.query.topic || null;
  const dataId = corpo?.data?.id || req.query['data.id'] || req.query.id || null;

  const ok = assinaturaValida({
    xSignature: req.get('x-signature'),
    xRequestId: req.get('x-request-id'),
    dataId,
  });

  const { rows: evento } = await query(
    `INSERT INTO webhook_events (topic, external_id, signature_ok, payload)
     VALUES ($1, $2, $3, $4::jsonb) RETURNING id`,
    [topico, dataId ? String(dataId) : null, ok, JSON.stringify(corpo)]
  );
  const eventoId = evento[0].id;

  if (!ok) {
    await marcarErro(eventoId, 'assinatura invalida');
    return res.status(401).json({ erro: 'assinatura invalida' });
  }

  // So pagamento interessa; merchant_order e afins sao reconhecidos e ignorados.
  if (topico !== 'payment' || !dataId) {
    await query('UPDATE webhook_events SET processed = true WHERE id = $1', [eventoId]);
    return res.json({ ok: true, ignorado: true });
  }

  try {
    const pag = await buscarPagamento(dataId);
    const userId = pag.external_reference;
    const status = pag.status;
    const metodo = pag.payment_method_id || null;
    const centavos = Math.round(Number(pag.transaction_amount || 0) * 100);

    if (!userId) {
      await marcarErro(eventoId, 'pagamento sem external_reference');
      return res.json({ ok: true, ignorado: true });
    }

    await transacao(async (c) => {
      // Grava ou atualiza o pagamento. O indice unico em mp_payment_id
      // garante que reenvios nao dupliquem a linha.
      await c.query(
        `INSERT INTO payments (user_id, mp_payment_id, status, amount_cents, method, raw, updated_at)
         VALUES ($1, $2, $3, $4, $5, $6::jsonb, now())
         ON CONFLICT (mp_payment_id) DO UPDATE
            SET status = EXCLUDED.status,
                method = EXCLUDED.method,
                raw = EXCLUDED.raw,
                updated_at = now()`,
        [userId, String(pag.id), status, centavos, metodo, JSON.stringify(pag)]
      );

      if (status === 'approved') {
        // COALESCE preserva a data da primeira liberacao em reenvios.
        await c.query(
          `UPDATE users
              SET payment_status = 'paid',
                  access_enabled = true,
                  access_granted_at = COALESCE(access_granted_at, now())
            WHERE id = $1`,
          [userId]
        );
      } else if (status === 'refunded' || status === 'charged_back') {
        await c.query(
          `UPDATE users
              SET payment_status = 'refunded',
                  access_enabled = false
            WHERE id = $1`,
          [userId]
        );
      }
    });

    await query('UPDATE webhook_events SET processed = true WHERE id = $1', [eventoId]);
    return res.json({ ok: true, status });
  } catch (e) {
    console.error('[webhook] falhou:', e.message);
    await marcarErro(eventoId, e.message.slice(0, 500));
    // 500 faz o Mercado Pago reenviar, que e o que queremos em falha temporaria.
    return res.status(500).json({ erro: 'falha ao processar' });
  }
});

async function marcarErro(id, msg) {
  await query('UPDATE webhook_events SET error = $2 WHERE id = $1', [id, msg]);
}
