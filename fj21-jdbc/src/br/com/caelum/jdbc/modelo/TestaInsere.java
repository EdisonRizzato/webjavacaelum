package br.com.caelum.jdbc.modelo;

import java.util.Calendar;

import br.com.caelum.jdbc.dao.ContatoDao;

public class TestaInsere {
	public static void main(String[] args) {
		Contato contato = new Contato();
		contato.setNome("Teste2");
		contato.setEmail("teste2@caelum.com.br");
		contato.setEndereco("R. Vergueiro 3185 cj57");
		contato.setDataNascimento(Calendar.getInstance());
		
		ContatoDao dao = new ContatoDao();
		
		dao.adiciona(contato);
		
		System.out.println("Gravado!");
	}
}
