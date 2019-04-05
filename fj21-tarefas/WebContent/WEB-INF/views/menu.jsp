<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="resources/css/estilo.css" rel="stylesheet">
<title>Menu</title>
</head>
<body>
<section class="newsletter">
<div class="container">
<div class="row">
<div class="col-sm-12">
	<div class="content">
		<div class="fadeIn first">
			<img src="https://www.transformaemacao.com.br/wp-content/uploads/2019/01/title-agenda.png" id="icon" alt="User Icon" />
		</div>
		<div class="input-group">
			<div class="row"><p>Bem vindo, ${ usuarioLogado }</p></div>
			<div class="row"><p>
				<a href="listaTarefas" role="button" class="btn btn-primary">TAREFAS</a>
			</p></div>
			<div class="row"><a href="efetuaLogout" role="button" class="btn btn-primary">Logout</a></div>
		</div>
	</div>
</div>
</div>
</div>
</section>
</body>
</html>