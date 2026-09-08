# -*- coding: utf-8 -*-
"""
Gera src/public/app.html a partir do index.html.

O index.html continua sendo a fonte do banco de questoes (lido por
gera_seed.py), mas a pagina servida ao usuario nao pode conter as perguntas.
Este script remove os dois bancos e liga a partida a API.
"""
import io, re, sys

def limites_array(src, nome):
    m = re.search(r'const\s+' + nome + r'\s*=\s*\[', src)
    if not m:
        sys.exit("nao achei %s" % nome)
    ini = m.end() - 1
    prof, i, n, instr = 0, ini, len(src), False
    while i < n:
        ch = src[i]
        if instr:
            if ch == chr(92):
                i += 2; continue
            if ch == '"':
                instr = False
        elif ch == '"':
            instr = True
        elif ch == '[':
            prof += 1
        elif ch == ']':
            prof -= 1
            if prof == 0:
                fim = i + 1
                if src[fim:fim + 1] == ';':
                    fim += 1
                return m.start(), fim
        i += 1
    sys.exit("array %s nao fecha" % nome)

src = io.open(sys.argv[1], encoding='utf-8', newline='').read()

def sub(velho, novo, rotulo):
    global src
    if src.count(velho) != 1:
        sys.exit("FALHOU (%d) -> %s" % (src.count(velho), rotulo))
    src = src.replace(velho, novo)

R = lambda t: t.replace("\n", "\r\n")

# 1. remove os dois bancos (do fim para o inicio, para nao mexer nos offsets)
faixas = sorted([limites_array(src, 'BANK'), limites_array(src, 'CASES')], reverse=True)
for ini, fim in faixas:
    src = src[:ini] + src[fim:]
src = re.sub(r'(\r?\n){3,}', '\r\n\r\n', src)

# declara os bancos vazios onde estavam
sub("const BELTS=[",
    "// As questoes nao vivem mais nesta pagina: chegam da API a cada partida,\r\n"
    "// e so para quem tem acesso liberado.\r\n"
    "const BELTS=[",
    "comentario bancos")

# 2. total de questoes vem da API
sub("$('bankN').textContent=BANK.length;",
    "fetch('/api/quiz/tamanho-banco').then(r=>r.json())\r\n"
    "  .then(t=>{$('bankN').textContent=t.padrao||0;}).catch(()=>{});",
    "bankN")

# 3. card da amostra gratuita, antes do Aquecimento
sub('      <button class="mode on" data-size="50">\r\n',
    R('      <button class="mode on" data-size="10" data-mode="amostra">\n'
      '        <span class="num">10</span>\n'
      '        <span class="meta"><b>Amostra</b><span>Dez perguntas do Aquecimento. Liberado sem pagar.</span></span>\n'
      '        <span class="tick"></span>\n'
      '      </button>\n'
      '      <button class="mode" data-size="50">\n'),
    "card amostra")

# 4. start() busca o lote na API
sub("function start(){\r\n"
    "  const banca=cfg.mode==='banca';\r\n"
    "  QTIME=banca?45:30;   // casos exigem leitura, o tempo acompanha\r\n"
    "  const fonte=banca?CASES:BANK;\r\n"
    "  const pool=cfg.shuffleQ?shuffle(fonte.slice()):fonte.slice();\r\n"
    "  deck=pool.slice(0,Math.min(cfg.size,pool.length)).map(q=>{\r\n"
    "    let o=q.o.map((t,i)=>({t,i}));\r\n"
    "    if(cfg.shuffleO)shuffle(o);\r\n"
    "    return {b:q.b,q:q.q,r:q.r,opts:o.map(x=>x.t),c:o.findIndex(x=>x.i===q.c)};\r\n"
    "  });\r\n",
    R("function modoDaApi(){\n"
      "  if(cfg.mode==='banca')return 'banca';\n"
      "  if(cfg.mode==='amostra')return 'amostra';\n"
      "  return String(cfg.size);\n"
      "}\n"
      "async function start(){\n"
      "  const banca=cfg.mode==='banca';\n"
      "  QTIME=banca?45:30;   // casos exigem leitura, o tempo acompanha\n"
      "  const btn=$('startBtn');const rotulo=btn.textContent;\n"
      "  btn.disabled=true;btn.textContent='Carregando...';\n"
      "  let dados;\n"
      "  try{\n"
      "    const r=await fetch('/api/quiz/partida',{method:'POST',\n"
      "      headers:{'Content-Type':'application/json'},\n"
      "      body:JSON.stringify({modo:modoDaApi()})});\n"
      "    if(r.status===401){location.href='/';return;}\n"
      "    if(r.status===402){location.href='/pagamento';return;}\n"
      "    if(!r.ok)throw new Error('resposta '+r.status);\n"
      "    dados=await r.json();\n"
      "  }catch(e){\n"
      "    alert('Não consegui carregar as perguntas. Verifique sua conexão e tente de novo.');\n"
      "    return;\n"
      "  }finally{ btn.disabled=false;btn.textContent=rotulo; }\n"
      "  // o servidor ja sorteia e limita o lote; aqui so embaralhamos alternativas\n"
      "  deck=dados.questoes.map(q=>{\n"
      "    let o=q.o.map((t,i)=>({t,i}));\n"
      "    if(cfg.shuffleO)shuffle(o);\n"
      "    return {b:q.b,q:q.q,r:q.r,opts:o.map(x=>x.t),c:o.findIndex(x=>x.i===q.c)};\n"
      "  });\n"),
    "start assincrono")

