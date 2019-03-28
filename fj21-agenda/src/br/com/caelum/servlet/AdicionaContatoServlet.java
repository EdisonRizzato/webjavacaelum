package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

@WebServlet("/adicionaContato")
public class AdicionaContatoServlet extends HttpServlet{
	
	private static final 	SimpleDateFormat 	dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	private 				ContatoDao			daoContato = new ContatoDao(); 
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out 			= resp.getWriter();
		Calendar 	dataNascimento 	= Calendar.getInstance();
		Contato 	contato 		= new Contato();
		
		String fem 	= "fem";
		String masc	= "masc";
		String outro= "outro";
		
		String nome = req.getParameter("nome");
		String endereco = req.getParameter("endereco");
		String email = req.getParameter("email");
		String dataForm = req.getParameter("dataNascimento");
		String sexo = req.getParameter("sexo");
		
		//conversão da data
		try {
			Date date = dateFormat.parse(dataForm);
			dataNascimento.setTime(date);
		} catch (ParseException e) {
			out.println("Erro de conversão da data");
			return;
		}
		
		//objeto contato
		contato.setNome(nome);
		contato.setEndereco(endereco);
		contato.setEmail(email);
		contato.setDataNascimento(dataNascimento);
		
		daoContato.adiciona(contato);
		
		if(sexo.contentEquals(fem)) {
			out.println("Contato " + contato.getNome() + " cadastrada com sucesso!");
		} else if (sexo.contentEquals(masc)) {
			out.println("Contato " + contato.getNome() + " cadastrado com sucesso!");
		} else {
			out.println("Contato " + contato.getNome() + " cadastradx com sucesso!");
		}
	}
}
