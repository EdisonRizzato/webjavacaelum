<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<td>${ tarefa.id }</td>
	<td>${ tarefa.descricao }</td>
	<td>Finalizada</td>
	<td><fmt:formatDate value="${ tarefa.dataFinalizacao.time }" pattern="dd/MM/yyyy" /></td>
	<td><a class="btn btn-primary" href="removeTarefa?id=${ tarefa.id }" role="button">
		<i class="fas fa-times-circle"></i>
	</a></td>
	<td><a class="btn btn-primary" href="novaTarefa?id=${ tarefa.id }" role="button">
		<i class="fas fa-edit"></i>
	</a></td>
</body>
</html>