# 5. barra de conta no topo + travamento dos modos pagos
sub('<div class="app">\r\n',
    R('<div class="topbar" id="topbar">\n'
      '  <span class="quem" id="quem"></span>\n'
      '  <span class="acoes">\n'
      '    <a class="lnk" id="lnkAdmin" href="/admin" hidden>Painel</a>\n'
      '    <a class="lnk" id="lnkComprar" href="/pagamento" hidden>Liberar acesso</a>\n'
      '    <button class="lnk" id="btnSair" type="button">Sair</button>\n'
      '  </span>\n'
      '</div>\n'
      '<div class="app">\n'),
    "topbar")

sub("</style>",
    R('/* O body do quiz e flex em linha: a barra precisa sair do fluxo, senao\n'
      '   vira um item flex ao lado do app em vez de ficar acima dele. */\n'
      'body{padding-top:40px;}\n'
      '.topbar{position:fixed;top:0;left:0;right:0;z-index:20;display:flex;align-items:center;gap:12px;\n'
      '  padding:9px 16px;background:var(--bg2);border-bottom:1px solid var(--line);font-size:12.5px;}\n'
      '.topbar .quem{color:var(--dim);overflow:hidden;text-overflow:ellipsis;white-space:nowrap;}\n'
      '.topbar .acoes{margin-left:auto;display:flex;align-items:center;gap:14px;flex:0 0 auto;}\n'
      '.topbar .lnk{background:none;border:none;padding:0;font-family:inherit;font-size:12.5px;\n'
      '  color:var(--gold);text-decoration:none;cursor:pointer;}\n'
      '.topbar .lnk:hover{color:var(--gold2);text-decoration:underline;}\n'
      '.mode.travado{opacity:.5;}\n'
      '.mode.travado .meta b::after{content:" · acesso completo";font-family:var(--body);font-size:11px;\n'
      '  font-weight:600;letter-spacing:.06em;text-transform:uppercase;color:var(--gold-dim);}\n'
      '</style>'),
    "css topbar")

# 6. bootstrap: identifica o usuario e trava o que ele nao pode jogar
sub("\r\nshowRecord();renderCareer();showRank();\r\n",
    R("\nshowRecord();renderCareer();showRank();\n"
      "\n"
      "/* ---------- conta e permissoes ---------- */\n"
      "$('btnSair').addEventListener('click',async()=>{\n"
      "  await fetch('/api/auth/logout',{method:'POST'});location.href='/';\n"
      "});\n"
      "fetch('/api/quiz/modos').then(r=>r.ok?r.json():Promise.reject(r.status)).then(info=>{\n"
      "  const liberado=Object.fromEntries(info.modos.map(m=>[m.chave,m.liberado]));\n"
      "  document.querySelectorAll('#modes .mode').forEach(m=>{\n"
      "    const chave=m.dataset.mode||String(m.dataset.size);\n"
      "    m.classList.toggle('travado',!liberado[chave]);\n"
      "  });\n"
      "  $('lnkComprar').hidden=info.acessoLiberado;\n"
      "  // quem ainda nao pagou comeca na amostra, nao num modo travado\n"
      "  if(!info.acessoLiberado){\n"
      "    document.querySelectorAll('#modes .mode').forEach(x=>x.classList.remove('on'));\n"
      "    const am=document.querySelector('.mode[data-mode=\"amostra\"]');\n"
      "    am.classList.add('on');cfg.size=10;cfg.mode='amostra';applyMode();showRecord();showRank();\n"
      "  }\n"
      "}).catch(()=>{});\n"
      "fetch('/api/config').then(r=>r.json()).then(c=>{\n"
      "  if(!c.usuario)return;\n"
      "  $('quem').textContent=c.usuario.name||c.usuario.email;\n"
      "  $('lnkAdmin').hidden=!c.usuario.isAdmin;\n"
      "}).catch(()=>{});\n"),
    "bootstrap conta")

# 7. clique em modo travado leva ao pagamento
sub("  m.classList.add('on');cfg.size=+m.dataset.size;cfg.mode=m.dataset.mode||'padrao';\r\n",
    R("  if(m.classList.contains('travado')){location.href='/pagamento';return;}\n"
      "  m.classList.add('on');cfg.size=+m.dataset.size;cfg.mode=m.dataset.mode||'padrao';\n"),
    "clique modo travado")

io.open(sys.argv[2], 'w', encoding='utf-8', newline='').write(src)
print("app.html gerado: %d bytes (index.html tinha %d)" % (
    len(src), len(io.open(sys.argv[1], encoding='utf-8', newline='').read())))
for proibido in ('const BANK=[', 'const CASES=['):
    print("  %s ainda presente? %s" % (proibido, proibido in src))
