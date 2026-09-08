-- Gerado a partir do index.html do quiz. Nao editar a mao:
-- rode scripts/gera_seed.py novamente se o banco de questoes mudar.

DELETE FROM questions;

-- banco padrao: 295 questoes
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Qual é a folga mínima da manga do kimono em toda a sua extensão?', '["5 cm", "7 cm", "10 cm", "6 cm"]'::jsonb, 1, 'Livro de Regras, Art. 8º, 8.1.12');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Após a primeira luta, a troca de kimono deve ser solicitada a quem?', '["Ao árbitro", "À mesa central", "Ao Coordenador de Ringue", "Ao fiscal de uniformes"]'::jsonb, 2, 'Livro de Regras, Art. 8º, 8.1.14');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'Quem faz a escala dos árbitros e a rotação durante o evento?', '["O Supervisor dos Coordenadores de Ringue", "O Coordenador de Mesa Central", "O Diretor Geral de Arbitragem", "O Diretor Geral de Competição"]'::jsonb, 2, 'Manual de Formatação, Art. 2º, 2.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PUNIÇÕES', 'As faltas graves entre si são:', '["Cumulativas, e infrações diferentes incidem na sequência crescente de punições", "Zeradas a cada interrupção", "Independentes", "Contadas apenas por tipo"]'::jsonb, 0, 'Livro de Regras, Art. 7º, 7.2.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Sair da área de tatames ao final do combate antes da proclamação do resultado é:', '["Falta grave", "Punição administrativa", "Permitido", "Falta gravíssima"]'::jsonb, 0, 'Livro de Regras, Art. 6º, 6.2.2 (L)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PONTUAÇÃO', 'Quando a contagem é interrompida por finalização encaixada do adversário, o atleta recebe:', '["Uma vantagem para cada posição alcançada", "Apenas os pontos da última posição", "Metade dos pontos", "Nada"]'::jsonb, 0, 'Livro de Regras, Art. 3º, 3.3.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Segurar as bocas das mangas do paletó ou da calça do adversário com dedos virados para dentro é:', '["Permitido em qualquer situação", "Vantagem", "Falta gravíssima", "Falta grave"]'::jsonb, 3, 'Livro de Regras, Art. 6º, 6.2.2 (H)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'A técnica de suplex continua permitida desde que:', '["Seja aplicada apenas na faixa-preta", "O adversário caia sentado", "A movimentação não leve o adversário de cabeça ou pescoço ao solo", "Haja pegada na faixa"]'::jsonb, 2, 'Livro de Regras, Art. 6º, 6.2.3 (L), Obs');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CATEGORIAS E TEMPO', 'Qual é o tempo regulamentar de luta para adulto faixa-azul?', '["7 minutos", "8 minutos", "5 minutos", "6 minutos"]'::jsonb, 3, 'Regulamento Geral, Art. 1º, 1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Como o árbitro sinaliza uma vantagem?', '["Braço esticado paralelo ao ombro, mão aberta e palma virada para o solo", "Punho fechado à altura do ombro", "Dois dedos levantados", "Mão espalmada balançando na altura da cabeça"]'::jsonb, 0, 'Livro de Regras, Art. 1º, 1.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Prender propositalmente o pé na faixa do adversário é:', '["Falta gravíssima", "Permitido", "Falta grave", "Vantagem"]'::jsonb, 2, 'Livro de Regras, Art. 6º, 6.2.2 (P)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Qual gesto acompanha a ordem verbal "Parou!"?', '["Mão espalmada balançando", "Punhos cruzados acima da cabeça", "Braços abertos e elevados até a altura dos ombros", "Braço esticado à frente"]'::jsonb, 2, 'Livro de Regras, Art. 1º, 1.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Um atleta de kimono branco enfrenta um de kimono azul. Quem fica à direita do árbitro?', '["O primeiro chamado", "O de faixa mais graduada", "O de kimono branco", "O de kimono azul"]'::jsonb, 3, 'Livro de Regras, Art. 1º, 1.3.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'Quem marca os pontos no placar, cronometra a luta e anuncia o final ao árbitro por apito?', '["O auxiliar de mesa central", "O coordenador de ringue", "O árbitro lateral", "O mesário"]'::jsonb, 3, 'Manual de Formatação, Art. 2º, 2.8');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'O uso de cremes, óleos ou géis que deixem o corpo escorregadio é:', '["Permitido com autorização médica", "Falta gravíssima", "Falta de combatividade", "Falta grave"]'::jsonb, 1, 'Livro de Regras, Art. 6º, 6.2.3 (F)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CATEGORIAS E TEMPO', 'Nas categorias adulto e master existe:', '["Limite mínimo e máximo", "Nenhum limite", "Limite máximo de idade", "Apenas limite mínimo de idade"]'::jsonb, 3, 'Regulamento Geral, Art. 1º, 1.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Quantas inspeções de uniforme o atleta tem direito antes de ser impedido de competir?', '["2", "1", "3", "5"]'::jsonb, 2, 'Livro de Regras, Art. 8º, 8.1.11');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'A cruzada de perna é falta gravíssima quando o atleta:', '["Tem o pé solto", "Passa o pé do limite vertical do corpo do adversário", "Aplica em pé", "Enfrenta um faixa-branca"]'::jsonb, 1, 'Livro de Regras, Art. 6º, 6.2.3, Cruzada de Perna');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PUNIÇÕES', 'Punições por falta de combatividade e por falta grave no mesmo placar:', '["Só somam na faixa-preta", "Somam-se entre si", "São contadas separadamente", "Anulam-se"]'::jsonb, 1, 'Livro de Regras, Art. 7º, 7.2.3 e 7.3.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Estrangular sem o auxílio do kimono circundando o pescoço com as mãos, ou pressionar a glote com o polegar, é:', '["Falta disciplinar", "Permitido sem kimono", "Falta grave", "Falta gravíssima"]'::jsonb, 3, 'Livro de Regras, Art. 6º, 6.2.3 (I)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Com três árbitros escalados, uma marcação ou retirada de pontos precisa ser confirmada por:', '["Apenas o árbitro central", "Um dos árbitros laterais apenas", "Todos os três árbitros", "Pelo menos dois dos três árbitros"]'::jsonb, 3, 'Livro de Regras, Art. 1º, 1.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Qual é a espessura máxima da gola do kimono?', '["1,3 cm", "1,5 cm", "2,0 cm", "1,0 cm"]'::jsonb, 0, 'Livro de Regras, Art. 8º, 8.1.12');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'O atleta por baixo fica em pé mantendo as pegadas da raspagem e derruba o adversário. Ele pontua se:', '["Apenas derrubar", "Passar a guarda", "Encaixar uma finalização", "Estabilizar a posição por cima por 3 segundos"]'::jsonb, 3, 'Livro de Regras, Art. 4º, 4.6.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Quando dois atletas estão de kimono da mesma cor, qual recebe a faixa verde e amarela de identificação?', '["O atleta de faixa mais alta", "O mais pesado", "O primeiro atleta a ser chamado", "É sorteado"]'::jsonb, 2, 'Livro de Regras, Art. 1º, 1.3.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Tentar intencionalmente a desqualificação do oponente colocando-o em posição ilegal é:', '["Falta gravíssima", "Falta disciplinar", "Permitido", "Falta grave"]'::jsonb, 0, 'Livro de Regras, Art. 6º, 6.2.3 (D)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'No single leg com a cabeça para fora, em categorias até o juvenil e na faixa-branca, o árbitro deve:', '["Desclassificar o atacante", "Não interferir", "Punir o atacante", "Interromper a luta e recomeçar com os dois em pé, sem aplicar punição"]'::jsonb, 3, 'Livro de Regras, Art. 1º, 1.3.10');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Nas categorias de faixa-preta adulto, a organização pode exigir que o atleta tenha:', '["Dois kimonos de cores diferentes, um azul royal e um branco", "Kimono novo a cada luta", "Apenas kimono preto", "Três kimonos"]'::jsonb, 0, 'Livro de Regras, Art. 8º, 8.1.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Com um golpe de finalização encaixado na área de segurança, o árbitro:', '["Recoloca os atletas em pé", "Não interrompe o combate", "Interrompe imediatamente", "Interrompe e dá vantagem"]'::jsonb, 1, 'Livro de Regras, Art. 1º, 1.3.7');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'O resultado de uma luta proclamado pelo árbitro pode ser alterado em qual situação?', '["Sempre que o técnico contestar", "Se houver interpretação errada do placar", "Apenas por decisão da mesa central", "Nunca pode ser alterado"]'::jsonb, 1, 'Livro de Regras, Art. 1º, 1.1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Na chave de três atletas, o que acontece com o perdedor da primeira luta?', '["Enfrenta o terceiro atleta da chave", "Vai direto para a final", "É eliminado", "Recebe bronze automaticamente"]'::jsonb, 0, 'Regulamento Geral, Art. 2º, 2.3.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PONTUAÇÃO', 'Quando os dois atletas puxam para a guarda ao mesmo tempo, quem recebe a vantagem?', '["O atleta que for para cima primeiro", "Os dois recebem", "O atleta mais pesado", "Ninguém"]'::jsonb, 0, 'Livro de Regras, Art. 3º, 3.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CATEGORIAS E TEMPO', 'Nas categorias Master, a partir de qual idade um atleta se enquadra em Master 1?', '["25 anos", "35 anos", "30 anos", "40 anos"]'::jsonb, 2, 'Regulamento Geral, Art. 1º, 1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'DECISÃO DAS LUTAS', 'Quando um atleta dá duas batidas com a palma da mão no adversário, no chão ou em si próprio, isso caracteriza:', '["Vantagem", "Falta grave", "Interrupção", "Desistência"]'::jsonb, 3, 'Livro de Regras, Art. 2º, 2.1.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Qual é a largura regulamentar da faixa?', '["4 a 5 cm", "5 a 6 cm", "2 a 3 cm", "3 a 4 cm"]'::jsonb, 0, 'Livro de Regras, Art. 8º, 8.1.9');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'O que cada mesa de controle de pontuação deve conter?', '["Um placar e um apito", "Três placares", "Apenas um placar eletrônico", "Dois placares de pontuação e um cronômetro"]'::jsonb, 3, 'Manual de Formatação, Art. 1º, 1.2.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PUNIÇÕES', 'Quantos segundos consecutivos o árbitro conta antes de punir por falta de combatividade?', '["15 segundos", "10 segundos", "30 segundos", "20 segundos"]'::jsonb, 3, 'Livro de Regras, Art. 7º, 7.3.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PONTUAÇÃO', 'O atleta que chega a posições de pontuação estando sob ataque de finalização só recebe os pontos:', '["Nunca, nessa situação", "Quando se livrar do ataque e estabilizar a posição por 3 segundos", "Após o fim da luta", "Imediatamente, se a posição for clara"]'::jsonb, 1, 'Livro de Regras, Art. 3º, 3.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'DECISÃO DAS LUTAS', 'O atleta que grita ou emite som que expressa dor ao ser vítima de um golpe encaixado:', '["Recebe punição", "Caracteriza desistência", "Recebe uma vantagem contra", "Tem a luta interrompida sem resultado"]'::jsonb, 1, 'Livro de Regras, Art. 2º, 2.1.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Numa raspagem em que os dois ficam de pé por menos de 3 segundos e o atleta que se defende projeta o adversário, ele:', '["Recebe 2 pontos", "Recebe vantagem", "Não recebe pontos nem vantagem referentes à queda", "Recebe 4 pontos"]'::jsonb, 2, 'Livro de Regras, Art. 4º, 4.1.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'Nos campeonatos por equipes, havendo empate ao final dos combates:', '["O título é dividido", "As equipes podem escolher um atleta cada para uma luta extra", "Vence quem tiver mais finalizações", "Há sorteio"]'::jsonb, 1, 'Regulamento Geral, Art. 3º, 3.6.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'No placar manual, a metade verde e amarela fica:', '["À direita do árbitro quando ele está de frente para a mesa", "À esquerda do árbitro", "No centro", "Voltada para o público"]'::jsonb, 0, 'Manual de Formatação, Art. 1º, 1.2.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'O atleta faz movimento NÃO intencional que coloca o adversário em posição passível de penalização, sem finalização encaixada. O árbitro deve:', '["Interromper, recolocar em posição regular, reiniciar e punir o infrator", "Dar vantagem ao adversário", "Ignorar", "Desclassificar"]'::jsonb, 0, 'Livro de Regras, Art. 6º, 6.2.2 (V) e Art. 1º, 1.3.10');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'O comprimento mínimo das mangas do paletó deve alcançar até que distância da articulação dos pulsos?', '["3 cm", "5 cm", "10 cm", "7 cm"]'::jsonb, 1, 'Livro de Regras, Art. 8º, 8.1.7');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'O atleta com domínio de montada ou pegada pelas costas, mantendo as características técnicas da posição:', '["Não configura falta de combatividade", "Deve buscar finalização em 20 segundos", "É punido após 20 segundos", "Recebe vantagem"]'::jsonb, 0, 'Livro de Regras, Art. 6º, 6.2.1 (E)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Fugir deliberadamente da área de combate para evitar a desistência frente a uma finalização é:', '["Falta de combatividade", "Falta disciplinar", "Falta gravíssima", "Falta grave"]'::jsonb, 2, 'Livro de Regras, Art. 6º, 6.2.3 (B)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'Na área de luta de 100 m², quanto é área de segurança?', '["36 m²", "64 m²", "32 m²", "28 m²"]'::jsonb, 0, 'Manual de Formatação, Art. 1º, 1.1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'O atleta que projeta o adversário para se defender de uma pegada pelas costas com os dois ganchos postos:', '["Não recebe pontos nem vantagem de queda, mesmo estabilizando 3 segundos", "Recebe 2 pontos", "Recebe vantagem", "Recebe 4 pontos"]'::jsonb, 0, 'Livro de Regras, Art. 4º, 4.1.9');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Qual é o gesto de retirada de pontos?', '["Braços cruzados acima da cabeça", "Braço erguido e balançado com a mão espalmada na altura da cabeça", "Tocar a orelha duas vezes", "Punho fechado à altura do ombro"]'::jsonb, 1, 'Livro de Regras, Art. 1º, 1.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Pular para colocar o adversário em pé na guarda fechada é falta grave em quais casos?', '["Em todas as categorias", "Apenas no infantil", "Nas categorias até 15 anos, todas as faixas, e em todas as idades para a faixa-branca", "Apenas na faixa-preta"]'::jsonb, 2, 'Livro de Regras, Art. 6º, 6.2.2 (W)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Se os dois atletas de uma semifinal forem desclassificados por falta DISCIPLINAR:', '["Disputam nova semifinal", "Recebem medalha de bronze", "Não são proclamados terceiros colocados, ficando vagas essas colocações", "São proclamados terceiros colocados"]'::jsonb, 2, 'Regulamento Geral, Art. 2º, 2.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Levar mais de 20 segundos para arrumar o uniforme resulta em:', '["Perda de uma vantagem", "Punição consecutiva: 20s para paletó e faixa, 20s para faixa de identificação e 20s para amarrar a calça", "Desclassificação imediata", "Nenhuma consequência"]'::jsonb, 1, 'Livro de Regras, Art. 6º, 6.2.2 (T)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'O joelho na barriga vale quantos pontos?', '["2 pontos", "1 ponto", "3 pontos", "4 pontos"]'::jsonb, 0, 'Livro de Regras, Art. 4º, 4.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Quando os dois atletas de uma final são desclassificados por falta técnica:', '["Há sorteio", "Os perdedores das semifinais disputam a final e os desclassificados ficam com a prata", "Não há campeão", "A categoria é anulada"]'::jsonb, 1, 'Regulamento Geral, Art. 2º, 2.4.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'No single leg com a cabeça para fora, nas demais categorias, o árbitro:', '["Não interfere na luta", "Interrompe e pune", "Concede vantagem ao defensor", "Desclassifica o atacante"]'::jsonb, 0, 'Livro de Regras, Art. 1º, 1.3.10');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'Quantos pontos vale o vice-campeonato na disputa por academias?', '["1 ponto", "2 pontos", "3 pontos", "5 pontos"]'::jsonb, 2, 'Regulamento Geral, Art. 3º, 3.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'No Jiu-Jitsu sem kimono, fazer pegada no próprio uniforme ou no do adversário é:', '["Falta disciplinar", "Falta gravíssima", "Falta grave", "Permitido"]'::jsonb, 2, 'Livro de Regras, Art. 6º, 6.2.2 (N)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Quando apenas um atleta é desclassificado na final por falta disciplinar, a medalha de prata vai para:', '["O terceiro colocado", "O próprio desclassificado", "O perdedor da semifinal para o atleta campeão", "Ninguém"]'::jsonb, 2, 'Regulamento Geral, Art. 2º, 2.4.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PONTUAÇÃO', 'Segundo a tabela oficial, quais posições valem 4 pontos?', '["Joelho na barriga e montada", "Passagem de guarda e montada", "Montada, montada pelas costas e pegada pelas costas", "Queda e raspagem"]'::jsonb, 2, 'Livro de Regras, Art. 2º, 2.5.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Qual é a única exceção à regra do WO sem medalha?', '["Se o atleta já tiver realizado pelo menos uma luta na categoria", "Se o atleta pesar corretamente", "Se a chave tiver três atletas", "Se houver atestado médico"]'::jsonb, 0, 'Regulamento Geral, Art. 4º, 4.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Nas categorias pesadíssimo e absoluto, o atleta sozinho precisa:', '["Lutar uma exibição", "Apenas se inscrever", "Ser pesado e checado", "Ter o uniforme checado e aprovado"]'::jsonb, 3, 'Regulamento Geral, Art. 4º, 4.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'Quantas placas de 2 m x 1 m compõem a área de combate numa área de 64 m²?', '["14 placas", "18 placas", "32 placas", "36 placas"]'::jsonb, 1, 'Manual de Formatação, Art. 1º, 1.1.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CATEGORIAS E TEMPO', 'Qual é o tempo de luta das categorias Mirim I, II e III?', '["2 minutos", "3 minutos", "4 minutos", "5 minutos"]'::jsonb, 1, 'Regulamento Geral, Art. 1º, 1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Após a contagem por puxada simultânea sem evolução, a luta é:', '["Decidida pelo árbitro", "Reiniciada no solo", "Paralisada, os dois atletas punidos e reiniciada em pé", "Encerrada"]'::jsonb, 2, 'Livro de Regras, Art. 6º, 6.2.1 (C)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PUNIÇÕES', 'Na terceira falta grave, o adversário do atleta punido recebe:', '["A vitória", "Quatro pontos", "Dois pontos", "Uma vantagem"]'::jsonb, 2, 'Livro de Regras, Art. 7º, 7.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PONTUAÇÃO', 'Qual é a única posição que vale 3 pontos?', '["Passagem de guarda", "Montada pelas costas", "Raspagem", "Joelho na barriga"]'::jsonb, 0, 'Livro de Regras, Art. 2º, 2.5.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'A montada com os dois braços do adversário presos sob as pernas resulta em:', '["Vantagem", "Nada", "2 pontos", "4 pontos"]'::jsonb, 0, 'Livro de Regras, Art. 5º, 5.6.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Se os dois atletas de uma semifinal forem desclassificados por falta TÉCNICA:', '["Disputam nova semifinal", "São proclamados terceiros colocados e a outra semifinal vale como final", "Recebem prata", "Ficam sem medalha"]'::jsonb, 1, 'Regulamento Geral, Art. 2º, 2.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'O atleta desclassificado por falta disciplinar:', '["Recebe bronze", "Não tem direito a medalha e não consta na lista final de colocação do campeonato", "Recebe medalha da colocação alcançada", "Consta na lista, mas sem medalha"]'::jsonb, 1, 'Regulamento Geral, Art. 4º, 4.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'Categorias com apenas dois atletas da mesma academia:', '["Contam apenas o ouro", "Não contam pontos para a disputa por academias", "Contam metade dos pontos", "Contam pontos normalmente"]'::jsonb, 1, 'Regulamento Geral, Art. 3º, 3.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Em caso de WO ou desclassificação em chave de quatro atletas, ela:', '["É cancelada", "Passa a funcionar como chave de três", "Não adota o método da chave de três", "Vira chave de dois"]'::jsonb, 2, 'Regulamento Geral, Art. 2º, 2.3.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Na mesma situação da cruzada de perna, para atletas das faixas marrom e preta, o árbitro:', '["Interrompe e pune", "Concede vantagem", "Desclassifica o infrator", "Não interrompe o combate e nenhuma penalidade é aplicada"]'::jsonb, 3, 'Livro de Regras, Art. 6º, 6.2.3, Cruzada de Perna');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Até qual idade o árbitro deve proteger a cervical do atleta retirado do solo em triângulo ou guarda fechada?', '["Até 10 anos", "Até 18 anos", "Até 12 anos", "Até 15 anos"]'::jsonb, 2, 'Livro de Regras, Art. 1º, 1.3.8');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'A queda suplex jogando o adversário de cabeça ou pescoço ao solo é:', '["Técnica permitida sem restrições", "Falta gravíssima", "Vantagem para quem aplica", "Falta grave"]'::jsonb, 1, 'Livro de Regras, Art. 6º, 6.2.3 (L)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Sobre o uso de camisa por baixo do kimono na categoria masculina:', '["É permitido se for branca", "É permitido apenas no sem kimono", "É obrigatório", "Não é permitido"]'::jsonb, 3, 'Livro de Regras, Art. 8º, 8.1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Patches descosturados ou em locais não autorizados devem ser:', '["Costurados pelo fiscal", "Retirados antes da checagem do kimono", "Mantidos", "Cobertos com fita"]'::jsonb, 1, 'Livro de Regras, Art. 8º, 8.3.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CATEGORIAS E TEMPO', 'Qual é o tempo de luta das categorias Juvenil I e II?', '["3 minutos", "4 minutos", "5 minutos", "6 minutos"]'::jsonb, 2, 'Regulamento Geral, Art. 1º, 1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PONTUAÇÃO', 'O atleta que abandona voluntariamente uma posição pela qual já recebeu pontos para repeti-la:', '["Não terá os novos pontos assinalados", "Recebe os pontos novamente", "Recebe apenas vantagem", "É punido por falta de combatividade"]'::jsonb, 0, 'Livro de Regras, Art. 3º, 3.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CATEGORIAS E TEMPO', 'Qual é o tempo regulamentar de luta para adulto faixa-marrom?', '["10 minutos", "8 minutos", "7 minutos", "6 minutos"]'::jsonb, 1, 'Regulamento Geral, Art. 1º, 1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'DECISÃO DAS LUTAS', 'Quando o árbitro percebe que um golpe encaixado pode expor o atleta a sérios danos físicos, a decisão se dá por:', '["Desclassificação", "Desistência", "Interrupção", "Decisão do árbitro"]'::jsonb, 2, 'Livro de Regras, Art. 2º, 2.2.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'Dominar as costas mantendo os pés cruzados ou triângulo fechado resulta em:', '["4 pontos", "Vantagem", "Punição", "Nada"]'::jsonb, 1, 'Livro de Regras, Art. 5º, 5.6.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Patches com frases ou símbolos ligados a ideologias políticas são:', '["Não permitidos", "Permitidos se pequenos", "Permitidos com autorização", "Permitidos apenas na calça"]'::jsonb, 0, 'Livro de Regras, Art. 8º, 8.3.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Quem é a autoridade máxima de cada luta?', '["O árbitro", "O coordenador de ringue", "A mesa central", "O diretor de arbitragem"]'::jsonb, 0, 'Livro de Regras, Art. 1º, 1.1.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'O atleta posicionado à direita do árbitro tem seus pontos marcados:', '["Sempre no placar eletrônico", "Na seção colorida do placar, pelo braço com braçadeira", "Pelo mesário, sem gesto do árbitro", "Na seção sem cores do placar"]'::jsonb, 1, 'Livro de Regras, Art. 1º, 1.3.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'Pular por cima das barreiras que separam a área de competição do público pode gerar:', '["Punição administrativa a critério da IBJJF", "Nenhuma consequência", "Punição no placar", "Desclassificação sumária"]'::jsonb, 0, 'Regulamento Geral, Art. 6º, 6.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'DECISÃO DAS LUTAS', 'Quando o médico declara que um atleta não tem condições de continuar, a luta é decidida por:', '["Contagem do placar", "Interrupção", "Desclassificação", "Sorteio"]'::jsonb, 1, 'Livro de Regras, Art. 2º, 2.2.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PONTUAÇÃO', 'Nos pontos cumulativos, quantas contagens de 3 segundos o árbitro faz?', '["Nenhuma, os pontos são imediatos", "Uma para cada posição da sequência", "Apenas 3 segundos de domínio ao final da sequência", "Duas contagens"]'::jsonb, 2, 'Livro de Regras, Art. 3º, 3.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Qual gesto sinaliza que houve comunicação do árbitro de vídeo ao árbitro central?', '["Tocar a orelha com a ponta dos dedos duas vezes", "Braços cruzados acima da cabeça", "Mão espalmada balançando", "Punho fechado à altura do ombro"]'::jsonb, 0, 'Livro de Regras, Art. 1º, 1.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Proferir palavras de baixo calão ou gestos obscenos ao árbitro ou ao público é:', '["Falta de combatividade", "Falta grave", "Falta disciplinar", "Falta gravíssima técnica"]'::jsonb, 2, 'Livro de Regras, Art. 6º, 6.1.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'A falta de combatividade recebe classificação similar a:', '["Faltas graves", "Faltas gravíssimas", "Nenhuma, é apenas advertência", "Faltas disciplinares"]'::jsonb, 0, 'Livro de Regras, Art. 6º, 6.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'De onde os Coordenadores de Ringue chamam os atletas para as áreas de luta?', '["Da área de pesagem", "Exclusivamente da Área de Aquecimento", "Da mesa central", "Da arquibancada"]'::jsonb, 1, 'Manual de Formatação, Art. 1º, 1.3.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Qual é a altura total da ferramenta oficial de medição do uniforme?', '["10 cm", "20 cm", "15 cm", "12 cm"]'::jsonb, 2, 'Livro de Regras, Art. 8º, 8.1.12');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Para pontuar o joelho na barriga, o atleta deve:', '["Prender um braço do adversário", "Manter-se estável por 3 segundos sem o joelho oposto encostar no chão", "Manter o joelho oposto no chão", "Estar livre da meia-guarda apenas"]'::jsonb, 1, 'Livro de Regras, Art. 4º, 4.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'Dominar as costas aprisionando os dois braços do adversário resulta em:', '["2 pontos", "Falta grave", "Vantagem", "4 pontos"]'::jsonb, 2, 'Livro de Regras, Art. 5º, 5.6.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Se os dois atletas de uma semifinal se acidentam com a luta empatada e nenhum pode continuar:', '["A outra semifinal passa a valer como final e os acidentados são terceiros colocados", "A categoria é cancelada", "Há sorteio para a final", "Os dois são eliminados sem medalha"]'::jsonb, 0, 'Regulamento Geral, Art. 2º, 2.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Na chave de três, se o atleta exceder o peso máximo da categoria, ele:', '["Perde apenas a primeira luta", "Está eliminado da competição sem direito à outra semifinal", "Faz a outra semifinal", "Pode ser repescado"]'::jsonb, 1, 'Regulamento Geral, Art. 2º, 2.3.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'Categorias com apenas um atleta:', '["Não contam pontos para a disputa por academias", "São eliminadas", "Valem pontos em dobro", "Contam pontos normalmente"]'::jsonb, 0, 'Regulamento Geral, Art. 3º, 3.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'O atleta que entra em movimento de queda ANTES de o adversário iniciar a puxada para a guarda:', '["Recebe apenas vantagem, sempre", "Tem assinalados os dois pontos ou a vantagem referentes ao movimento", "É punido", "Não recebe nada"]'::jsonb, 1, 'Livro de Regras, Art. 4º, 4.1.10');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'A área de aquecimento é destinada:', '["À imprensa", "Ao público e aos atletas", "Exclusivamente aos atletas", "Aos professores"]'::jsonb, 2, 'Manual de Formatação, Art. 1º, 1.3.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'A cruzada de perna é considerada falta GRAVE quando o atleta:', '["Cruza abaixo do joelho", "Mantém o pé solto", "Passa seu pé da linha mediana vertical do corpo do adversário", "Passa o pé do limite vertical do corpo"]'::jsonb, 2, 'Livro de Regras, Art. 6º, 6.2.3, Cruzada de Perna');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Ocorrendo uma desclassificação técnica e uma disciplinar na mesma semifinal:', '["Ninguém recebe bronze", "Há sorteio", "Os dois são terceiros colocados", "O desclassificado por motivo técnico é considerado terceiro colocado"]'::jsonb, 3, 'Regulamento Geral, Art. 2º, 2.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'Com qual agência a IBJJF tem contrato para o controle de doping?', '["WADA", "USADA", "ABCD", "FIFA"]'::jsonb, 1, 'Regulamento Geral, Art. 5º, 5.10');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'O movimento correto de defesa de uma finalização leva os dois atletas para fora da área. O árbitro assinala:', '["Punição para quem defendeu", "Nada", "Dois pontos para o atleta que aplicava a finalização", "Vantagem para quem defendeu"]'::jsonb, 2, 'Livro de Regras, Art. 1º, 1.3.7 e Art. 3º, 3.1.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Desobedecer uma ordem do árbitro é classificado como:', '["Falta disciplinar", "Falta gravíssima", "Falta de combatividade", "Falta grave"]'::jsonb, 3, 'Livro de Regras, Art. 6º, 6.2.2 (K)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'A decisão dos árbitros com acesso a vídeo e replay pode ser contestada por quem?', '["Pelos árbitros laterais", "Pelo árbitro central", "Pelo diretor de arbitragem", "Por ninguém entre central e laterais"]'::jsonb, 3, 'Livro de Regras, Art. 1º, 1.2.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'Além da posição incompleta, a vantagem também se caracteriza por:', '["Tentativa de queda sem pegada", "Movimentação quase completa de uma posição passível de pontuação, com real perigo ao adversário", "Domínio de tempo", "Controle de pegadas em pé"]'::jsonb, 1, 'Livro de Regras, Art. 5º, 5.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'A calça do kimono deve ter comprimento mínimo de quanto acima do maléolo tibial?', '["5 cm", "8 cm", "3 cm", "2 cm"]'::jsonb, 0, 'Livro de Regras, Art. 8º, 8.1.8');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'No pódio, o degrau do vice-campeão fica:', '["À direita do atleta em primeiro lugar", "À esquerda do campeão", "Atrás do campeão", "No mesmo nível do campeão"]'::jsonb, 0, 'Manual de Formatação, Art. 1º, 1.6');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'No joelho na barriga, qual perna vai sobre o adversário?', '["Qualquer uma das duas", "A perna mais distante do quadril", "A perna mais próxima do quadril do adversário", "As duas alternadamente"]'::jsonb, 2, 'Livro de Regras, Art. 4º, 4.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PUNIÇÕES', 'Nas categorias até 15 anos, na quarta e quinta falta grave, o árbitro:', '["Desclassifica direto", "Aplica apenas vantagem", "Concede dois pontos ao oponente e uma punição ao atleta em cada falta, desclassificando apenas na sexta", "Ignora a falta"]'::jsonb, 2, 'Livro de Regras, Art. 7º, 7.2.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Quando o atleta cai por cima com o triângulo encaixado no adversário que está por baixo:', '["Recebe vantagem de montada", "Não serão assinalados pontos referentes à montada", "Recebe 4 pontos de montada", "Recebe 2 pontos"]'::jsonb, 1, 'Livro de Regras, Art. 4º, 4.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Na situação da cruzada de perna descrita para atletas até a faixa-roxa, quando o atleta por cima se levanta após uma raspagem, o árbitro deve:', '["Desclassificar", "Punir imediatamente", "Aguardar 3 segundos, interromper e assinalar 2 pontos ao atleta que está por cima", "Não interferir"]'::jsonb, 2, 'Livro de Regras, Art. 6º, 6.2.3, Cruzada de Perna');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'O árbitro só pode assinalar a vantagem quando:', '["O atleta não tiver mais possibilidade de chegar à posição de pontuação", "O atleta pedir", "A luta for interrompida", "O adversário se defender"]'::jsonb, 0, 'Livro de Regras, Art. 5º, 5.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Qual é o gesto de desclassificação?', '["Braços abertos na altura dos ombros", "Mão espalmada balançando", "Braços acima da cabeça com punhos cruzados, seguido da indicação do atleta", "Punho fechado com braço elevado"]'::jsonb, 2, 'Livro de Regras, Art. 1º, 1.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Morder, puxar cabelo ou aplicar golpe nos órgãos genitais é classificado como:', '["Falta técnica leve", "Falta disciplinar", "Vantagem para o adversário", "Falta de combatividade"]'::jsonb, 1, 'Livro de Regras, Art. 6º, 6.1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'Esgotados todos os critérios de desempate entre academias, o que se faz?', '["Realiza-se sorteio", "Vence a academia com mais atletas", "Vence a academia mais antiga", "Divide-se o título"]'::jsonb, 0, 'Regulamento Geral, Art. 3º, 3.3.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Quando um atleta de uma semifinal é desclassificado sem ter efetuado luta alguma:', '["A quarta de final do mesmo lado da chave passa a valer como semifinal", "O adversário é campeão automaticamente", "A categoria tem apenas um medalhista", "A final é cancelada"]'::jsonb, 0, 'Regulamento Geral, Art. 2º, 2.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'O "single leg com a cabeça para fora" é técnica proibida, mas segundo a tabela de golpes proibidos:', '["Apesar de proibida, o atleta não será punido", "O atleta é sempre punido", "É falta gravíssima em todas as categorias", "Só é proibida para faixa-preta"]'::jsonb, 0, 'Livro de Regras, Tabela de Golpes Proibidos, item 11');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'Quem tem poder soberano sobre a inscrição dos atletas de uma academia?', '["O coordenador de ringue", "O professor responsável pela academia ou associação", "O atleta", "A IBJJF"]'::jsonb, 1, 'Regulamento Geral, Art. 5º, 5.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Sobre a premiação, é correto afirmar que:', '["Pode haver troca de posições no pódio", "Não haverá troca de posições no pódio no momento da premiação", "O professor pode contestar o pódio", "O árbitro decide o pódio"]'::jsonb, 1, 'Regulamento Geral, Art. 4º, 4.1.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Na montada com um braço preso, o atleta só pontua se:', '["O joelho da perna que aprisiona o braço não ultrapassar a linha do ombro do adversário", "Houver pegada na gola", "O adversário estiver de costas", "Os dois pés estiverem no chão"]'::jsonb, 0, 'Livro de Regras, Art. 4º, 4.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'A raspagem se caracteriza quando o atleta por baixo:', '["Escapa para as costas em pé", "Inverte a posição forçando o adversário a ficar por baixo e o mantém por 3 segundos", "Passa a guarda do adversário", "Se levanta e sai da guarda"]'::jsonb, 1, 'Livro de Regras, Art. 4º, 4.6.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'Quem está proibido de dar instrução a atletas dentro da área de competição?', '["Os familiares", "Os árbitros laterais", "Os professores", "Qualquer pessoa que esteja exercendo função oficial na organização"]'::jsonb, 3, 'Regulamento Geral, Art. 7º, 7.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'O atleta desclassificado por WO em uma categoria:', '["Fica em terceiro", "Recebe prata", "Recebe medalha normalmente", "Não tem direito a medalha e não consta na lista final de colocação"]'::jsonb, 3, 'Regulamento Geral, Art. 4º, 4.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Se o atleta está se defendendo de uma queda ou raspagem e pula na guarda, a punição vem acompanhada de:', '["Desclassificação", "Uma vantagem para o adversário", "Nada", "2 pontos para o adversário"]'::jsonb, 3, 'Livro de Regras, Art. 6º, 6.2.2 (W), Obs');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PUNIÇÕES', 'Na segunda falta grave, o adversário do atleta punido recebe:', '["Nada", "Uma vantagem", "Quatro pontos", "Dois pontos"]'::jsonb, 1, 'Livro de Regras, Art. 7º, 7.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Se o oponente puxa para guarda fechada e fica suspenso no ar, o atleta precisa colocá-lo com as costas no solo em até:', '["3 segundos", "2 segundos", "5 segundos", "10 segundos"]'::jsonb, 0, 'Livro de Regras, Art. 4º, 4.1.12, Obs');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Qual gesto o árbitro faz para sinalizar 3 (três) pontos?', '["Braços cruzados acima da cabeça", "Dedos indicador e médio levantados", "Punho fechado", "Dedos indicador, médio e anelar levantados"]'::jsonb, 3, 'Livro de Regras, Art. 1º, 1.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'A correção de pontuação pelos árbitros com acesso a vídeo e replay só acontece:', '["Se o árbitro central concordar", "Por decisão da mesa central", "Em caso de concordância entre os dois árbitros de vídeo", "A pedido do atleta"]'::jsonb, 2, 'Livro de Regras, Art. 1º, 1.2.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Sobre a touca permitida nas categorias femininas, é correto afirmar que:', '["Pode ter inscrições da academia", "Pode ter cordões para fixação", "Pode ser de qualquer cor", "Não pode possuir nenhuma parte rígida"]'::jsonb, 3, 'Livro de Regras, Art. 8º, 8.3.8');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Qual é a largura da ferramenta oficial de medição do uniforme?', '["7 cm", "5 cm", "4 cm", "3,5 cm"]'::jsonb, 3, 'Livro de Regras, Art. 8º, 8.1.12');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Qual gesto indica que o atleta segurou nas bocas das mangas ou da calça com dedos virados para dentro?', '["Dedo indicador fazendo movimentos circulares", "Uma das mãos virada para cima sobre o braço oposto, segurando a braçadeira", "Braços cruzados na altura da cintura", "Punho fechado à altura do ombro"]'::jsonb, 1, 'Livro de Regras, Art. 1º, 1.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Fazer pegada no lado interno do paletó ou da calça do adversário é:', '["Falta grave", "Permitido", "Falta disciplinar", "Falta gravíssima"]'::jsonb, 0, 'Livro de Regras, Art. 6º, 6.2.2 (I)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Utilizar substância que aumente a aderência em qualquer parte do corpo é:', '["Permitido", "Falta grave", "Falta gravíssima", "Falta disciplinar"]'::jsonb, 2, 'Livro de Regras, Art. 6º, 6.2.3 (G)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'A ordem verbal "Lute!" indica:', '["Punição por falta de combatividade", "Reinício do combate", "Fim da luta", "Punição por falta grave"]'::jsonb, 0, 'Livro de Regras, Art. 1º, 1.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'O atleta sofre uma queda e consegue rolar terminando o movimento por cima. O adversário:', '["Recebe 2 pontos", "Recebe vantagem", "Não recebe mais vantagem assinalada pelo árbitro", "Recebe 2 pontos e vantagem"]'::jsonb, 2, 'Livro de Regras, Art. 5º, 5.7.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CATEGORIAS E TEMPO', 'No Master 1, qual é o tempo de luta para as faixas roxa, marrom e preta?', '["7 minutos", "6 minutos", "5 minutos", "8 minutos"]'::jsonb, 1, 'Regulamento Geral, Art. 1º, 1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Quem tem a palavra final sobre a liberação de um atleta com lesão de pele?', '["O diretor geral de competição", "O árbitro", "O médico do campeonato", "O fiscal de uniformes"]'::jsonb, 2, 'Livro de Regras, Art. 8º, 8.2.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PONTUAÇÃO', 'Segundo a tabela oficial, quais posições valem 2 pontos?', '["Montada e raspagem", "Apenas a queda", "Passagem de guarda e queda", "Queda, raspagem e joelho na barriga"]'::jsonb, 3, 'Livro de Regras, Art. 2º, 2.5.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'DECISÃO DAS LUTAS', 'Se o atleta vomita ou apresenta micção ou evacuação involuntária, a luta:', '["É decidida por interrupção", "É reiniciada do zero", "É decidida por sorteio", "Continua após limpeza do tatame"]'::jsonb, 0, 'Livro de Regras, Art. 2º, 2.2.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Se durante um ataque por cima o atleta cai por baixo e não usa as pernas para impedir o controle lateral:', '["Não devem ser atribuídos pontos nem vantagem pela passagem de guarda", "O atleta é punido", "O adversário recebe 3 pontos de passagem", "O adversário recebe vantagem"]'::jsonb, 0, 'Livro de Regras, Art. 4º, 4.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Na modalidade sem kimono, a camisa deve ter pelo menos qual percentual na cor da graduação do atleta?', '["10%", "25%", "50%", "5%"]'::jsonb, 0, 'Livro de Regras, Art. 8º, 8.1.16');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'O atleta que entra em movimento de queda APÓS o adversário iniciar a puxada para a guarda:', '["Recebe 2 pontos se estabilizar", "Recebe vantagem", "Não recebe os dois pontos nem a vantagem", "Recebe 2 pontos"]'::jsonb, 2, 'Livro de Regras, Art. 4º, 4.1.11');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Nos campeonatos por equipes, quantas equipes recebem medalhas no pódio oficial?', '["As duas primeiras", "Todas as participantes", "As três primeiras", "Apenas a primeira"]'::jsonb, 0, 'Regulamento Geral, Art. 4º, 4.1.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'Há vantagem de joelho na barriga quando o atleta:', '["Está preso na meia-guarda", "Coloca a canela no peito", "Mantém a posição por 2 segundos apenas", "Mantém o joelho da outra perna no solo"]'::jsonb, 3, 'Livro de Regras, Art. 5º, 5.6.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'Quem toma as decisões finais sobre organização e andamento do evento?', '["O árbitro central", "O Diretor Geral de Arbitragem", "O Diretor Geral de Competição", "O Coordenador de Mesa Central"]'::jsonb, 2, 'Manual de Formatação, Art. 2º, 2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Para alterar um resultado proclamado, de quem é a decisão final?', '["Do diretor geral de competição", "Do diretor de arbitragem", "Da mesa central", "Do árbitro"]'::jsonb, 3, 'Livro de Regras, Art. 1º, 1.1.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Numa baiana ou single leg em que o oponente senta e aplica contragolpe bem sucedido, quem pontua?', '["Ninguém", "Os dois atletas", "Apenas o atleta que contragolpeou, se estabilizar 3 segundos", "Apenas quem iniciou o ataque"]'::jsonb, 2, 'Livro de Regras, Art. 4º, 4.1.7');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Quando o árbitro interrompe a luta por qualquer motivo, os atletas devem:', '["Voltar ao centro por conta própria", "Soltar todas as pegadas", "Sempre que possível manter a posição e aguardar instruções", "Ficar imediatamente em pé"]'::jsonb, 2, 'Livro de Regras, Art. 1º, 1.3.6, Obs');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'DECISÃO DAS LUTAS', 'Se ao término do combate os atletas empatam em pontos, vantagens e punições, quem decide o vencedor?', '["Sorteio", "Repete-se a luta", "O árbitro, ou os árbitros quando forem três", "A academia com mais medalhas"]'::jsonb, 2, 'Livro de Regras, Art. 2º, 2.6.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CATEGORIAS E TEMPO', 'Qual é o tempo regulamentar de luta para adulto faixa-branca?', '["7 minutos", "6 minutos", "5 minutos", "8 minutos"]'::jsonb, 2, 'Regulamento Geral, Art. 1º, 1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CATEGORIAS E TEMPO', 'A partir de qual idade o atleta se enquadra em Master 2?', '["40 anos", "38 anos", "35 anos", "36 anos"]'::jsonb, 3, 'Regulamento Geral, Art. 1º, 1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Na modalidade sem kimono, a bermuda masculina deve ter comprimento:', '["Sempre até o tornozelo", "Acima da metade da coxa apenas", "Livre, sem restrição", "No mínimo abaixo da metade da coxa e no máximo até o joelho"]'::jsonb, 3, 'Livro de Regras, Art. 8º, 8.1.16');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'DECISÃO DAS LUTAS', 'Qual das opções NÃO é uma forma prevista de decisão das lutas?', '["Decisão do árbitro", "Sorteio", "Perda dos sentidos", "Prorrogação"]'::jsonb, 3, 'Livro de Regras, Art. 2º');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'As faltas técnicas se dividem em:', '["Falta de combatividade, faltas graves e faltas gravíssimas", "Leves, médias e graves", "Punições e desclassificações", "Disciplinares e técnicas"]'::jsonb, 0, 'Livro de Regras, Art. 6º, 6.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Correr em volta da área de luta sem buscar contato com o adversário é:', '["Falta grave", "Falta de combatividade apenas", "Falta gravíssima", "Permitido para recuperar o fôlego"]'::jsonb, 0, 'Livro de Regras, Art. 6º, 6.2.2 (U)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'Qual é o tamanho máximo de uma área de luta?', '["81 m²", "64 m²", "120 m²", "100 m²"]'::jsonb, 3, 'Manual de Formatação, Art. 1º, 1.1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'DECISÃO DAS LUTAS', 'Quantos atendimentos médicos cada atleta tem direito por contusão?', '["Três", "Ilimitados, a critério do médico", "Um", "Dois"]'::jsonb, 3, 'Livro de Regras, Art. 2º, 2.2.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'A vantagem pode ser assinalada pelo árbitro em qual momento?', '["Apenas durante a luta", "Somente antes do início da luta", "Nunca após o comando \"Parou!\"", "Mesmo após o término do tempo de luta e antes da proclamação do resultado"]'::jsonb, 3, 'Livro de Regras, Art. 5º, 5.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'Qual é o tamanho mínimo de uma área de luta?', '["100 m²", "64 m²", "81 m²", "36 m²"]'::jsonb, 1, 'Manual de Formatação, Art. 1º, 1.1.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Ao ser atacado por uma finalização, o atleta comete falta que obriga o árbitro a interromper o combate. Isso é:', '["Falta grave", "Falta de combatividade", "Sem consequência", "Falta gravíssima"]'::jsonb, 3, 'Livro de Regras, Art. 6º, 6.2.3 (C)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CATEGORIAS E TEMPO', 'Como é definida a categoria de idade do atleta?', '["Pela idade no dia da competição", "Pela idade registrada na IBJJF", "Pela idade que completou ou completará no ano de realização do campeonato", "Pela idade na data da inscrição"]'::jsonb, 2, 'Regulamento Geral, Art. 1º, 1.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Qual é a única exceção ao sistema de eliminação simples?', '["A final de faixa-preta", "A categoria absoluto", "A chave de quatro", "A chave de três"]'::jsonb, 3, 'Regulamento Geral, Art. 2º, 2.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'O atleta conduz o adversário para fora da área de luta tentando completar uma raspagem, sem ter ficado por cima em momento algum. Ele:', '["É punido por falta grave", "Recebe 2 pontos", "Não recebe vantagem", "Recebe vantagem"]'::jsonb, 2, 'Livro de Regras, Art. 5º, 5.7.7');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CATEGORIAS E TEMPO', 'Qual é o tempo regulamentar de luta para adulto faixa-roxa?', '["7 minutos", "5 minutos", "8 minutos", "6 minutos"]'::jsonb, 0, 'Regulamento Geral, Art. 1º, 1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'DECISÃO DAS LUTAS', 'O atleta que perde os sentidos por trauma:', '["Pode lutar na categoria absoluto", "Pode voltar após liberação do professor", "Não poderá retornar a lutar na mesma competição e deve ser encaminhado ao atendimento médico", "Perde apenas a luta em questão, sem outras restrições"]'::jsonb, 2, 'Livro de Regras, Art. 2º, 2.4.1, Obs');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'A passagem de guarda exige que o atleta por cima transponha as pernas e mantenha:', '["Qualquer controle por 3 segundos", "Controle transversal ou longitudinal do adversário de costas ou de lado por 3 segundos", "Os dois joelhos no solo", "O adversário de quatro apoios"]'::jsonb, 1, 'Livro de Regras, Art. 4º, 4.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Comunicar-se com qualquer pessoa contestando decisão do árbitro durante a luta é:', '["Permitido ao professor apenas", "Falta gravíssima", "Falta grave", "Falta disciplinar"]'::jsonb, 2, 'Livro de Regras, Art. 6º, 6.2.2 (J)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'DECISÃO DAS LUTAS', 'Para decidir um empate total, o árbitro deve observar:', '["Quem controlou mais tempo a posição por cima", "Quem tem mais experiência", "Quem começou a luta atacando", "Que atleta foi mais ofensivo e chegou mais perto de pontuar ou finalizar"]'::jsonb, 3, 'Livro de Regras, Art. 2º, 2.6.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'A meia-guarda também não gera vantagem para quem está por cima quando:', '["O tempo estiver acabando", "Não estiver vindo de uma tentativa de passagem de guarda", "O adversário estiver defendendo", "O atleta estiver em pé"]'::jsonb, 1, 'Livro de Regras, Art. 5º, 5.7.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Tapar o nariz ou a boca do adversário com as mãos é:', '["Falta gravíssima", "Falta grave", "Falta de combatividade", "Permitido em defesa"]'::jsonb, 0, 'Livro de Regras, Art. 6º, 6.2.3 (J)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Quando a saída da área de combate é motivada pelo movimento do próprio atleta que ataca a finalização, o árbitro:', '["Pune o atacante", "Reinicia sem qualquer marcação possível", "Assinala os dois pontos normalmente", "Não assinala os dois pontos e avalia apenas a vantagem pela quase finalização"]'::jsonb, 3, 'Livro de Regras, Art. 1º, 1.3.7');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Simular combate ou desrespeitar a seriedade da competição é:', '["Falta de combatividade", "Punição administrativa apenas", "Falta grave", "Falta disciplinar"]'::jsonb, 3, 'Livro de Regras, Art. 6º, 6.1.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'A vantagem se caracteriza quando o atleta:', '["Conquista posição passível de pontuação mas não consegue manter o domínio pelos 3 segundos", "Marca ponto e o adversário desiste", "Aplica uma finalização completa", "Vence no tempo regulamentar"]'::jsonb, 0, 'Livro de Regras, Art. 5º, 5.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'Para se inscrever em qualquer campeonato, o atleta precisa:', '["Estar afiliado a uma academia sujeita à aprovação da IBJJF", "Ter faixa registrada em qualquer federação", "Ter registro individual apenas", "Comprovar tempo de treino"]'::jsonb, 0, 'Regulamento Geral, Art. 5º, 5.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Com três árbitros, para desclassificar por acúmulo de quatro punições, o árbitro central precisa:', '["Ter a confirmação de pelo menos um dos árbitros laterais", "Consultar a mesa central", "Ter a confirmação dos dois laterais", "Apenas paralisar a luta"]'::jsonb, 0, 'Livro de Regras, Art. 1º, 1.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'Quantos pontos vale o terceiro lugar na disputa por academias?', '["2 pontos", "3 pontos", "Nenhum", "1 ponto"]'::jsonb, 3, 'Regulamento Geral, Art. 3º, 3.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'Qual é o primeiro critério de desempate na disputa por academias?', '["Campeão mais graduado", "Maior número de medalhas de prata", "Maior número de medalhas de ouro", "Sorteio"]'::jsonb, 2, 'Regulamento Geral, Art. 3º, 3.3.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Retirar propositalmente o próprio kimono ou a própria faixa, causando a interrupção da luta, é:', '["Falta disciplinar", "Falta grave", "Sem consequência", "Falta gravíssima"]'::jsonb, 1, 'Livro de Regras, Art. 6º, 6.2.2 (G)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Quantas vezes o atleta sobe na balança oficial do evento?', '["Três vezes", "Quantas forem necessárias", "Uma única vez", "Duas vezes"]'::jsonb, 2, 'Livro de Regras, Art. 8º, 8.3.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PONTUAÇÃO', 'Após puxada simultânea para a guarda, se o atleta sobe diretamente para a imobilização lateral, ele:', '["Recebe uma vantagem de passagem", "Não recebe pontos ou vantagem pela passagem de guarda", "Recebe 2 pontos", "Recebe 3 pontos de passagem"]'::jsonb, 1, 'Livro de Regras, Art. 3º, 3.5, Obs');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Movimentos que acontecem após o limite da área de segurança:', '["São desconsiderados", "Geram punição", "Valem apenas vantagem", "Valem pontos normalmente"]'::jsonb, 0, 'Livro de Regras, Art. 1º, 1.3.7');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Quais cores de kimono são aceitas?', '["Branco e azul apenas", "Branco, azul, preto e cinza", "Qualquer cor lisa", "Branco, azul royal ou preto, inteiramente"]'::jsonb, 3, 'Livro de Regras, Art. 8º, 8.1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'Quem pesa os atletas antes da primeira luta e os conduz até a área de luta?', '["O Coordenador de Ringue", "O fiscal de uniformes", "O mesário", "O anunciador"]'::jsonb, 0, 'Manual de Formatação, Art. 2º, 2.7');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'Na área de luta mínima de 64 m², quanto é área de combate?', '["46 m²", "28 m²", "36 m²", "64 m²"]'::jsonb, 2, 'Manual de Formatação, Art. 1º, 1.1.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Ao final da luta, o árbitro levanta o braço:', '["Do atleta escolhido pelos professores", "Do atleta mais graduado", "Somente do vencedor, mesmo em acordo entre atletas da mesma academia", "Dos dois atletas em caso de acordo"]'::jsonb, 2, 'Livro de Regras, Art. 1º, 1.3.14');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CATEGORIAS E TEMPO', 'Qual é o tempo regulamentar de luta para adulto faixa-preta?', '["12 minutos", "10 minutos", "8 minutos", "5 minutos"]'::jsonb, 1, 'Regulamento Geral, Art. 1º, 1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'A ordem verbal "Falta!" é usada pelo árbitro em qual situação?', '["Punição por falta de combatividade", "Retirada de pontos", "Desclassificação", "Punição por falta grave"]'::jsonb, 3, 'Livro de Regras, Art. 1º, 1.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Numa disputa vinda da guarda, a partir de quantos segundos em pé o combate passa a ser considerado luta em pé?', '["2 segundos", "10 segundos", "5 segundos", "3 segundos"]'::jsonb, 3, 'Livro de Regras, Art. 4º, 4.1.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'Não há vantagem de raspagem quando:', '["A raspagem começa e termina em situação de guarda 50/50", "O adversário está com finalização encaixada", "O atleta está de faixa preta", "A luta passa de 3 minutos"]'::jsonb, 0, 'Livro de Regras, Art. 5º, 5.7.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Com os atletas em posição de solo estabilizada e 2/3 do corpo fora da área de combate, o árbitro:', '["Anula os pontos da sequência", "Aguarda a saída total da área de segurança", "Reinicia com os dois em pé", "Reinicia no centro com os atletas em posições idênticas às da interrupção"]'::jsonb, 3, 'Livro de Regras, Art. 1º, 1.3.7');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Usar a faixa desamarrada como auxílio em estrangulamento é:', '["Falta gravíssima", "Falta grave", "Falta disciplinar", "Permitido"]'::jsonb, 1, 'Livro de Regras, Art. 6º, 6.2.2 (S)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'Onde fica localizada a mesa central?', '["Na entrada do ginásio", "Em posição central em relação a todas as áreas de luta", "Junto ao pódio", "Ao lado da área de aquecimento"]'::jsonb, 1, 'Manual de Formatação, Art. 1º, 1.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Qual é a ordem verbal para o início da luta?', '["Lute!", "Combate!", "Parou!", "Vai!"]'::jsonb, 1, 'Livro de Regras, Art. 1º, 1.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Em caso de empate em pontos, vantagens e punições com três árbitros, como se declara o vencedor?', '["Vence o atleta de faixa mais graduada", "Os três árbitros levantam o braço do atleta que consideram vencedor e vale a maioria", "Prorrogação de dois minutos", "Sorteio imediato"]'::jsonb, 1, 'Livro de Regras, Art. 1º, 1.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Quantos pontos vale a passagem de guarda?', '["1 ponto", "2 pontos", "4 pontos", "3 pontos"]'::jsonb, 3, 'Livro de Regras, Art. 4º, 4.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Para pontuar a montada, o atleta pode manter presos sob suas pernas:', '["Um braço e a cabeça", "Nenhum braço", "Os dois braços do adversário", "Até um braço do adversário"]'::jsonb, 3, 'Livro de Regras, Art. 4º, 4.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'Como é composto o pódio oficial?', '["Quatro degraus", "Dois degraus", "Um único nível", "Três degraus, com o mais alto ao centro"]'::jsonb, 3, 'Manual de Formatação, Art. 1º, 1.6');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'O edital publicado de cada competição:', '["Não tem valor normativo", "Tem o mesmo peso do Livro de Regras", "Se sobrepõe ao Regulamento Geral quando necessário", "Está subordinado ao Regulamento Geral"]'::jsonb, 2, 'Regulamento Geral, Art. 7º, 7.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'Numa tentativa de single leg em que o atleta leva o adversário a andar para fora da área de luta:', '["Recebe 2 pontos", "Não será mais concedida vantagem", "O adversário é punido", "Recebe vantagem"]'::jsonb, 1, 'Livro de Regras, Art. 5º, 5.7.6');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Qual é o sistema de disputa das chaves?', '["Pontos corridos", "Melhor de três", "Eliminação simples", "Grupos e mata-mata"]'::jsonb, 2, 'Regulamento Geral, Art. 2º, 2.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Como o Livro de Regras define guarda?', '["A posição sentada de frente ao adversário", "O controle das pegadas por baixo", "O uso de uma ou das duas pernas para impedir que o adversário atinja o controle transversal ou longitudinal", "Qualquer posição por baixo"]'::jsonb, 2, 'Livro de Regras, Art. 4º, 4.2, Obs 1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'O atleta derruba, cai na guarda e sofre raspagem imediata bem sucedida. O resultado é:', '["4 pontos para o adversário", "Nada para nenhum dos dois", "2 pontos de queda para ele e nada para o adversário", "Vantagem de queda para ele e 2 pontos de raspagem para o adversário"]'::jsonb, 3, 'Livro de Regras, Art. 4º, 4.1.8');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'A queda vale quantos pontos?', '["1 ponto", "4 pontos", "2 pontos", "3 pontos"]'::jsonb, 2, 'Livro de Regras, Art. 4º, 4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Quem solicita a entrada do atendimento médico na área de luta?', '["O coordenador de ringue", "O árbitro", "O professor do atleta", "O mesário"]'::jsonb, 1, 'Livro de Regras, Art. 1º, 1.3.11');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'NÃO se configura falta de combatividade quando o atleta:', '["Abraça as costas do adversário na guarda", "Segura a faixa do adversário em pé", "Fica parado na guarda fechada", "Está defendendo ataques a partir da montada, da pegada das costas ou das imobilizações"]'::jsonb, 3, 'Livro de Regras, Art. 6º, 6.2.1 (D)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PONTUAÇÃO', 'Uma sequência de passagem de guarda seguida de montada soma quantos pontos cumulativos?', '["8 pontos", "4 pontos", "6 pontos", "7 pontos"]'::jsonb, 3, 'Livro de Regras, Art. 3º, 3.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PUNIÇÕES', 'Quando os dois atletas são punidos por falta de combatividade resultando na terceira falta para ambos, a luta:', '["É reiniciada em pé", "Vai para decisão do árbitro", "Continua no solo", "É encerrada"]'::jsonb, 0, 'Livro de Regras, Art. 7º, 7.2.1, Obs');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'A meia-guarda NÃO gera vantagem para quem está por cima quando:', '["A passagem é concretizada na sequência do movimento", "O atleta está de faixa preta", "A luta passa de 3 minutos", "Há pegada na gola"]'::jsonb, 0, 'Livro de Regras, Art. 5º, 5.7.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Como a faixa deve ser amarrada?', '["Uma volta com nó simples", "Duas voltas com nó simples", "Duas voltas na altura da cintura com nó duplo", "Três voltas com nó simples"]'::jsonb, 2, 'Livro de Regras, Art. 8º, 8.1.9');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PONTUAÇÃO', 'O atleta que chega a várias posições cumulativas sob ataque de finalização e não se livra até o fim da luta terá:', '["Uma vantagem por posição", "Apenas uma vantagem assinalada", "Nada assinalado", "Todos os pontos"]'::jsonb, 1, 'Livro de Regras, Art. 3º, 3.3.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Quantas medalhas de bronze são entregues por categoria?', '["Duas", "Nenhuma", "Três", "Uma"]'::jsonb, 0, 'Regulamento Geral, Art. 4º, 4.1.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Um atleta de kimono preto enfrenta um de kimono branco. Quem fica à direita do árbitro?', '["O de kimono preto", "É indiferente", "O de kimono branco", "O primeiro chamado"]'::jsonb, 0, 'Livro de Regras, Art. 1º, 1.3.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Defendendo um single leg com a cabeça para fora, projetar o adversário segurando na faixa para que ele atinja o solo com a cabeça é:', '["Falta grave", "Defesa legítima", "Vantagem", "Falta gravíssima"]'::jsonb, 3, 'Livro de Regras, Art. 6º, 6.2.3 (K)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Quando os árbitros laterais concordam com o árbitro central, eles:', '["Fazem o mesmo gesto do central", "Permanecem sentados nas cadeiras", "Apitam uma vez", "Levantam o braço confirmando"]'::jsonb, 1, 'Livro de Regras, Art. 1º, 1.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'DECISÃO DAS LUTAS', 'Se um atleta alega estar sentindo câimbras durante o combate, o que acontece?', '["Ele recebe tempo de descanso", "A luta continua normalmente", "Ele é declarado perdedor da luta", "A luta é interrompida sem resultado"]'::jsonb, 2, 'Livro de Regras, Art. 2º, 2.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'O atleta inicia uma raspagem mas desiste deliberadamente de permanecer por cima para preservar sua defesa. Ele:', '["Recebe 2 pontos", "É punido", "Recebe vantagem", "Não recebe a vantagem referente à raspagem"]'::jsonb, 3, 'Livro de Regras, Art. 5º, 5.7.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Colocar o pé na lapela atrás do pescoço do adversário, com ou sem pegada, é:', '["Falta grave", "Permitido com pegada", "Falta gravíssima", "Vantagem"]'::jsonb, 0, 'Livro de Regras, Art. 6º, 6.2.2 (R)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CATEGORIAS E TEMPO', 'Qual é o tempo de luta das categorias Pré-Mirim?', '["2 minutos", "4 minutos", "5 minutos", "3 minutos"]'::jsonb, 0, 'Regulamento Geral, Art. 1º, 1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Após o nó duplo, cada ponta da faixa deve ter comprimento entre:', '["30 cm e 40 cm", "20 cm e 30 cm", "10 cm e 20 cm", "15 cm e 25 cm"]'::jsonb, 1, 'Livro de Regras, Art. 8º, 8.1.9');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'Um faixa-preta de judô com experiência comprovada em wrestling ou MMA pode competir como faixa-branca?', '["Sim, sempre", "Sim, apenas na primeira competição", "Depende do professor", "Não, está proibido"]'::jsonb, 3, 'Regulamento Geral, Art. 5º, 5.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Um árbitro marca passagem de guarda, o segundo marca vantagem e o terceiro pede retirada dos pontos. O que é assinalado?', '["Três pontos", "Dois pontos", "Nada", "Uma vantagem"]'::jsonb, 3, 'Livro de Regras, Art. 1º, 1.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'As faltas previstas na regra podem ser cometidas:', '["Apenas após o combate", "Somente dentro da área de luta", "Apenas durante o combate", "Antes, durante e depois dos combates"]'::jsonb, 3, 'Livro de Regras, Art. 6º');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Na chave de três, o atleta que perde a primeira luta por não comparecimento:', '["É repescado", "Recebe bronze", "Pode fazer a outra semifinal", "Perde o direito de fazer a outra semifinal"]'::jsonb, 3, 'Regulamento Geral, Art. 2º, 2.3.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Onde ficam posicionados os árbitros laterais?', '["Sentados em cadeiras em cantos opostos da área de luta", "Na mesa de controle de pontuação", "Atrás da mesa central", "Em pé nas laterais da área de combate"]'::jsonb, 0, 'Livro de Regras, Art. 1º, 1.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Na raspagem em que o adversário vira de quatro apoios, o atleta pontua se:', '["Montar em 3 segundos", "Passar a guarda em seguida", "Controlar as costas sem necessidade de ganchos, mantendo pelo menos um joelho do adversário no solo por 3 segundos", "Colocar os dois ganchos"]'::jsonb, 2, 'Livro de Regras, Art. 4º, 4.6.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Nas categorias juvenil, adulto e master, é obrigatório o uso de:', '["Kimono trançado", "Kimono importado", "Kimono com EVA na gola", "Kimono simples"]'::jsonb, 0, 'Livro de Regras, Art. 8º, 8.1.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'O atleta tem pegada na calça e o oponente puxa para a guarda. Ele recebe 2 pontos de queda se:', '["Passar a guarda em seguida", "O oponente cair de costas", "A pegada for mantida por 3 segundos", "Conseguir estabilizar a posição por cima na luta de chão por 3 segundos"]'::jsonb, 3, 'Livro de Regras, Art. 4º, 4.1.12');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Comemorar a vitória com danças ou exercícios que sugiram superioridade física, sem se enquadrar como falta disciplinar, é:', '["Punição administrativa apenas", "Falta gravíssima", "Permitido", "Falta grave"]'::jsonb, 3, 'Livro de Regras, Art. 6º, 6.2.2 (X)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Qual é a área máxima permitida para a etiqueta do fabricante na perna da calça?', '["50 cm²", "16 cm²", "36 cm²", "25 cm²"]'::jsonb, 2, 'Livro de Regras, Art. 8º, 8.3.6');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Ao projetar o adversário para a área de segurança com o golpe iniciado dentro da área, o árbitro deve:', '["Dar apenas vantagem", "Parar somente após a contagem dos 3 segundos, assinalar os pontos e reiniciar na mesma posição no centro", "Parar imediatamente e anular", "Punir o atleta que projetou"]'::jsonb, 1, 'Livro de Regras, Art. 4º, 4.1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'Cada academia tem direito a inscrever quantos atletas por categoria de peso, faixa, idade e sexo?', '["1", "Ilimitado", "2", "3"]'::jsonb, 2, 'Regulamento Geral, Art. 5º, 5.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Na transição direta da montada pelas costas para a montada pela frente, o atleta recebe:', '["4 pontos e uma vantagem", "4 pontos no total", "4 pontos por cada montada, respeitando os 3 segundos de cada posição", "Nada, por ser a mesma posição"]'::jsonb, 2, 'Livro de Regras, Art. 4º, 4.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Interpretações subjetivas do árbitro na marcação de pontos, vantagens ou punições:', '["Podem ser revistas pelo diretor de arbitragem", "São revistas sempre que houver vídeo", "Não serão alteradas", "Podem ser contestadas pelo professor"]'::jsonb, 2, 'Livro de Regras, Art. 1º, 1.1.3, Obs');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Qual destes itens é permitido em competição?', '["Joelheiras que não aumentem o volume do corpo", "Protetores de orelha", "Coquilha", "Óculos esportivos"]'::jsonb, 0, 'Livro de Regras, Art. 8º, 8.3.7 e 8.3.9');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Na guarda 50/50, girar para dentro com o adversário pisando no solo com o pé que está na guarda é:', '["Falta grave", "Falta gravíssima", "Vantagem", "Permitido"]'::jsonb, 1, 'Livro de Regras, Art. 6º, 6.2.3, Cruzada de Perna');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PUNIÇÕES', 'Faltas disciplinares resultam em:', '["Punição no placar sem outra consequência", "Apenas advertência verbal", "Desclassificação sumária da luta e da competição", "Perda de uma vantagem"]'::jsonb, 2, 'Livro de Regras, Art. 7º, 7.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Quando os dois atletas puxam para a guarda ao mesmo tempo, a contagem para falta de combatividade é de:', '["15 segundos", "20 segundos", "30 segundos", "10 segundos"]'::jsonb, 1, 'Livro de Regras, Art. 6º, 6.2.1 (C)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'O atleta pode subir na balança:', '["Apenas de kimono completo", "Sem cotoveleiras e joelheiras, colocando-as depois para a checagem de kimono", "Com qualquer acessório", "De calçado"]'::jsonb, 1, 'Livro de Regras, Art. 8º, 8.3.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Após a pesagem, trocar de kimono para a primeira luta implica em:', '["Nova checagem apenas", "Desclassificação", "Advertência", "Punição no placar"]'::jsonb, 1, 'Livro de Regras, Art. 8º, 8.1.13');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Colocar a mão ou o pé sobre a parte frontal do rosto do adversário é:', '["Permitido para criar espaço", "Falta gravíssima", "Falta disciplinar", "Falta grave"]'::jsonb, 3, 'Livro de Regras, Art. 6º, 6.2.2 (O)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'O atleta graduado antes do tempo mínimo de permanência na faixa anterior ou da idade mínima:', '["Compete na faixa nova", "Compete na faixa anterior", "Compete apenas no absoluto", "Não poderá competir na faixa atual nem na anterior"]'::jsonb, 3, 'Regulamento Geral, Art. 5º, 5.8');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'DECISÃO DAS LUTAS', 'Em caso de empate em pontos ao final do tempo regulamentar, o primeiro critério de desempate é:', '["Maior número de vantagens", "Graduação do atleta", "Menor número de punições", "Peso do atleta"]'::jsonb, 0, 'Livro de Regras, Art. 2º, 2.5.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Na desclassificação técnica dos dois atletas de uma final de chave de três:', '["Não há campeão", "A chave é refeita", "Há sorteio", "O perdedor da segunda semifinal se torna o campeão"]'::jsonb, 3, 'Regulamento Geral, Art. 2º, 2.4.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'Atletas inscritos na faixa-preta só podem lutar:', '["Com a graduação declarada pelo professor", "Em qualquer faixa acima da azul", "Com a graduação registrada na IBJJF no momento da inscrição", "Na faixa anterior, se preferirem"]'::jsonb, 2, 'Regulamento Geral, Art. 5º, 5.7');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'O atleta foge deliberadamente da área de luta para evitar posição de inferioridade. O árbitro deve:', '["Desclassificar", "Assinalar dois pontos ao adversário e marcar punição no placar para o infrator", "Reiniciar sem marcação", "Apenas punir"]'::jsonb, 1, 'Livro de Regras, Art. 6º, 6.2.2 (M)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'O atleta graduado durante uma competição, após o término de sua categoria, fica:', '["Proibido de competir na categoria absoluto", "Obrigado a disputar o absoluto na faixa nova", "Desclassificado do campeonato", "Livre para disputar o absoluto"]'::jsonb, 0, 'Regulamento Geral, Art. 5º, 5.9');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'DECISÃO DAS LUTAS', 'Em que situação a luta é decidida por sorteio?', '["Quando os dois atletas se acidentam numa final de categoria, com a luta empatada, e nenhum pode continuar", "Quando o árbitro não consegue decidir", "Empate em pontos e vantagens", "Quando o placar apresenta erro"]'::jsonb, 0, 'Livro de Regras, Art. 2º, 2.7.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'Quantos pontos vale o título de campeão na disputa por academias?', '["7 pontos", "9 pontos", "10 pontos", "5 pontos"]'::jsonb, 1, 'Regulamento Geral, Art. 3º, 3.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Na categoria feminina, o uso de camisa de tecido elástico por baixo do kimono é:', '["Permitido apenas na faixa-preta", "Proibido", "Opcional", "Obrigatório"]'::jsonb, 3, 'Livro de Regras, Art. 8º, 8.1.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Em kimono preto contra kimono azul, quem fica à direita do árbitro?', '["O de kimono preto", "O de kimono azul", "O mais graduado", "O mais leve"]'::jsonb, 1, 'Livro de Regras, Art. 1º, 1.3.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'O diretor de arbitragem só poderá autorizar a alteração de um resultado caso:', '["A chave não tenha avançado para a fase posterior", "O árbitro concorde com o professor", "O atleta apresente recurso por escrito", "Existam imagens de vídeo do combate"]'::jsonb, 0, 'Livro de Regras, Art. 1º, 1.1.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'O atleta por baixo na guarda fechada abraça as costas do adversário para mantê-lo colado ao peito sem intuito de finalizar ou pontuar. Isso é:', '["Posição legítima de defesa", "Exemplo de falta de combatividade", "Vantagem para o de cima", "Falta gravíssima"]'::jsonb, 1, 'Livro de Regras, Art. 6º, 6.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'DECISÃO DAS LUTAS', 'Havendo empate em pontos e vantagens, vence o atleta que tiver:', '["Mais tempo de domínio", "Menor número de punições", "Maior número de punições", "Faixa mais graduada"]'::jsonb, 1, 'Livro de Regras, Art. 2º, 2.5.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'O atleta sozinho em uma categoria, para receber medalha, precisa:', '["Lutar no absoluto", "Apenas comparecer", "Ter o uniforme checado, ser pesado e aprovado", "Ser aprovado pelo professor"]'::jsonb, 2, 'Regulamento Geral, Art. 4º, 4.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PUNIÇÕES', 'Faltas técnicas gravíssimas resultam em:', '["Vantagem ao adversário", "Dois pontos ao adversário", "Desclassificação da competição inteira", "Desclassificação sumária da luta no momento da infração"]'::jsonb, 3, 'Livro de Regras, Art. 7º, 7.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Na pegada pelas costas, quantos braços do adversário podem ser aprisionados sem perder a pontuação?', '["Até um, sem que a perna passe da linha dos ombros", "Os dois", "Nenhum", "Os dois, se houver gancho"]'::jsonb, 0, 'Livro de Regras, Art. 4º, 4.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PONTUAÇÃO', 'A contagem dos 3 segundos de estabilização é interrompida quando:', '["O atleta sai da área de combate", "O árbitro apita", "O tempo de luta chega ao fim", "O adversário encaixa uma posição de finalização"]'::jsonb, 3, 'Livro de Regras, Art. 3º, 3.3.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PONTUAÇÃO', 'O atleta conquista posições de pontuação sob finalização encaixada e só se livra do golpe quando já não está mais nessas posições. Ele recebe:', '["Duas vantagens", "Apenas uma vantagem", "Nem pontos nem vantagens por essas movimentações", "Todos os pontos acumulados"]'::jsonb, 2, 'Livro de Regras, Art. 3º, 3.3.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'O atleta que apresenta pintura nos cabelos que suje o kimono do adversário durante a luta:', '["Deve lavar os cabelos", "Recebe punição no placar", "Recebe advertência", "É desclassificado"]'::jsonb, 3, 'Livro de Regras, Art. 8º, 8.2.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PONTUAÇÃO', 'Quantos segundos de estabilização são necessários para que uma posição de pontuação seja assinalada?', '["1 segundo", "5 segundos", "2 segundos", "3 segundos"]'::jsonb, 3, 'Livro de Regras, Art. 3º, 3.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Ao projetar um adversário que está com um ou dois joelhos no chão, os pontos só são assinalados se:', '["Houver pegada na gola", "O atleta que projetou estiver em pé no momento da projeção, salvo defesa de raspagem", "O movimento vier da guarda", "O adversário cair de costas"]'::jsonb, 1, 'Livro de Regras, Art. 4º, 4.1.6');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'DECISÃO DAS LUTAS', 'Em caso de interrupção do combate por contusão dos dois atletas, vence:', '["O atleta mais graduado", "O atleta que tiver mais pontos que o adversário", "Ninguém, a luta é anulada", "O atleta com mais vantagens apenas"]'::jsonb, 1, 'Livro de Regras, Art. 2º, 2.5.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'A área de luta é composta por:', '["Três zonas concêntricas", "Área de combate e área técnica", "Área de combate e área de segurança, demarcadas por cores diferentes", "Apenas área de combate"]'::jsonb, 2, 'Manual de Formatação, Art. 1º, 1.1.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'A raspagem vale quantos pontos?', '["1 ponto", "3 pontos", "2 pontos", "4 pontos"]'::jsonb, 2, 'Livro de Regras, Art. 4º, 4.6');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Quando o atleta projeta o adversário e o faz cair de quatro apoios, os pontos só são assinalados se:', '["Controlar as costas sem necessidade de ganchos, mantendo o adversário com pelo menos um joelho no solo por 3 segundos", "Colocar os dois ganchos", "Estabilizar por 5 segundos", "Passar a guarda em seguida"]'::jsonb, 0, 'Livro de Regras, Art. 4º, 4.1.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Um atleta é desclassificado por golpe considerado permitido, e a interrupção ocorreu antes de o adversário bater. O que acontece?', '["O combate reinicia do zero", "O combate retorna ao centro e quem aplicou o golpe recebe dois pontos", "A luta é encerrada com o resultado mantido", "O atleta desclassificado é declarado vencedor"]'::jsonb, 1, 'Livro de Regras, Art. 1º, 1.1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Quantos pontos valem a montada e a pegada pelas costas?', '["3 pontos", "4 pontos", "5 pontos", "2 pontos"]'::jsonb, 1, 'Livro de Regras, Art. 4º, 4.4 e 4.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Para caracterizar a pegada pelas costas com pontuação, os calcanhares devem estar:', '["Cruzados", "Fora do quadril do adversário", "Apenas um deles preso", "Na parte interna das coxas do adversário, sem cruzar os pés"]'::jsonb, 3, 'Livro de Regras, Art. 4º, 4.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Na meia-guarda, o atleta por baixo:', '["Está sempre sentado", "Mantém os dois ganchos", "Aprisiona as duas pernas do adversário", "Está deitado de costas ou de lado e aprisiona apenas uma das pernas do adversário"]'::jsonb, 3, 'Livro de Regras, Art. 4º, 4.2, Obs 2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FORMATAÇÃO DO EVENTO', 'Quem é responsável pelo controle de inscrição e confecção das chaves do absoluto?', '["O Supervisor dos Coordenadores de Ringue", "O Coordenador de Mesa Central", "O anunciador", "O Diretor Geral de Competição"]'::jsonb, 1, 'Manual de Formatação, Art. 2º, 2.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Quando um atleta pisa na área de segurança durante a luta em pé, sem queda iniciada, o árbitro:', '["Interrompe e reinicia com os dois atletas em pé no centro", "Concede vantagem ao adversário", "Pune o atleta", "Não interrompe"]'::jsonb, 0, 'Livro de Regras, Art. 1º, 1.3.7');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'Uma tentativa de finalização gera vantagem quando:', '["Durar mais de 5 segundos", "Houver qualquer encaixe", "Expuser o adversário ao perigo real de desistência, a critério do árbitro", "For aplicada em pé"]'::jsonb, 2, 'Livro de Regras, Art. 5º, 5.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Ter o kimono inutilizado e não conseguir trocá-lo no prazo determinado pelo árbitro é:', '["Punição administrativa", "Falta gravíssima", "Falta grave", "Falta de combatividade"]'::jsonb, 1, 'Livro de Regras, Art. 6º, 6.2.3 (A)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Na cruzada de perna, com um atleta em pé, o pé do joelho em perigo pisando no chão é considerado:', '["Pé preso ou obstruído", "Pé solto", "Situação legal em todas as faixas", "Posição neutra"]'::jsonb, 0, 'Livro de Regras, Art. 6º, 6.2.3, Cruzada de Perna');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Na cruzada de perna, quando qualquer dos dois atletas está com finalização encaixada, cruzar a perna nas características descritas é:', '["Permitido", "Vantagem", "Falta grave", "Falta gravíssima"]'::jsonb, 3, 'Livro de Regras, Art. 6º, 6.2.3, Cruzada de Perna');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Ajoelhar, sentar ou pular na guarda sem que haja uma pegada estabelecida é:', '["Falta disciplinar", "Falta gravíssima", "Falta grave", "Falta de combatividade"]'::jsonb, 2, 'Livro de Regras, Art. 6º, 6.2.2 (A)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Se o atleta que sofreu o golpe bateu antes da interrupção e da desclassificação indevida:', '["O combate retorna ao centro", "Ambos são desclassificados", "O atleta que aplicou o golpe será declarado vencedor", "A luta é anulada"]'::jsonb, 2, 'Livro de Regras, Art. 1º, 1.1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Para iniciar a contagem dos 3 segundos que caracterizam luta em pé, é necessário que:', '["Um atleta esteja com os dois pés no chão e o outro com pelo menos um pé no chão e sem o joelho oposto no solo", "Nenhum atleta toque o solo com as mãos", "Os dois estejam fora da guarda", "Os dois atletas estejam com os dois pés no chão"]'::jsonb, 0, 'Livro de Regras, Art. 4º, 4.1.5, Obs');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'POSIÇÕES DE PONTUAÇÃO', 'Para pontuar a queda, o movimento inicial deve partir de:', '["Qualquer posição", "Um joelho no chão", "Posição sentada", "Os dois pés no chão"]'::jsonb, 3, 'Livro de Regras, Art. 4º, 4.1.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CHAVES E PREMIAÇÃO', 'Para participar da cerimônia de premiação, o atleta deve estar:', '["Livre para escolher", "Com camisa da academia", "Uniformizado exclusivamente com kimono permitido em campeonatos com kimono", "Com roupa de treino"]'::jsonb, 2, 'Regulamento Geral, Art. 4º, 4.1.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'FALTAS', 'Não estar usando roupa de baixo conforme o item 8.3.10 e o fato ser percebido pelo árbitro é:', '["Falta gravíssima", "Falta disciplinar", "Advertência", "Falta grave"]'::jsonb, 0, 'Livro de Regras, Art. 6º, 6.2.3 (E)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'DECISÃO DAS LUTAS', 'Com os braços presos pelo adversário, como o atleta pode manifestar desistência?', '["Batendo duas vezes com os pés no chão", "Gritando o nome do árbitro", "Virando de costas", "Fechando os olhos"]'::jsonb, 0, 'Livro de Regras, Art. 2º, 2.1.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'Há vantagem de queda quando o atleta projeta o adversário e este:', '["Bate imediatamente", "Se levanta em menos de 3 segundos", "Fica no solo por mais de 3 segundos", "É passado de guarda"]'::jsonb, 1, 'Livro de Regras, Art. 5º, 5.6.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CATEGORIAS E TEMPO', 'Qual é o tempo mínimo de descanso entre lutas até a semifinal?', '["Igual ao tempo regulamentar de luta da categoria", "10 minutos fixos", "Metade do tempo regulamentar", "Dobro do tempo regulamentar"]'::jsonb, 0, 'Regulamento Geral, Art. 1º, 1.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ARBITRAGEM', 'Quando os três árbitros marcam pontuações diferentes para um mesmo movimento, vale:', '["A maior marcação", "A marcação do árbitro central", "A marcação intermediária", "Repete-se o movimento"]'::jsonb, 2, 'Livro de Regras, Art. 1º, 1.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'O atleta desequilibra o adversário numa raspagem, chega a ficar por cima mas não estabiliza por 3 segundos. Isso é:', '["Dois pontos", "Falta grave", "Nada é assinalado", "Vantagem de raspagem"]'::jsonb, 3, 'Livro de Regras, Art. 5º, 5.6.6');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CATEGORIAS E TEMPO', 'A partir de qual idade o atleta se enquadra em Master 7?', '["61 anos", "65 anos", "58 anos", "56 anos"]'::jsonb, 0, 'Regulamento Geral, Art. 1º, 1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'VANTAGENS', 'O atleta na guarda do adversário emborca e o adversário controla suas costas em 4 apoios com um joelho no chão. O adversário recebe:', '["Nada", "4 pontos de pegada pelas costas", "Vantagem de passagem de guarda", "3 pontos de passagem"]'::jsonb, 2, 'Livro de Regras, Art. 5º, 5.6.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'ACADEMIAS E INSCRIÇÃO', 'Persistindo o empate em ouros e pratas entre academias, o critério seguinte é:', '["Tempo total de lutas", "Número de atletas inscritos", "Sorteio imediato", "Maior número de campeões mais graduados"]'::jsonb, 3, 'Regulamento Geral, Art. 3º, 3.3.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CATEGORIAS E TEMPO', 'Qual é o tempo mínimo de descanso antes das lutas finais?', '["Igual ao tempo regulamentar", "Dobro do tempo regulamentar de luta da categoria", "15 minutos fixos", "Metade do tempo regulamentar"]'::jsonb, 1, 'Regulamento Geral, Art. 1º, 1.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'CATEGORIAS E TEMPO', 'Qual é o tempo de luta das categorias Infantil I, II e III?', '["2 minutos", "5 minutos", "3 minutos", "4 minutos"]'::jsonb, 3, 'Regulamento Geral, Art. 1º, 1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'É obrigatório que os atletas usem roupa íntima em modelo:', '["Livre, qualquer modelo", "\"Box\" ou \"sunga\"", "Não é obrigatório", "Apenas cueca boxer"]'::jsonb, 1, 'Livro de Regras, Art. 8º, 8.3.10');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PUNIÇÕES', 'Qual é a sequência de punições por falta grave?', '["Não existe sequência, é critério do árbitro", "1ª marca no placar; 2ª vantagem ao adversário; 3ª dois pontos ao adversário; 4ª desclassificação", "Vantagem, 2 pontos e desclassificação direta", "Sempre desclassificação na segunda falta"]'::jsonb, 1, 'Livro de Regras, Art. 7º, 7.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'PONTUAÇÃO', 'A luta deve seguir qual lógica, segundo o Artigo 3º?', '["Preservação do placar", "Sequência crescente de domínio técnico em direção à finalização", "Domínio por tempo total", "Alternância de posições"]'::jsonb, 1, 'Livro de Regras, Art. 3º, 3.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('padrao', 'UNIFORME E HIGIENE', 'Qual é a largura máxima da gola do kimono?', '["4 cm", "3 cm", "6 cm", "5 cm"]'::jsonb, 3, 'Livro de Regras, Art. 8º, 8.1.12');

