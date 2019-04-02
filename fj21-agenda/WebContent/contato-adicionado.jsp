<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
	crossorigin="anonymous">
<title>${ param.nome } adicionado</title>
</head>
<body>
	<div class="container">
		<c:import url="cabecalho.jsp" />
		
		<c:choose>
			<c:when test="${ param.sexo == 'fem' }">
				Contato ${ param.nome } adicionada com sucesso!
			</c:when>
			<c:when test="${ param.sexo == 'masc' }">
				Contato ${ param.nome } adicionado com sucesso!
			</c:when>
			<c:otherwise>
				Contato ${ param.nome } adicionadx com sucesso!
			</c:otherwise>
		</c:choose>
		<br />
		<a class="btn btn-primary" href="./lista-contatos.jsp" role="button">Lista de Contatos</a>
				
		<c:import url="rodape.jsp" />
	</div>
</body>
</html>