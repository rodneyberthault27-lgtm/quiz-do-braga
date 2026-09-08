-- Banco de questoes. Sai do frontend e passa a ser servido pela API,
-- para que so quem tem acesso liberado receba o conteudo.

CREATE TABLE IF NOT EXISTS questions (
  id             serial PRIMARY KEY,
  bank           text NOT NULL,
  block          text NOT NULL,
  prompt         text NOT NULL,
  options        jsonb NOT NULL,
  correct_index  smallint NOT NULL,
  reference      text NOT NULL,
  CONSTRAINT questions_bank_valido CHECK (bank IN ('padrao', 'banca')),
  CONSTRAINT questions_indice_valido CHECK (correct_index BETWEEN 0 AND 3),
  CONSTRAINT questions_quatro_alternativas CHECK (jsonb_array_length(options) = 4)
);

CREATE INDEX IF NOT EXISTS questions_bank_idx ON questions (bank);
CREATE UNIQUE INDEX IF NOT EXISTS questions_prompt_unico ON questions (md5(prompt));
