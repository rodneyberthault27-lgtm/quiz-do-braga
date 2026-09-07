# Quiz do Braga

Quiz gamificado sobre as regras de competição da IBJJF. Aplicação de arquivo único, sem dependências, sem build e sem servidor: abre no navegador e funciona offline.

**[Abrir o quiz](https://SEU-USUARIO.github.io/quiz-do-braga/)**

---

## O que é

Um simulador de prova de arbitragem construído sobre o Livro de Regras da IBJJF (versão 5.2, janeiro de 2021), o Regulamento Geral de Competições e o Manual de Formatação de Competições.

São **295 perguntas** de múltipla escolha, cada uma com quatro alternativas e a referência exata do artigo e item que fundamenta a resposta. A cada partida o app sorteia um recorte diferente do banco, então duas rodadas seguidas nunca são iguais.

## Modos de partida

| Rodada | Perguntas | Duração aproximada |
|---|---|---|
| Aquecimento | 50 | 12 minutos |
| Competição | 100 | 25 minutos |
| Absoluto | 150 | 40 minutos |

## Gamificação

- **Pontuação**: 100 pontos por acerto, mais bônus de velocidade de até 50 pontos.
- **Multiplicador de sequência**: ×1,5 a partir de 3 acertos seguidos, ×2 aos 6, ×3 aos 10.
- **Cronômetro**: 30 segundos por pergunta, com alerta visual nos últimos 7 segundos. Pode ser desligado.
- **Graduação por faixa**: a faixa no topo da tela muda de cor em tempo real conforme o aproveitamento, de Branca a Coral.
- **Modo desclassificação**: opcional. Quatro erros encerram a partida, replicando a lógica das quatro punições do Artigo 7º.
- **Relatório final**: aproveitamento por bloco de regra, conquistas, revisão apenas dos erros com o artigo de cada um, e recorde salvo por rodada.

## Cobertura do banco

| Bloco de regra | Perguntas |
|---|---|
| Faltas | 50 |
| Arbitragem | 43 |
| Posições de pontuação | 34 |
| Uniforme e higiene | 30 |
| Chaves e premiação | 23 |
| Academias e inscrição | 20 |
| Vantagens | 19 |
| Formatação do evento | 18 |
| Categorias e tempo | 17 |
| Decisão das lutas | 16 |
| Pontuação | 15 |
| Punições | 10 |

## Estrutura

```
index.html            aplicação completa: HTML, CSS, JavaScript e banco de perguntas
data/perguntas.json   banco exportado, para quem quiser reaproveitar em outro projeto
```

O `index.html` é autossuficiente. A única requisição externa é a das fontes do Google Fonts, e o app funciona normalmente sem elas, caindo para as fontes do sistema.

## Como rodar localmente

Baixe o `index.html` e abra no navegador. Não há passo de instalação.

Para servir por HTTP durante o desenvolvimento:

```bash
python3 -m http.server 8000
```

## Como adicionar ou editar perguntas

Todas as perguntas vivem no array `BANK`, no topo do bloco `<script>` do `index.html`. O formato de cada item:

```js
{
  b: "PONTUAÇÃO",                                    // bloco de regra
  q: "Quantos pontos vale a passagem de guarda?",    // enunciado
  o: ["2 pontos","3 pontos","4 pontos","1 ponto"],   // quatro alternativas
  c: 1,                                              // índice da correta, de 0 a 3
  r: "Livro de Regras, Art. 4º, 4.2"                 // referência obrigatória
}
```

Três regras ao contribuir:

1. Toda pergunta precisa de referência rastreável ao artigo e item de origem.
2. As quatro alternativas devem ser distintas entre si e plausíveis. Alternativa obviamente absurda não ensina nada.
3. Distribua o índice da correta entre 0, 1, 2 e 3. O banco atual está balanceado em 74 / 74 / 74 / 73.

## Publicar no GitHub Pages

O repositório já traz o workflow `.github/workflows/pages.yml`. Depois do primeiro push, vá em `Settings` › `Pages` e defina **Source** como `GitHub Actions`. O deploy roda sozinho a cada push na branch `main` e o link fica ativo em cerca de um minuto.

Feito isso, atualize o link no topo deste README trocando `SEU-USUARIO` pelo seu usuário do GitHub.

## Aviso

Projeto de estudo, **não oficial** e sem vínculo com a International Brazilian Jiu-Jitsu Federation. O conteúdo das regras pertence à IBJJF. Em caso de divergência entre este quiz e o documento oficial, vale sempre o documento oficial, disponível em [ibjjf.com](https://ibjjf.com).

O banco foi construído sobre a versão 5.2 do Livro de Regras, de janeiro de 2021. Confira se há edição mais recente antes de usar como preparação para arbitragem.

## Licença

Código sob licença MIT, conforme o arquivo [LICENSE](LICENSE). O texto das regras da IBJJF permanece de titularidade da federação e é citado aqui em caráter educacional.
