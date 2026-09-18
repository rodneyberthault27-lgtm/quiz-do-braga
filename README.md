# Quiz do Braga · site

Site público do Quiz do Braga, publicado no GitHub Pages. **Não contém perguntas**:
elas ficam no Supabase, protegidas por regras de acesso no banco.

| Quem | O que recebe |
|---|---|
| Visitante | Amostra grátis (10 perguntas fixas, sempre as mesmas e na mesma ordem) |
| Cadastrado aguardando | A mesma amostra + instruções de Pix e WhatsApp |
| Liberado pelo controlador | Banco completo, Banca, Super Hard e Desafio do dia |

## Arquivos

- `index.html` · o quiz. Gerado a partir do repositório privado de conteúdo; não edite as perguntas aqui.
- `admin.html` · painel do controlador (login com e-mail e senha cadastrados no Supabase).
- `config.js` · URL do projeto e chave **publishable/anon** do Supabase. Nunca a chave secreta.

## Liberação de acesso

1. A pessoa se cadastra no site e paga via Pix.
2. Envia o comprovante pelo WhatsApp do controlador.
3. O controlador confere o valor **no extrato do banco** e clica em *Liberar acesso* em `admin.html`.

O limite de vagas, o preço, a chave Pix e o WhatsApp são alterados no próprio painel.
