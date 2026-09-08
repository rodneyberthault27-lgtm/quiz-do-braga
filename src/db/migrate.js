/**
 * Executa as migrations em ordem alfabetica, uma vez cada, dentro de uma
 * transacao. O historico fica em schema_migrations, entao o banco pode ser
 * recriado do zero em qualquer ambiente rodando `npm run migrate`.
 */
import { readdir, readFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
import { pool } from './pool.js';

const AQUI = dirname(fileURLToPath(import.meta.url));
const PASTA = join(AQUI, 'migrations');

async function main() {
  const cliente = await pool.connect();
  try {
    await cliente.query(`
      CREATE TABLE IF NOT EXISTS schema_migrations (
        nome       text PRIMARY KEY,
        aplicada_em timestamptz NOT NULL DEFAULT now()
      )
    `);

    const { rows } = await cliente.query('SELECT nome FROM schema_migrations');
    const jaAplicadas = new Set(rows.map((r) => r.nome));

    const arquivos = (await readdir(PASTA)).filter((f) => f.endsWith('.sql')).sort();
    let aplicadas = 0;

    for (const arquivo of arquivos) {
      if (jaAplicadas.has(arquivo)) {
        console.log(`  - ${arquivo} (ja aplicada)`);
        continue;
      }
      const sql = await readFile(join(PASTA, arquivo), 'utf8');
      try {
        await cliente.query('BEGIN');
        await cliente.query(sql);
        await cliente.query('INSERT INTO schema_migrations (nome) VALUES ($1)', [arquivo]);
        await cliente.query('COMMIT');
        console.log(`  + ${arquivo} aplicada`);
        aplicadas++;
      } catch (e) {
        await cliente.query('ROLLBACK');
        console.error(`\n[migrate] falhou em ${arquivo}: ${e.message}\n`);
        throw e;
      }
    }

    console.log(`\n[migrate] ${aplicadas} migration(s) nova(s), ${arquivos.length} no total.`);
  } finally {
    cliente.release();
    await pool.end();
  }
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
