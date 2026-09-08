import crypto from 'node:crypto';
import { Router } from 'express';
import bcrypt from 'bcryptjs';
import rateLimit from 'express-rate-limit';
import { query } from '../db/pool.js';
import { ADMIN_EMAIL } from '../config.js';
import { assinarSessao, gravarCookie, limparCookie, exigeLogin } from '../middleware/auth.js';

export const router = Router();

// Trava tentativas de forca bruta em cadastro e login.
const limite = rateLimit({
  windowMs: 15 * 60 * 1000,
  limit: 20,
  standardHeaders: true,
  legacyHeaders: false,
  message: { erro: 'Muitas tentativas. Aguarde alguns minutos.' },
});

const EMAIL_RE = /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/;

// Hash real de uma senha aleatoria, usado só para gastar o mesmo tempo de
// comparacao quando o e-mail nao existe.
const HASH_DESCARTE = bcrypt.hashSync(crypto.randomUUID(), 12);

function publico(u) {
  return {
    id: u.id,
    email: u.email,
    name: u.name,
    isAdmin: u.is_admin,
    paymentStatus: u.payment_status,
    accessEnabled: u.access_enabled,
  };
}

router.post('/cadastro', limite, async (req, res, next) => {
  try {
    const email = String(req.body?.email || '').trim().toLowerCase();
    const senha = String(req.body?.senha || '');
    const nome = String(req.body?.nome || '').trim().slice(0, 80) || null;

    if (!EMAIL_RE.test(email)) return res.status(400).json({ erro: 'E-mail invalido.' });
    if (senha.length < 8) return res.status(400).json({ erro: 'A senha precisa de ao menos 8 caracteres.' });

    const hash = await bcrypt.hash(senha, 12);
    const admin = !!ADMIN_EMAIL && email === ADMIN_EMAIL.trim().toLowerCase();

    let linha;
    try {
      const { rows } = await query(
        `INSERT INTO users (email, password_hash, name, is_admin)
         VALUES ($1, $2, $3, $4)
         RETURNING id, email, name, is_admin, payment_status, access_enabled`,
        [email, hash, nome, admin]
      );
      linha = rows[0];
    } catch (e) {
      if (e.code === '23505') return res.status(409).json({ erro: 'Este e-mail ja tem cadastro.' });
      throw e;
    }

    gravarCookie(res, assinarSessao(linha.id));
    res.status(201).json({ usuario: publico(linha) });
  } catch (e) {
    next(e);
  }
});

router.post('/login', limite, async (req, res, next) => {
  try {
    const email = String(req.body?.email || '').trim().toLowerCase();
    const senha = String(req.body?.senha || '');

    const { rows } = await query(
      `SELECT id, email, name, password_hash, is_admin, payment_status, access_enabled
         FROM users WHERE lower(email) = $1`,
      [email]
    );
    const u = rows[0];

    // Compara mesmo sem usuario encontrado, para nao vazar quais e-mails existem.
    // O hash precisa ser valido: bcrypt rejeita hash malformado com erro.
    const ok = await bcrypt.compare(senha, u?.password_hash || HASH_DESCARTE);

    if (!u || !ok) return res.status(401).json({ erro: 'E-mail ou senha incorretos.' });

    gravarCookie(res, assinarSessao(u.id));
    res.json({ usuario: publico(u) });
  } catch (e) {
    next(e);
  }
});

router.post('/logout', (req, res) => {
  limparCookie(res);
  res.json({ ok: true });
});

router.get('/eu', exigeLogin, (req, res) => {
  res.json({ usuario: publico(req.user) });
});
