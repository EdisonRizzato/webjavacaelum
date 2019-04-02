<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container">
	<!-- img src="<c:url value="./img/caelum.png"/>" /-->
	<c:url value="./img/caelum.png" var="logoTopo"/>
	<img src="${ logoTopo }" class="img-fluid topo"/>
	<h2>Agenda de Contatos</h2>
	<hr />
</div>