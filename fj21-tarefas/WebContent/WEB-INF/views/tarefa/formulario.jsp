<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" 
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
	crossorigin="anonymous">
<title>Olá</title>
</head>
<body>
	<div class="container">
		<h3>Adicionar tarefas</h3>
		<form:errors path="tarefa.descricao" />
		<form action="adicionaTarefa" method="post" class="col-6">
			<div class="form-group row">
				<label for="descricao" class="col-3 col-form-label">Descrição</label>
				<textarea class="form-control col-9" rows="5" cols="100" name="descricao" id="descricao"></textarea>
			</div>
			<div class="text-right col-12">
				<input type="submit" value="Adicionar" class="btn btn-primary">
			</div>
		</form>
	</div>
</body>
</html>