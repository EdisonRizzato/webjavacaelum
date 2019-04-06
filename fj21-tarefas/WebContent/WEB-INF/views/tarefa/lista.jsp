<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" 
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
	crossorigin="anonymous" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" 
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" 
	crossorigin="anonymous">
<link href="resources/css/lista.css" rel="stylesheet">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<title>Lista de tarefas</title>
</head>
<body class="container">
	<nav class="navbar navbar-fixed-left navbar-minimal animate" role="navigation">
		<div class="navbar-toggler animate">
			<span class="menu-icon"></span>
		</div>
		<ul class="navbar-menu animate">
			<li>
				<a href="novaTarefa" class="animate">
					<span class="desc animate"> Criar Tarefa </span>
					<span class=""><i class="fas fa-calendar-plus"></i></span>
				</a>
			</li>
			<li>
				<a href="efetuaLogout" class="animate">
					<span class="desc animate"> Logout </span>
					<span class=""><i class="fas fa-sign-out-alt"></i></span>
				</a>
			</li>
		</ul>
	</nav>
	<table class="table table-striped table-sm">
		<caption>Lista de tarefas</caption>
		<thead class="thead-dark"><tr>
			<th>Id</th>
			<th>Descrição</th>
			<th>Finalizado?</th>
			<th>Data de finalização</th>
			<th>Remove</th>
			<th>Edita</th>
		</tr></thead>
		<c:forEach var="tarefa" items="${ tarefas }">
			<tr id="tarefa_${ tarefa.id }">
				<td>${ tarefa.id }</td>
				<td>${ tarefa.descricao }</td>
				<c:if test="${ tarefa.finalizado }">
					<td>Finalizado</td>
				</c:if>
				<c:if test="${ tarefa.finalizado eq false }">
					<td><a href="#" onClick="finalizarAgora(${ tarefa.id })">Não finalizado</a></td>
				</c:if>
				<td>
					<fmt:formatDate 
						value="${ tarefa.dataFinalizacao.time }"
						pattern="dd/MM/yyyy" />
				</td>
				<td><a class="btn btn-primary" href="removeTarefa?id=${ tarefa.id }" role="button">
					<i class="fas fa-times-circle"></i>
				</a></td>
				<td><a class="btn btn-primary" href="novaTarefa?id=${ tarefa.id }" role="button">
					<i class="fas fa-edit"></i>
				</a></td>
			</tr>
		</c:forEach>			
	</table>
	<script type="text/javascript">
		function finalizarAgora(id) {
			
			
			$.post('finalizaTarefa',
					{'id':id}, 
					function(resposta){
						$('#tarefa_'+id).html(resposta);
					});
		}
		
		$(function () {
		    /* START OF DEMO JS - NOT NEEDED */
		    if (window.location == window.parent.location) {
		        $('#fullscreen').html('<span class="glyphicon glyphicon-resize-small"></span>');
		        $('#fullscreen').attr('href', 'http://bootsnipp.com/mouse0270/snippets/PbDb5');
		        $('#fullscreen').attr('title', 'Back To Bootsnipp');
		    }    
		    $('#fullscreen').on('click', function(event) {
		        event.preventDefault();
		        window.parent.location =  $('#fullscreen').attr('href');
		    });
		    $('#fullscreen').tooltip();
		    /* END DEMO OF JS */
		    
		    $('.navbar-toggler').on('click', function(event) {
				event.preventDefault();
				$(this).closest('.navbar-minimal').toggleClass('open');
			})
		});
	</script>
</body>
</html>