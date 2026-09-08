import 'dotenv/config';

function obrigatoria(nome) {
  const v = process.env[nome];
  if (!v || !v.trim()) {
    console.error(
      `\n[config] Variavel de ambiente obrigatoria ausente: ${nome}\n` +
      `Cadastre-a no painel do Railway (aba Variables do servico) ou no .env local.\n`
    );
    process.exit(1);
  }
  return v.trim();
}

function opcional(nome, padrao) {
  const v = process.env[nome];
  return v && v.trim() ? v.trim() : padrao;
}

// O Railway injeta DATABASE_URL automaticamente ao vincular o Postgres ao servico.
export const DATABASE_URL = obrigatoria('DATABASE_URL');
export const JWT_SECRET = obrigatoria('JWT_SECRET');
export const APP_URL = obrigatoria('APP_URL').replace(/\/+$/, '');

export const MP_ACCESS_TOKEN = obrigatoria('MERCADO_PAGO_ACCESS_TOKEN');
// Segredo da assinatura do webhook, gerado no painel do Mercado Pago.
export const MP_WEBHOOK_SECRET = obrigatoria('MERCADO_PAGO_WEBHOOK_SECRET');

export const PORT = Number(opcional('PORT', '3000'));
export const NODE_ENV = opcional('NODE_ENV', 'production');
export const IS_PROD = NODE_ENV === 'production';

// Preco em centavos, para nao carregar float em dinheiro.
export const PRECO_CENTAVOS = Number(opcional('PRECO_CENTAVOS', '4990'));
export const PRODUTO_NOME = opcional('PRODUTO_NOME', 'Quiz do Braga - acesso completo');

// Tamanho da amostra gratuita liberada logo apos o cadastro.
export const AMOSTRA_GRATIS = Number(opcional('AMOSTRA_GRATIS', '10'));

// E-mail que recebe permissao de administrador no primeiro cadastro.
export const ADMIN_EMAIL = opcional('ADMIN_EMAIL', '');

export const COOKIE_NOME = 'braga_sessao';
export const SESSAO_DIAS = 30;

// Modos de partida. 'amostra' e o unico liberado sem pagamento.
export const MODOS = {
  amostra: { bank: 'padrao', tamanho: AMOSTRA_GRATIS, gratis: true, rotulo: 'Amostra' },
  50: { bank: 'padrao', tamanho: 50, gratis: false, rotulo: 'Aquecimento' },
  100: { bank: 'padrao', tamanho: 100, gratis: false, rotulo: 'Competicao' },
  150: { bank: 'padrao', tamanho: 150, gratis: false, rotulo: 'Absoluto' },
  banca: { bank: 'banca', tamanho: 30, gratis: false, rotulo: 'Banca' },
};
