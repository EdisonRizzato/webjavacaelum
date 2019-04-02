<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="input" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" 
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
	crossorigin="anonymous">
<link href="css/jquery.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>

<title>Adicionar contato</title>
</head>
<body>
	<div class="container">
		<c:import url="cabecalho.jsp" />
		<div class="col-sm-5">
			<form action="adicionaContato" method="POST">
				<input:campoText label="Nome" id="nome" /><br />
				<input:campoText label="E-mail" id="email" /><br />
				<input:campoText label="Endereço" id="endereco" /><br />
				<input:campoData label="Data Nascimento" id="dataNascimento" /><br />
				<select name="sexo" class="form-control">
					<option value="fem">Feminino</option>
					<option value="masc">Masculino</option>
					<option value="outro">Outro</option>
				</select><br />
				<input type="submit" value="Gravar" />
			</form>
		</div>
		<c:import url="rodape.jsp" />
	</div>
</body>
</html>