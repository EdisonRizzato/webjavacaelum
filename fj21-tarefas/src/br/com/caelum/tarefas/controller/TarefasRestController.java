package br.com.caelum.tarefas.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.caelum.tarefas.dao.TarefaDao;
import br.com.caelum.tarefas.modelo.Tarefa;

@Transactional
@RequestMapping("/rest")
@Controller
public class TarefasRestController {

		@Qualifier("jpaTarefaDao")
		@Autowired
		private TarefaDao dao;
		
		@ResponseBody
		@RequestMapping(value="/tarefas", method=RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
		private List<Tarefa> lista(){
			List<Tarefa> tarefas = dao.lista();
			return tarefas;
		}
		
		@ResponseBody
		@RequestMapping(value="/tarefas", method=RequestMethod.POST, consumes=MediaType.APPLICATION_JSON_VALUE)
		private Tarefa lista(@RequestBody Tarefa tarefa){
			dao.adiciona(tarefa);
			return dao.buscaPorId(tarefa.getId());
		}
}
