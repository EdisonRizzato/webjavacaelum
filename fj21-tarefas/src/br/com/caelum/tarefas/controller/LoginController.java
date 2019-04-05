package br.com.caelum.tarefas.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.caelum.tarefas.dao.JdbcUsuarioDao;
import br.com.caelum.tarefas.modelo.Usuario;

@Controller
public class LoginController {
	JdbcUsuarioDao dao;
	
	public LoginController(JdbcUsuarioDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping("loginForm")
	public String loginForm() {
		return "auth/formulario-login";
	}
	
	@RequestMapping("efetuaLogin")
	public String efetuaLogin(Usuario usuario, HttpSession session) {
		if(dao.existeUsuario(usuario)) {
			session.setAttribute("usuarioLogado", usuario.getLogin());
			return "redirect:listaTarefas";
		}
		return "redirect:loginForm";
	}
	
	@RequestMapping("efetuaLogout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:loginForm";
	}
	
}
