# -*- coding: utf-8 -*-
"""Extrai os bancos BANK e CASES do index.html do quiz e gera a migration de seed."""
import io, re, json, sys, collections

def parse_array(body):
    """Converte um array literal JS (chaves sem aspas) em dados Python."""
    out, i, n, instr = [], 0, len(body), False
    while i < n:
        ch = body[i]
        if instr:
            out.append(ch)
            if ch == chr(92):
                i += 1
                if i < n:
                    out.append(body[i])
            elif ch == '"':
                instr = False
            i += 1
            continue
        if ch == '"':
            instr = True; out.append(ch); i += 1; continue
        if ch == ',':
            # o JS aceita virgula sobrando antes de ] ou }, o JSON nao
            resto = body[i + 1:]
            if re.match(r'\s*[\]}]', resto):
                i += 1
                continue
        mm = re.match(r'([a-zA-Z_]\w*)\s*:', body[i:])
        if mm and (not out or out[-1] in '{,' or out[-1].isspace()):
            out.append('"%s":' % mm.group(1)); i += mm.end(); continue
        out.append(ch); i += 1
    return json.loads(''.join(out))

def extrai(src, nome):
    """Acha o array pelo nome e delimita contando colchetes, ignorando os que
    aparecem dentro de strings. Regex de fronteira quebra com o formato do arquivo."""
    m = re.search(r'const\s+' + nome + r'\s*=\s*\[', src)
    if not m:
        sys.exit("nao achei o banco %s" % nome)
    ini = m.end() - 1
    prof, i, n, instr = 0, ini, len(src), False
    while i < n:
        ch = src[i]
        if instr:
            if ch == chr(92):
                i += 2
                continue
            if ch == '"':
                instr = False
        elif ch == '"':
            instr = True
        elif ch == '[':
            prof += 1
        elif ch == ']':
            prof -= 1
            if prof == 0:
                return parse_array(src[ini:i + 1])
        i += 1
    sys.exit("array %s nao fecha" % nome)

src = io.open(sys.argv[1], encoding='utf-8').read()
bank = extrai(src, 'BANK')
cases = extrai(src, 'CASES')

def sql_str(s):
    return "'" + s.replace("'", "''") + "'"

linhas = []
linhas.append("-- Gerado a partir do index.html do quiz. Nao editar a mao:")
linhas.append("-- rode scripts/gera_seed.py novamente se o banco de questoes mudar.")
linhas.append("")
linhas.append("DELETE FROM questions;")
linhas.append("")

total = 0
for banco, dados in (('padrao', bank), ('banca', cases)):
    linhas.append("-- banco %s: %d questoes" % (banco, len(dados)))
    for q in dados:
        opts = json.dumps(q['o'], ensure_ascii=False)
        linhas.append(
            "INSERT INTO questions (bank, block, prompt, options, correct_index, reference) VALUES\n"
            "  (%s, %s, %s, %s::jsonb, %d, %s);" % (
                sql_str(banco), sql_str(q['b']), sql_str(q['q']),
                sql_str(opts), q['c'], sql_str(q['r'])))
        total += 1
    linhas.append("")

io.open(sys.argv[2], 'w', encoding='utf-8').write('\n'.join(linhas) + '\n')

print("padrao: %d | banca: %d | total: %d" % (len(bank), len(cases), total))
print("blocos padrao: %d | blocos banca: %d" % (
    len(set(q['b'] for q in bank)), len(set(q['b'] for q in cases))))
# sanidade
ruins = [q for q in bank + cases
         if len(q['o']) != 4 or not (0 <= q['c'] <= 3) or not q['q'] or not q['r']]
print("questoes malformadas: %d" % len(ruins))
dup = len(bank + cases) - len(set(q['q'] for q in bank + cases))
print("enunciados duplicados: %d" % dup)
