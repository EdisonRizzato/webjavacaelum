package br.com.caelum.mvc.logica;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class ListaContatosLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		Connection connection = (Connection) req.getAttribute("conexao");
		Integer id = Integer.parseInt(req.getParameter("id"));
		Contato contato = new ContatoDao(connection).Filtra(id);
		req.setAttribute("contatos", contato);
		
		return "/WEB-INF/jsp/lista-contatos.jsp";
	}
}
