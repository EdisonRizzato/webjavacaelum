package br.com.caelum.mvc.servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.mvc.logica.Logica;

@WebServlet("/mvc")
public class ControllerServlet extends HttpServlet {
	
	@Override
	protected void service (HttpServletRequest req, HttpServletResponse resp) {
		
		String parametro 	= req.getParameter("logica");
		String nomeDaClasse	= "br.com.caelum.mvc.logica." + parametro;
		
		Class classe;
		try {
			classe = Class.forName(nomeDaClasse);
		
			Logica logica = (Logica) classe.newInstance();
			String pagina = logica.executa(req, resp);
			
			req.getRequestDispatcher(pagina).forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
