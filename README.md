# Quiz do Braga

Simulador de prova de arbitragem sobre as regras de competição da IBJJF, com
controle de acesso e pagamento único via Mercado Pago.

São **295 perguntas** de múltipla escolha mais **58 casos de interpretação**
(modo Banca), cada uma com a referência exata do artigo que fundamenta a
resposta.

---

## Como o acesso funciona

| Situação | O que a pessoa pode jogar |
|---|---|
| Sem cadastro | Nada. A tela inicial é login/cadastro. |
| Cadastrada, sem pagar | Amostra grátis de 10 perguntas. |
| Cadastrada e paga | Rodadas de 50, 100, 150 e o modo Banca. |

O pagamento é **único**, não recorrente. Quem libera o acesso é o webhook do
Mercado Pago, não o retorno do navegador: se a pessoa fechar a aba logo após
pagar o Pix, o acesso é liberado do mesmo jeito.

---

## Por que as perguntas ficam no banco

Na versão anterior o quiz era um arquivo único e todas as perguntas viajavam
dentro do HTML. Isso torna qualquer paywall decorativo: bastava abrir o
código-fonte da página para ler o banco inteiro.

Agora as questões vivem no PostgreSQL e saem apenas pela rota
`POST /api/quiz/partida`, que confere sessão e permissão antes de sortear o
lote. A página servida ao usuário (`src/public/app.html`) não contém nenhuma
pergunta.

> **O repositório precisa ser privado.** O arquivo `index.html` na raiz continua
> sendo a fonte do banco de questões (é dele que as migrations são geradas) e
> `src/db/migrations/003_seed_questions.sql` contém todas as perguntas com o
> gabarito. Em repositório público, o conteúdo vendido fica aberto para
> qualquer um, e nenhuma proteção no servidor resolve isso.

---

## Serviços no Railway

Dois serviços, dentro do **mesmo projeto**:

| Serviço | O que é | Observações |
|---|---|---|
| **App** | Este repositório | Deploy a partir do GitHub. O Nixpacks detecta Node pelo `package.json`. |
| **Postgres** | Banco de dados | `New` → `Database` → `PostgreSQL`. |

Depois de criar os dois, vincule o Postgres ao App (aba **Variables** do App →
**Add Reference** → o Postgres). Isso injeta a `DATABASE_URL` automaticamente;
não copie a string de conexão na mão.

O `railway.json` já define o start command como `npm run migrate && npm start`,
então as migrations rodam sozinhas a cada deploy, e o healthcheck aponta para
`/healthz`.

---

## Variáveis de ambiente

Cadastre no painel do Railway, no serviço do **App**, aba **Variables**:

| Variável | Obrigatória | O que é |
|---|---|---|
| `DATABASE_URL` | sim | Vem do vínculo com o Postgres. Não digite à mão. |
| `JWT_SECRET` | sim | Segredo que assina a sessão. Valor aleatório longo. |
| `APP_URL` | sim | URL pública do app, sem barra no fim. Base do `notification_url` do Mercado Pago. |
| `MERCADO_PAGO_ACCESS_TOKEN` | sim | Access token do painel do Mercado Pago. |
| `MERCADO_PAGO_WEBHOOK_SECRET` | sim | Assinatura secreta gerada ao cadastrar o webhook. |
| `PRECO_CENTAVOS` | não | Preço em centavos. Padrão `4990` (R$ 49,90). |
| `PRODUTO_NOME` | não | Nome que aparece no checkout. |
| `AMOSTRA_GRATIS` | não | Tamanho da amostra gratuita. Padrão `10`. |
| `ADMIN_EMAIL` | não | Esse e-mail vira administrador ao se cadastrar. |
| `NODE_ENV` | não | Use `production`. |
| `PORT` | não | O Railway injeta sozinho. |

Para gerar o `JWT_SECRET`:

```bash
node -e "console.log(require('crypto').randomBytes(48).toString('hex'))"
```

Nada disso aparece para quem abre o código no navegador — o frontend só recebe
o que a rota `/api/config` devolve, que não inclui credencial alguma.

---

