<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" 
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
	crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Olá</title>
</head>
<body>
	<div class="container">
<%--  		<h3>${ tarefa.id == null ? 'Adicionar tarefa' : 'Alterar tarefa id: ' }${ tarefa.id == null ? '' : ${ tarefa.id }</h3> --%>
		<form:errors path="tarefa.descricao" />
		<form action="adicionaTarefa" method="post" class="col-6">
			<input type="hidden" name="id" value="${ tarefa.id }">
			
			<div class="form-group row">
				<label for="descricao" class="col-3 col-form-label">Descrição</label>
				<textarea class="form-control col-9" rows="5" cols="100" 
					name="descricao" id="descricao">${ tarefa.descricao }</textarea>
			</div>
			
			<div class="form-group row">
				<label for="finalizado" class="col-3 col-form-label">Finalizado?</label>
				<input class="form-control col-9" type="checkbox" name="finalizado" id="finalizado"
					${ tarefa.finalizado? 'checked' : '' } />
			</div>
			
			<div class="form-group row">
				<label for="dataFinalizacao" class="col-3 col-form-label">Data de finalização</label>
				<input class="form-control col-9" type="text" name="dataFinalizacao" id="dataFinalizacao"
					value="<fmt:formatDate value='${ tarefa.dataFinalizacao.time }' pattern='dd/MM/yyyy'/>" />
			</div>
			
			<div class="text-right form-group row">
				<input type="submit" value="${ tarefa.id == null ? 'Adicionar' : 'Alterar' }" class="btn btn-primary">
			</div>
		</form>
	</div>
</body>
</html>