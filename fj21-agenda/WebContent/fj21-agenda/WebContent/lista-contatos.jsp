<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de contatos</title>
</head>
<body>
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"/>
	
	<table border="0">
		<tr>
			<th>Nome</th>
			<th>E-mail</th>
			<th>Endereço</th>
			<th>Data de Nascimento</th>
		</tr>
		<c:forEach var="contato" items="${ dao.lista }" varStatus="id">
			<tr bgcolor="#${ id.count % 2 == 0 ? 'f7ffb7' : 'ffffff' }">
				<td>${ contato.nome }</td>
				<td>${ contato.email }</td>
				<td>${ contato.endereco }</td>
				<td>${ contato.dataNascimento.time }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>