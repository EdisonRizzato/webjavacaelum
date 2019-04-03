<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>Lista de tarefas</title>
</head>
<body class="container">
	<a href="novaTarefa">Criar nova tarefa</a>
	
	<br /><br />
	
	<table class="table table-striped table-sm">
		<caption>Lista de tarefas</caption>
		<thead class="thead-dark"><tr>
			<th>Id</th>
			<th>Descrição</th>
			<th>Finalizado?</th>
			<th>Data de finalização</th>
			<th>Remove</th>
		</tr></thead>
		<c:forEach var="tarefa" items="${ tarefas }">
			<tr>
				<td>${ tarefa.id }</td>
				<td>${ tarefa.descricao }</td>
				<c:if test="${ tarefa.finalizado }">
					<td>Finalizado</td>
				</c:if>
				<c:if test="${ tarefa.finalizado eq false }">
					<td>Não finalizado</td>
				</c:if>
				<td>
					<fmt:formatDate 
						value="${ tarefa.dataFinalizacao.time }"
						pattern="dd.MM.yy" />
				</td>
				<td><a class="btn btn-primary" href="removeTarefa?id=${ tarefa.id }" role="button">
					<i class="fas fa-times-circle"></i>
				</a>
			</tr>
		</c:forEach>			
	</table>
</body>
</html>