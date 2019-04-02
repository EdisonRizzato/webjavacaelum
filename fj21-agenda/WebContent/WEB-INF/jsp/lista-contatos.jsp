<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="./css/tarefas.css">
<title>Lista de contatos</title>
</head>
<body>
	<div class="container">
		<c:import url="../../cabecalho.jsp" />
		
		<table class="table">
			<tr class="thead-dark">
				<th scope="col">Nome</th>
				<th scope="col">E-mail</th>
				<th scope="col">Endereço</th>
				<th scope="col">Data de Nascimento</th>
				<th scope="col">Remover contato</th>
			</tr>
			<c:forEach var="contato" items="${ contatos }" varStatus="id">
				<!-- tr scope="row" bgcolor="#${ id.count % 2 == 0 ? 'dddddd' : '666666'}"-->
				<tr scope="row">
					<td>${ contato.nome }</td>
					<td>
						<c:choose>
							<c:when test="${ not empty contato.email }">
								<a href="mailto:${ contato.email }">${ contato.email }</a>
							</c:when>
							<c:otherwise>
								E-mail não informado
							</c:otherwise>
						</c:choose>
					</td>
					<td>${ contato.endereco }</td>
					<td>
						<fmt:formatDate value="${ contato.dataNascimento.time }"
							pattern="dd.MM.yy" />
					</td>
					
					<td>
						<a class="btn btn-primary" href="mvc?logica=AlteraContatoLogic&id=${ contato.id }" role="button">Remover</a>
					</td>
					
					<td>
						<a class="btn btn-primary" href="mvc?logica=RemoveContatoLogic&id=${ contato.id }" role="button">Remover</a>
					</td>
						
				</tr>
			</c:forEach>
		</table>
		
		<c:import url="../../rodape.jsp" />
	</div>
</body>
</html>