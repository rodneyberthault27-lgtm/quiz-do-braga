import pg from 'pg';
import { DATABASE_URL, IS_PROD } from '../config.js';

// O Postgres do Railway exige TLS, mas usa certificado interno; em producao
// habilitamos SSL sem exigir a cadeia completa.
export const pool = new pg.Pool({
  connectionString: DATABASE_URL,
  ssl: IS_PROD ? { rejectUnauthorized: false } : false,
  max: 10,
  idleTimeoutMillis: 30_000,
  connectionTimeoutMillis: 10_000,
});

pool.on('error', (err) => {
  console.error('[db] erro em conexao ociosa:', err.message);
});

export function query(texto, valores) {
  return pool.query(texto, valores);
}

/** Roda uma funcao dentro de uma transacao, com rollback em qualquer erro. */
export async function transacao(fn) {
  const cliente = await pool.connect();
  try {
    await cliente.query('BEGIN');
    const r = await fn(cliente);
    await cliente.query('COMMIT');
    return r;
  } catch (e) {
    await cliente.query('ROLLBACK');
    throw e;
  } finally {
    cliente.release();
  }
}