-- banco banca: 58 questoes
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'PONTUAÇÃO', 'A passa a guarda de B e estabiliza o controle lateral. Sem parar, sobe para a montada e ali permanece imóvel por 3 segundos completos. Entre a passagem e a montada não houve 3 segundos de domínio em nenhuma posição isolada. O árbitro assinala:', '["7 pontos, contando 3 segundos apenas ao final da sequência", "3 pontos, pois só a passagem se completou", "4 pontos, pois a montada absorve a passagem", "Nada, pois nenhuma posição isolada teve 3 segundos"]'::jsonb, 0, 'Livro de Regras, Art. 3º, 3.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'PONTUAÇÃO', 'A monta em B, o árbitro assinala os 4 pontos. Em seguida A desce voluntariamente para a imobilização lateral e logo torna a montar, estabilizando novamente por 3 segundos. O placar de A deve ficar em:', '["8 pontos, pois foram duas montadas estabilizadas", "4 pontos, pois abandonou a posição voluntariamente para repeti-la", "4 pontos mais uma vantagem pela segunda montada", "7 pontos, somando montada e imobilização"]'::jsonb, 1, 'Livro de Regras, Art. 3º, 3.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'PONTUAÇÃO', 'B encaixa um armlock em A. Já sob o ataque, A gira, passa a guarda e chega à montada, mas só consegue se livrar do armlock quando já não está mais em nenhuma dessas posições. A recebe:', '["7 pontos, pois alcançou as duas posições", "Duas vantagens, uma para cada posição", "Nem pontos nem vantagens por essas movimentações", "Uma vantagem apenas"]'::jsonb, 2, 'Livro de Regras, Art. 3º, 3.3.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'PONTUAÇÃO', 'A passa a guarda de B e monta. Durante a contagem dos 3 segundos da montada, B encaixa um triângulo, interrompendo a contagem. A soltará o golpe segundos depois, quando A já não está mais montado. O árbitro deve assinalar para A:', '["Apenas os 3 pontos da passagem", "Nada, pois a contagem foi interrompida", "Os 7 pontos, pois as posições foram alcançadas", "Uma vantagem para cada posição que ele alcançou"]'::jsonb, 3, 'Livro de Regras, Art. 3º, 3.3.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'POSIÇÕES DE PONTUAÇÃO', 'A projeta B, que cai apoiado nas mãos e nos joelhos, de quatro apoios. A não coloca os ganchos, mas controla as costas de B e o mantém com um joelho no solo por 3 segundos. O árbitro assinala:', '["Os 2 pontos da queda", "Nada, pois B não caiu de costas nem de lado", "4 pontos pela pegada pelas costas", "Apenas uma vantagem de queda"]'::jsonb, 0, 'Livro de Regras, Art. 4º, 4.1.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'POSIÇÕES DE PONTUAÇÃO', 'Numa movimentação de raspagem os dois atletas chegam a ficar de pé, mas por menos de 3 segundos. Nesse intervalo, o atleta que estava se defendendo projeta o adversário ao solo de costas. Sobre a queda, o árbitro deve:', '["Assinalar 2 pontos ao que projetou", "Não assinalar pontos nem vantagem referentes à queda", "Assinalar uma vantagem ao que projetou", "Assinalar 2 pontos ao que iniciou a raspagem"]'::jsonb, 1, 'Livro de Regras, Art. 4º, 4.1.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'POSIÇÕES DE PONTUAÇÃO', 'A disputa vem da guarda e os dois atletas ficam de pé. Para que o árbitro comece a contar os 3 segundos que transformam o combate em luta em pé, é necessário que:', '["Os dois atletas estejam com os dois pés no chão", "Ambos soltem todas as pegadas", "Um esteja com os dois pés no chão e o outro com ao menos um pé no chão e sem o joelho oposto no solo", "O árbitro dê o comando verbal de luta em pé"]'::jsonb, 2, 'Livro de Regras, Art. 4º, 4.1.4, Obs');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'POSIÇÕES DE PONTUAÇÃO', 'Vindo de uma situação de guarda, A derruba B, que estava com os dois joelhos no solo. A estabiliza por cima por 3 segundos. O árbitro assinala:', '["2 pontos de queda", "Uma vantagem de queda", "3 pontos de passagem", "Nada, pois não se atribuem pontos derrubando adversário de joelhos vindo da guarda"]'::jsonb, 3, 'Livro de Regras, Art. 4º, 4.1.5, Obs');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'POSIÇÕES DE PONTUAÇÃO', 'A entra numa baiana em B. B senta no solo e aplica um contragolpe bem sucedido, ficando por cima e estabilizando por 3 segundos. O placar correto é:', '["2 pontos apenas para B, que contragolpeou", "2 pontos para cada atleta", "2 pontos para A e vantagem para B", "Vantagem para cada atleta"]'::jsonb, 0, 'Livro de Regras, Art. 4º, 4.1.6');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'POSIÇÕES DE PONTUAÇÃO', 'A projeta B ao solo de costas, mas cai na meia-guarda e imediatamente sofre uma raspagem bem sucedida de B. O árbitro assinala:', '["2 pontos de queda para A e 2 pontos de raspagem para B", "Vantagem de queda para A e 2 pontos de raspagem para B", "Nada para A e 2 pontos para B", "2 pontos de queda para A e vantagem para B"]'::jsonb, 1, 'Livro de Regras, Art. 4º, 4.1.7');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'POSIÇÕES DE PONTUAÇÃO', 'B tem as costas de A com os dois ganchos postos. Para escapar, A projeta B ao solo e estabiliza por cima por 3 segundos. Quanto à queda, A recebe:', '["2 pontos, pois estabilizou por 3 segundos", "Uma vantagem", "Nem os 2 pontos nem a vantagem referentes à queda", "4 pontos, invertendo a pegada pelas costas"]'::jsonb, 2, 'Livro de Regras, Art. 4º, 4.1.8');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'POSIÇÕES DE PONTUAÇÃO', 'A e B disputam a pegada em pé. A inicia claramente o movimento de queda e só depois B começa a puxar para a guarda. Sobre o movimento de A, o árbitro deve:', '["Não assinalar nada, pois B foi para a guarda", "Punir B por puxar a guarda sem pegada", "Assinalar apenas uma vantagem, nunca os pontos", "Assinalar os 2 pontos ou a vantagem referentes à queda"]'::jsonb, 3, 'Livro de Regras, Art. 4º, 4.1.9');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'POSIÇÕES DE PONTUAÇÃO', 'A tem uma pegada firme na calça de B. B puxa para a guarda fechada e fica suspenso no ar, pendurado em A. Para ter os 2 pontos da queda assinalados, A precisa:', '["Colocar as costas de B no solo em até 3 segundos e daí estabilizar por mais 3 segundos", "Apenas manter a pegada na calça por 3 segundos", "Abrir a guarda fechada antes de qualquer contagem", "Nada, a posição não pontua em hipótese alguma"]'::jsonb, 0, 'Livro de Regras, Art. 4º, 4.1.11, Obs');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'POSIÇÕES DE PONTUAÇÃO', 'A está livre da guarda e coloca o joelho na barriga de B, que está de costas. A se mantém firme por 3 segundos, porém com o joelho da outra perna apoiado no solo. O árbitro assinala:', '["2 pontos de joelho na barriga", "Uma vantagem de joelho na barriga", "Nada, a posição é inválida", "3 pontos de passagem de guarda"]'::jsonb, 1, 'Livro de Regras, Art. 5º, 5.6.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'POSIÇÕES DE PONTUAÇÃO', 'A senta sobre o tronco de B, livre da meia-guarda, virado para a cabeça, com os dois joelhos no solo, e permanece 3 segundos. Nessa montada, os dois braços de B estão presos sob as pernas de A. O árbitro assinala:', '["4 pontos de montada", "4 pontos de montada e uma vantagem", "Uma vantagem de montada", "Nada, a posição é irregular"]'::jsonb, 2, 'Livro de Regras, Art. 5º, 5.6.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'POSIÇÕES DE PONTUAÇÃO', 'A monta em B mantendo um dos braços de B preso sob a perna. Para que os 4 pontos da montada sejam assinalados, é necessário que:', '["O braço preso seja o do lado oposto ao da cabeça de A", "Os dois pés de A estejam cruzados nas costas de B", "A mantenha as duas mãos no solo", "O joelho da perna que aprisiona o braço não ultrapasse a linha do ombro do adversário"]'::jsonb, 3, 'Livro de Regras, Art. 4º, 4.4.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'POSIÇÕES DE PONTUAÇÃO', 'A finaliza a passagem e cai por cima já com o triângulo encaixado em B, permanecendo assim por mais de 3 segundos sobre o tronco do adversário. Quanto à montada, o árbitro deve:', '["Não assinalar pontos referentes à montada", "Assinalar uma vantagem de montada", "Assinalar os 4 pontos, pois o domínio existiu", "Assinalar 4 pontos apenas se o triângulo for desfeito"]'::jsonb, 0, 'Livro de Regras, Art. 4º, 4.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'POSIÇÕES DE PONTUAÇÃO', 'A conquista a montada pelas costas e estabiliza por 3 segundos. Em seguida faz a transição direta para a montada pela frente e novamente estabiliza por 3 segundos. O placar de A soma:', '["4 pontos, pois é uma única sequência de domínio", "8 pontos, pois são posições distintas", "4 pontos e uma vantagem", "6 pontos"]'::jsonb, 1, 'Livro de Regras, Art. 4º, 4.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'POSIÇÕES DE PONTUAÇÃO', 'A domina as costas de B por 3 segundos com os calcanhares na parte interna das coxas, porém mantém os pés cruzados. O árbitro assinala:', '["4 pontos da pegada pelas costas", "Nada, e ainda pune A", "Uma vantagem", "4 pontos e uma punição a A"]'::jsonb, 2, 'Livro de Regras, Art. 5º, 5.6.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'VANTAGENS', 'O tempo regulamentar se encerra e o árbitro ainda não proclamou o resultado. Ele percebe que deixou de marcar uma vantagem clara ocorrida nos segundos finais. O árbitro:', '["Não pode mais alterar nada após o fim do tempo", "Deve reiniciar a luta por 10 segundos", "Só pode alterar com autorização da mesa central", "Pode assinalar a vantagem, pois isso é permitido até a proclamação do resultado"]'::jsonb, 3, 'Livro de Regras, Art. 5º, 5.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'VANTAGENS', 'A inicia uma tentativa de raspagem e chega a ficar por cima, mas deliberadamente desiste de permanecer nessa posição para preservar sua estrutura de defesa. Quanto à raspagem, A recebe:', '["Nenhuma vantagem referente à raspagem", "2 pontos, pois chegou a ficar por cima", "Uma vantagem, pois inverteu a posição", "Uma vantagem apenas se o adversário reclamar"]'::jsonb, 0, 'Livro de Regras, Art. 5º, 5.7.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'VANTAGENS', 'Numa guarda 50/50, A executa um movimento de raspagem que começa e termina na própria 50/50. O árbitro deve:', '["Assinalar uma vantagem de raspagem", "Não conceder vantagem de raspagem nesse caso", "Assinalar 2 pontos se estabilizar 3 segundos", "Punir os dois atletas por falta de combatividade"]'::jsonb, 1, 'Livro de Regras, Art. 5º, 5.7.5');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'VANTAGENS', 'A sofre uma queda de B, mas consegue rolar no meio do movimento e termina por cima. Quanto à queda de B, o árbitro deve:', '["Assinalar uma vantagem para B", "Assinalar 2 pontos para B", "Não assinalar mais vantagem para B", "Assinalar vantagem para os dois"]'::jsonb, 2, 'Livro de Regras, Art. 5º, 5.7.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'VANTAGENS', 'A ataca um single leg, aprisiona a perna de B e o conduz caminhando até fora da área de luta, obrigando o árbitro a interromper o combate. Quanto a essa movimentação, A recebe:', '["Uma vantagem pela tentativa de queda", "Uma vantagem e ainda pune B por fuga", "2 pontos, pois dominou a perna", "Nenhuma vantagem nesse caso"]'::jsonb, 3, 'Livro de Regras, Art. 5º, 5.7.6');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'VANTAGENS', 'A está por cima e alcança o controle da meia-guarda de B, mas essa posição não veio de nenhuma tentativa de passagem de guarda. Quanto à meia-guarda, A recebe:', '["Nenhuma vantagem, pois não vinha de tentativa de passagem", "Uma vantagem de passagem", "3 pontos de passagem de guarda", "Uma vantagem apenas se estabilizar 3 segundos"]'::jsonb, 0, 'Livro de Regras, Art. 5º, 5.7.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'FALTAS', 'Faltando 40 segundos, A está perdendo por 2 pontos e, para evitar que B consolide a montada, sai deliberadamente da área de luta. O árbitro deve:', '["Apenas marcar uma punição a A e reiniciar no centro", "Marcar 2 pontos para B e uma punição a A, seguindo a sequência de penalidades", "Desclassificar A sumariamente", "Marcar uma vantagem para B e reiniciar em pé"]'::jsonb, 1, 'Livro de Regras, Art. 6º, 6.2.2 (M)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'FALTAS', 'B tem um armlock encaixado e A, para não bater, foge deliberadamente da área de combate. Essa conduta configura:', '["Falta grave, com 2 pontos para B", "Falta de combatividade, com punição na sequência", "Falta gravíssima, levando à desclassificação", "Nenhuma falta, pois defender-se é legítimo"]'::jsonb, 2, 'Livro de Regras, Art. 6º, 6.2.3 (B)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'FALTAS', 'Numa luta de faixa branca adulto, A pula para colocar B, que está em pé, na guarda fechada. Não se tratava de defesa de queda ou raspagem. O árbitro deve:', '["Permitir, pois é técnica legítima na faixa branca", "Conceder 2 pontos a B e seguir a luta no solo", "Desclassificar A por falta gravíssima", "Punir A e reiniciar a luta com os dois atletas em pé"]'::jsonb, 3, 'Livro de Regras, Art. 6º, 6.2.2 (W)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'FALTAS', 'Mesma situação anterior, mas A pulou na guarda enquanto se defendia de uma queda de B. Além da punição a A, o árbitro deve:', '["Conceder 2 pontos a B", "Nada mais, apenas a punição", "Conceder uma vantagem a B", "Reiniciar no solo mantendo a posição"]'::jsonb, 0, 'Livro de Regras, Art. 6º, 6.2.2 (W), Obs');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'FALTAS', 'Na cruzada de perna, A passa o pé além da linha mediana vertical do corpo de B. Nenhum dos dois tem golpe de finalização encaixado. O árbitro deve:', '["Desclassificar A por falta gravíssima", "Paralisar o combate, retornar os atletas à posição permitida e punir A antes de reiniciar", "Apenas advertir verbalmente e seguir a luta", "Conceder 2 pontos a B sem punir A"]'::jsonb, 1, 'Livro de Regras, Art. 6º, 6.2.3, Cruzada de Perna');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'FALTAS', 'Mesma cruzada de perna além da linha mediana, mas agora um dos dois atletas está com um golpe de finalização encaixado. A conduta de quem cruzou a perna passa a ser:', '["Falta grave, com punição na sequência", "Falta de combatividade", "Falta gravíssima", "Movimento permitido enquanto houver finalização"]'::jsonb, 2, 'Livro de Regras, Art. 6º, 6.2.3, Cruzada de Perna');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'FALTAS', 'A segura a boca da manga do paletó de B com dois dedos virados para dentro, e o faz para completar uma raspagem. Isso é:', '["Permitido, pois há intenção técnica clara", "Permitido apenas nas faixas marrom e preta", "Falta gravíssima", "Falta grave, independentemente da intenção"]'::jsonb, 3, 'Livro de Regras, Art. 6º, 6.2.2 (H)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'PUNIÇÕES', 'A já tem duas punições marcadas por falta de combatividade. Ele então comete uma falta grave por desobedecer uma ordem do árbitro. Essa terceira punição implica:', '["Concessão de 2 pontos para B e marcação da terceira punição", "Apenas a marcação no placar, pois as contagens são separadas", "Concessão de uma vantagem para B", "Desclassificação imediata de A"]'::jsonb, 0, 'Livro de Regras, Art. 7º, 7.2.1 e 7.2.3');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'PUNIÇÕES', 'Numa categoria até 15 anos, A chega à sua quarta falta grave na luta. O árbitro deve:', '["Desclassificar A imediatamente", "Conceder 2 pontos ao oponente e marcar mais uma punição a A", "Conceder uma vantagem ao oponente", "Encerrar a luta por contagem de placar"]'::jsonb, 1, 'Livro de Regras, Art. 7º, 7.2.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'PUNIÇÕES', 'Ainda nas categorias até 15 anos, a desclassificação por acúmulo de faltas ocorre apenas na:', '["Quarta falta", "Quinta falta", "Sexta falta", "Não há desclassificação por acúmulo nessas idades"]'::jsonb, 2, 'Livro de Regras, Art. 7º, 7.2.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'PUNIÇÕES', 'Ao comemorar a vitória, antes da proclamação do resultado, A dirige um gesto obsceno à torcida adversária. Essa falta disciplinar acarreta:', '["Desclassificação sumária apenas da luta", "Advertência verbal, pois a luta já acabou", "Punição no placar e perda de 2 pontos", "Desclassificação sumária da luta e da competição"]'::jsonb, 3, 'Livro de Regras, Art. 7º, 7.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'PUNIÇÕES', 'A comete uma falta técnica gravíssima ao usar creme escorregadio no corpo, percebido pelo árbitro durante a luta. A consequência é:', '["Desclassificação sumária da luta no momento da infração", "Desclassificação sumária da luta e da competição", "Quatro punições marcadas de uma só vez", "Perda de todos os pontos já assinalados"]'::jsonb, 0, 'Livro de Regras, Art. 7º, 7.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'PUNIÇÕES', 'A e B puxam para a guarda ao mesmo tempo. O árbitro inicia a contagem de 20 segundos. Ao final, nenhum dos dois foi para cima, nenhum tem finalização encaixada nem está na iminência de pontuar, embora os dois estejam se movimentando. O árbitro deve:', '["Deixar a luta seguir, pois há movimentação", "Paralisar, punir os dois atletas e reiniciar a luta em pé", "Punir apenas o atleta que puxou primeiro", "Conceder uma vantagem para cada um e seguir no solo"]'::jsonb, 1, 'Livro de Regras, Art. 6º, 6.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'ARBITRAGEM', 'Os dois atletas estão em posição de solo estabilizada, com 2/3 do corpo fora da área de combate. O árbitro deve:', '["Deixar a luta seguir até a saída total", "Interromper e reiniciar no centro com os atletas em pé", "Interromper e reiniciar no centro com os atletas em posições idênticas às da interrupção", "Interromper e conceder 2 pontos a quem está por cima"]'::jsonb, 2, 'Livro de Regras, Art. 1º, 1.3.7');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'ARBITRAGEM', 'Mesma saída de 2/3 do corpo da área de combate, porém a luta no solo não está estabilizada. Agora o árbitro deve:', '["Reiniciar no centro nas mesmas posições", "Punir os dois por falta de combatividade", "Deixar seguir até a estabilização", "Reiniciar no centro com os dois atletas em pé"]'::jsonb, 3, 'Livro de Regras, Art. 1º, 1.3.7');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'ARBITRAGEM', 'A tem um golpe de finalização encaixado e a movimentação leva os dois atletas para a área de segurança. O árbitro deve:', '["Não interromper o combate", "Interromper imediatamente e reiniciar no centro", "Interromper e conceder 2 pontos a A", "Interromper e punir B por fuga"]'::jsonb, 0, 'Livro de Regras, Art. 1º, 1.3.7');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'ARBITRAGEM', 'A tem uma finalização encaixada e, no movimento de defesa iniciado por B, os dois saem para fora da área de segurança. Sendo clara para o árbitro a origem do movimento, ele deve reiniciar no centro com os atletas em pé e ainda:', '["Punir B por fuga da área de luta", "Assinalar 2 pontos para A", "Assinalar uma vantagem para A", "Não assinalar nada, apenas reiniciar"]'::jsonb, 1, 'Livro de Regras, Art. 1º, 1.3.7 e Art. 3º, 3.1.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'ARBITRAGEM', 'Numa luta com três árbitros, um marca passagem de guarda, o segundo marca vantagem e o terceiro pede a retirada dos pontos. O placar deve registrar:', '["Os 3 pontos da passagem", "Nada, prevalecendo a retirada", "Uma vantagem", "A decisão do árbitro central"]'::jsonb, 2, 'Livro de Regras, Art. 1º, 1.1.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'ARBITRAGEM', 'O árbitro central conclui que A acumulou a quarta punição e deve ser desclassificado. Antes de paralisar a luta, ele:', '["Paralisa de imediato e comunica a mesa central", "Pede a revisão dos árbitros de vídeo", "Consulta o coordenador de ringue", "Faz o gesto de punição grave e aguarda a confirmação de ao menos um árbitro lateral"]'::jsonb, 3, 'Livro de Regras, Art. 1º, 1.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'DECISÃO DAS LUTAS', 'Encerrado o tempo, A e B têm o mesmo número de pontos e o mesmo número de vantagens. A tem uma punição e B tem duas. O vencedor é:', '["A, por ter menos punições", "B, pois punição não desempata", "Definido pela decisão do árbitro", "Definido por sorteio"]'::jsonb, 0, 'Livro de Regras, Art. 2º, 2.5.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'DECISÃO DAS LUTAS', 'Faltando 1 minuto e vencendo por 2 pontos, A avisa o árbitro que está com cãibra na perna e não consegue seguir. O árbitro deve:', '["Declarar A vencedor pelo placar", "Declarar A perdedor da luta", "Parar o cronômetro e conceder atendimento médico", "Reiniciar a luta em pé após 2 minutos"]'::jsonb, 1, 'Livro de Regras, Art. 2º, 2.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'DECISÃO DAS LUTAS', 'Com uma chave de braço encaixada de B, A não bate, mas emite um grito claro de dor. O árbitro deve:', '["Aguardar a batida ou a perda dos sentidos", "Conceder uma vantagem a B e seguir a luta", "Considerar caracterizada a desistência de A", "Interromper e reiniciar em pé"]'::jsonb, 2, 'Livro de Regras, Art. 2º, 2.1.4');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'DECISÃO DAS LUTAS', 'A perde os sentidos por um estrangulamento legal aplicado por B. Além de ser declarado perdedor, A:', '["Pode voltar a lutar após liberação médica no mesmo dia", "Pode competir normalmente nas lutas seguintes", "Fica suspenso apenas do absoluto", "Não poderá retornar a lutar na mesma competição e deve ser encaminhado para atendimento médico"]'::jsonb, 3, 'Livro de Regras, Art. 2º, 2.4.1, Obs');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'DECISÃO DAS LUTAS', 'Numa luta final de categoria, os dois atletas se acidentam simultaneamente com a luta empatada e nenhum tem condição de continuar. A luta será decidida por:', '["Sorteio", "Decisão do árbitro", "Dupla desclassificação", "Nova luta após intervalo médico"]'::jsonb, 0, 'Livro de Regras, Art. 2º, 2.7.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'FALTAS', 'O árbitro determina que A arrume o uniforme. A leva mais de 20 segundos para ajustar o paletó e a faixa, e depois mais de 20 segundos para colocar a faixa de identificação. O árbitro deve:', '["Marcar uma única punição pelo conjunto", "Punir de forma consecutiva, uma punição por cada prazo estourado", "Desclassificar A por falta gravíssima", "Apenas advertir, pois o kimono não estava inutilizado"]'::jsonb, 1, 'Livro de Regras, Art. 6º, 6.2.2 (T)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'FALTAS', 'Durante a luta, A está por baixo na guarda fechada e abraça as costas de B, mantendo-o colado ao peito, sem buscar finalização nem pontuação. Isso configura:', '["Posição defensiva legítima", "Falta grave por amarração de pegada", "Falta de combatividade", "Falta gravíssima"]'::jsonb, 2, 'Livro de Regras, Art. 6º, 6.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'FALTAS', 'A está com a montada consolidada sobre B e permanece ali controlando, mantendo as características técnicas da posição, sem evoluir para uma finalização. O árbitro deve:', '["Punir A por falta de combatividade após 20 segundos", "Reiniciar a luta em pé", "Punir os dois atletas", "Não configurar falta de combatividade nessa situação"]'::jsonb, 3, 'Livro de Regras, Art. 6º, 6.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'FALTAS', 'B está atacando a partir da montada e A se defende sem conseguir progredir na luta por mais de 20 segundos. Quanto a A, o árbitro deve:', '["Não configurar falta de combatividade, pois A se defende a partir da montada", "Punir A por falta de combatividade", "Punir os dois atletas", "Interromper e reiniciar em pé"]'::jsonb, 0, 'Livro de Regras, Art. 6º, 6.2.1');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'FALTAS', 'Ao ser atacado por uma chave de pé, A comete uma falta que obriga o árbitro a interromper o combate. Essa conduta é classificada como:', '["Falta grave, com punição na sequência", "Falta gravíssima", "Falta de combatividade", "Falta disciplinar"]'::jsonb, 1, 'Livro de Regras, Art. 6º, 6.2.3 (C)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'FALTAS', 'A percebe que pode vencer por desclassificação e movimenta-se intencionalmente de modo a colocar B em uma posição ilegal. Essa conduta de A é:', '["Falta grave de A", "Falta gravíssima de B, que ficou na posição ilegal", "Falta gravíssima de A", "Movimento legítimo de armadilha técnica"]'::jsonb, 2, 'Livro de Regras, Art. 6º, 6.2.3 (D)');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'POSIÇÕES DE PONTUAÇÃO', 'A está por cima executando uma chave de braço, cai por baixo e não usa as pernas para impedir que B alcance o controle lateral. Quanto à passagem de guarda, B recebe:', '["3 pontos, pois alcançou o controle lateral", "Uma vantagem de passagem", "3 pontos apenas se estabilizar 3 segundos", "Nem pontos nem vantagem de passagem, pois não havia guarda"]'::jsonb, 3, 'Livro de Regras, Art. 4º, 4.2');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'PONTUAÇÃO', 'A e B puxam para a guarda exatamente ao mesmo tempo. A é o primeiro a ir para cima e sobe diretamente para a imobilização lateral. A recebe:', '["Uma vantagem por ir para cima primeiro, sem pontos ou vantagem de passagem", "Uma vantagem por ir para cima primeiro e 3 pontos pela passagem", "Apenas os 3 pontos da passagem", "Nada, pois a puxada foi simultânea"]'::jsonb, 0, 'Livro de Regras, Art. 3º, 3.5, Obs');
INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES
  ('banca', 'PONTUAÇÃO', 'B aplica uma finalização e A, ao executar o movimento correto de defesa, acaba levando os dois para fora da área de luta. O árbitro deve assinalar:', '["2 pontos para A, que se defendeu corretamente", "2 pontos para B, que aplicava a finalização", "Uma vantagem para B", "Nada, apenas reiniciar no centro"]'::jsonb, 1, 'Livro de Regras, Art. 3º, 3.1.1');

