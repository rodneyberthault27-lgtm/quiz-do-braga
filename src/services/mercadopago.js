import crypto from 'node:crypto';
import { MP_ACCESS_TOKEN, MP_WEBHOOK_SECRET, APP_URL } from '../config.js';

const API = 'https://api.mercadopago.com';

async function chamar(caminho, opcoes = {}) {
  const r = await fetch(`${API}${caminho}`, {
    ...opcoes,
    headers: {
      Authorization: `Bearer ${MP_ACCESS_TOKEN}`,
      'Content-Type': 'application/json',
      ...(opcoes.headers || {}),
    },
  });
  const corpo = await r.json().catch(() => ({}));
  if (!r.ok) {
    const e = new Error(`Mercado Pago respondeu ${r.status}: ${JSON.stringify(corpo).slice(0, 300)}`);
    e.status = r.status;
    throw e;
  }
  return corpo;
}

/**
 * Cria a preferencia do Checkout Pro (aceita Pix e cartao).
 * O user_id vai em external_reference, que e como o webhook reencontra a pessoa.
 */
export async function criarPreferencia({ userId, email, precoCentavos, titulo, idempotencia }) {
  return chamar('/checkout/preferences', {
    method: 'POST',
    headers: idempotencia ? { 'X-Idempotency-Key': idempotencia } : {},
    body: JSON.stringify({
      items: [
        {
          id: 'acesso-completo',
          title: titulo,
          quantity: 1,
          currency_id: 'BRL',
          unit_price: precoCentavos / 100,
        },
      ],
      payer: { email },
      external_reference: userId,
      notification_url: `${APP_URL}/api/webhooks/mercadopago`,
      back_urls: {
        success: `${APP_URL}/pagamento?status=sucesso`,
        pending: `${APP_URL}/pagamento?status=pendente`,
        failure: `${APP_URL}/pagamento?status=falha`,
      },
      auto_return: 'approved',
      statement_descriptor: 'QUIZDOBRAGA',
    }),
  });
}

/** Consulta o pagamento na fonte. O corpo do webhook nunca e tratado como verdade. */
export function buscarPagamento(idPagamento) {
  return chamar(`/v1/payments/${encodeURIComponent(idPagamento)}`);
}

/**
 * Confere a assinatura do webhook.
 * O Mercado Pago manda `x-signature: ts=...,v1=...` e `x-request-id`.
 * O manifesto assinado e `id:<data.id>;request-id:<x-request-id>;ts:<ts>;`.
 */
export function assinaturaValida({ xSignature, xRequestId, dataId }) {
  if (!xSignature || !dataId) return false;

  const partes = Object.fromEntries(
    String(xSignature)
      .split(',')
      .map((p) => p.split('=').map((s) => s.trim()))
      .filter((p) => p.length === 2)
  );
  const ts = partes.ts;
  const v1 = partes.v1;
  if (!ts || !v1) return false;

  const manifesto = `id:${String(dataId).toLowerCase()};request-id:${xRequestId || ''};ts:${ts};`;
  const esperado = crypto.createHmac('sha256', MP_WEBHOOK_SECRET).update(manifesto).digest('hex');

  const a = Buffer.from(esperado, 'utf8');
  const b = Buffer.from(v1, 'utf8');
  if (a.length !== b.length) return false;
  return crypto.timingSafeEqual(a, b);
}
