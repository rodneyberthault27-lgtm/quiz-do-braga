-- Usuarios, pagamentos e auditoria de webhook.

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE IF NOT EXISTS users (
  id                 uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  email              text NOT NULL,
  password_hash      text NOT NULL,
  name               text,
  is_admin           boolean NOT NULL DEFAULT false,
  payment_status     text NOT NULL DEFAULT 'pending',
  access_enabled     boolean NOT NULL DEFAULT false,
  access_granted_at  timestamptz,
  created_at         timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT users_payment_status_valido
    CHECK (payment_status IN ('pending', 'paid', 'refunded'))
);

-- e-mail e sempre gravado em minusculas; o indice unico garante a regra
CREATE UNIQUE INDEX IF NOT EXISTS users_email_unico ON users (lower(email));

CREATE TABLE IF NOT EXISTS payments (
  id                 uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id            uuid NOT NULL REFERENCES users (id) ON DELETE CASCADE,
  mp_payment_id      text,
  mp_preference_id   text,
  status             text NOT NULL DEFAULT 'pending',
  amount_cents       integer NOT NULL,
  method             text,
  created_at         timestamptz NOT NULL DEFAULT now(),
  updated_at         timestamptz NOT NULL DEFAULT now(),
  raw                jsonb
);

-- Um pagamento do Mercado Pago nunca pode ser gravado duas vezes.
-- O indice e total, nao parcial: o Postgres nao considera NULLs iguais entre si,
-- entao as linhas criadas no checkout (ainda sem mp_payment_id) convivem em paz,
-- e o ON CONFLICT (mp_payment_id) do webhook consegue inferir este indice.
CREATE UNIQUE INDEX IF NOT EXISTS payments_mp_payment_id_unico
  ON payments (mp_payment_id);
CREATE INDEX IF NOT EXISTS payments_user_id_idx ON payments (user_id);

-- guarda todo webhook recebido, valido ou nao, para auditoria e idempotencia
CREATE TABLE IF NOT EXISTS webhook_events (
  id            bigserial PRIMARY KEY,
  provider      text NOT NULL DEFAULT 'mercadopago',
  topic         text,
  external_id   text,
  signature_ok  boolean NOT NULL DEFAULT false,
  processed     boolean NOT NULL DEFAULT false,
  error         text,
  payload       jsonb,
  received_at   timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS webhook_events_external_id_idx
  ON webhook_events (provider, external_id);
