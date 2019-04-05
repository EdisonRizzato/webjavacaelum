<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="resources/css/estilo.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>

<body>
	<div class="wrapper fadeInDown">
	  <div id="formContent">
	    <!-- Tabs Titles -->
	
	    <!-- Icon -->
	    <div class="fadeIn first">
	      <img src="https://www.transformaemacao.com.br/wp-content/uploads/2019/01/title-agenda.png" id="icon" alt="User Icon" />
	    </div>
	
	    <!-- Login Form -->
	    <form action="efetuaLogin" method="post">
	      <input type="text" id="login" class="fadeIn second" name="login" placeholder="login">
	      <input type="password" id="password" class="fadeIn third" name="senha" placeholder="password">
	      <input type="submit" class="fadeIn fourth" value="Log In">
	    </form>
	
	    <!-- Remind Passowrd -->
	    <div id="formFooter">
	      <a class="underlineHover" href="#">Esqueceu a senha?</a>
	    </div>
	
	  </div>
	</div>
</body>
</html>