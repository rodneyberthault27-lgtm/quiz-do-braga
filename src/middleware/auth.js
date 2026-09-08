import jwt from 'jsonwebtoken';
import { query } from '../db/pool.js';
import { COOKIE_NOME, JWT_SECRET, SESSAO_DIAS, IS_PROD } from '../config.js';

export function assinarSessao(userId) {
  return jwt.sign({ sub: userId }, JWT_SECRET, { expiresIn: `${SESSAO_DIAS}d` });
}

export function gravarCookie(res, token) {
  res.cookie(COOKIE_NOME, token, {
    httpOnly: true,          // o JavaScript da pagina nao le o token
    secure: IS_PROD,         // so trafega em HTTPS em producao
    sameSite: 'lax',
    maxAge: SESSAO_DIAS * 24 * 60 * 60 * 1000,
    path: '/',
  });
}

export function limparCookie(res) {
  res.clearCookie(COOKIE_NOME, { path: '/' });
}

/**
 * Carrega o usuario da sessao em req.user quando houver cookie valido.
 * Nunca bloqueia: quem bloqueia sao os middlewares abaixo.
 */
export async function carregarUsuario(req, _res, next) {
  req.user = null;
  const token = req.cookies?.[COOKIE_NOME];
  if (!token) return next();
  try {
    const { sub } = jwt.verify(token, JWT_SECRET);
    const { rows } = await query(
      `SELECT id, email, name, is_admin, payment_status, access_enabled, access_granted_at
         FROM users WHERE id = $1`,
      [sub]
    );
    req.user = rows[0] || null;
  } catch {
    req.user = null; // token invalido ou expirado
  }
  next();
}

export function exigeLogin(req, res, next) {
  if (!req.user) return res.status(401).json({ erro: 'Faca login para continuar.' });
  next();
}

export function exigeAcesso(req, res, next) {
  if (!req.user) return res.status(401).json({ erro: 'Faca login para continuar.' });
  if (!req.user.access_enabled) {
    return res.status(402).json({
      erro: 'Este conteudo exige o acesso completo.',
      precisaPagar: true,
    });
  }
  next();
}

export function exigeAdmin(req, res, next) {
  if (!req.user) return res.status(401).json({ erro: 'Faca login para continuar.' });
  if (!req.user.is_admin) return res.status(403).json({ erro: 'Acesso restrito.' });
  next();
}