## Configurar o Mercado Pago

1. No painel do Mercado Pago, em **Suas integrações**, crie uma aplicação.
2. Copie o **Access Token** para `MERCADO_PAGO_ACCESS_TOKEN`.
3. Em **Webhooks**, cadastre a URL:
   `https://SEU-APP.up.railway.app/api/webhooks/mercadopago`
4. Marque o evento **Pagamentos**.
5. Copie a **assinatura secreta** gerada para `MERCADO_PAGO_WEBHOOK_SECRET`.

Use as credenciais de **teste** enquanto valida o fluxo. O webhook confere a
assinatura de toda notificação e, mesmo assim, nunca acredita no corpo dela:
consulta o pagamento na API do Mercado Pago antes de liberar qualquer acesso.

---

## Fluxo do pagamento

```
Usuário cria conta            → linha em users, access_enabled = false
Usuário faz login             → cookie httpOnly com JWT
Usuário joga a amostra        → 10 perguntas, sem pagar
Usuário clica em liberar      → POST /api/pagamentos/checkout
Backend cria a preferência    → external_reference = user_id
Usuário paga (Pix ou cartão)  → checkout do Mercado Pago
Mercado Pago chama o webhook  → POST /api/webhooks/mercadopago
Webhook confere a assinatura  → HMAC-SHA256 do manifesto
Webhook consulta o pagamento  → GET /v1/payments/{id}
Status approved               → users.payment_status = 'paid'
                                users.access_enabled = true
                                users.access_granted_at = now()
Acesso permanente liberado
```

Estorno e chargeback revertem o acesso automaticamente.

---

## Rodar localmente

Requer **Node 20+** e um PostgreSQL.

```bash
npm install
cp .env.example .env    # preencha DATABASE_URL, JWT_SECRET, APP_URL e as do Mercado Pago
npm run migrate
npm run dev
```

O app sobe em `http://localhost:3000`.

Para virar administrador, coloque seu e-mail em `ADMIN_EMAIL` **antes** de se
cadastrar. Quem já tem conta pode ser promovido direto no banco:

```sql
UPDATE users SET is_admin = true WHERE email = 'voce@exemplo.com';
```

---

## Painel administrativo

Em `/admin`, restrito a `is_admin`:

- Contagem de cadastrados, liberados, aguardando e pagamentos.
- Busca por nome ou e-mail.
- Liberar ou bloquear acesso na mão (Pix por fora, cortesia, estorno).
- Últimos 50 webhooks recebidos, com estado da assinatura e erro — é por aqui
  que se descobre por que um pagamento não liberou.

---

## Alterar o banco de questões

O `index.html` na raiz é a fonte. Depois de editar as perguntas nele:

```bash
python scripts/gera_seed.py index.html src/db/migrations/003_seed_questions.sql
python scripts/gera_app.py index.html src/public/app.html
```

O primeiro regenera o seed do banco; o segundo regenera a página do quiz sem as
perguntas. A migration de seed começa com `DELETE FROM questions`, então
recriar é idempotente — mas ela só roda uma vez, porque o `schema_migrations`
guarda o que já foi aplicado. Para reaplicar depois de mudar as questões, crie
uma migration nova (`004_...`) ou apague a linha correspondente da tabela.

---

## Estrutura

```
src/
├── server.js              Express, rotas de página, arquivos estáticos
├── config.js              Variáveis de ambiente, falha rápido se faltar alguma
├── db/
│   ├── pool.js            Pool do Postgres e helper de transação
│   ├── migrate.js         Roda as migrations em ordem, uma vez cada
│   └── migrations/        001 schema · 002 questões · 003 seed
├── middleware/auth.js     Sessão JWT em cookie, exigeLogin/Acesso/Admin
├── routes/                auth · quiz · pagamentos · webhooks · admin
├── services/mercadopago.js  Preferência, consulta e validação de assinatura
└── public/                entrada · app · pagamento · admin
```

---

Base: Livro de Regras IBJJF, versão 5.2 · Janeiro 2021, Regulamento Geral de
Competições e Manual de Formatação de Competições.
