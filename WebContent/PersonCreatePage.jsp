<%@page import="ar.com.WareTech.DrTech.middleware.entities.User"%>
<%@page import="ar.com.WareTech.DrTech.frontend.web.WebUtils"%>
<%@page import="org.hibernate.criterion.Expression"%>
<%@page import="ar.com.WareTech.DrTech.middleware.entities.Enums"%>
<%@page import="ar.com.WareTech.DrTech.backend.Database"%>
<%@page import="ar.com.WareTech.DrTech.middleware.entities.Illness"%>
<%@page import="java.util.List"%>

<%
User user = WebUtils.getUser(session);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/mobile.css">
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
		<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
		<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
		<script src="scripts/PersonCreate.js"></script>
	</head>
	<body>
		<form id="PersonCreateForm">
			<div data-role="page" id="PersonCreate">
				<%@include file="Header.jsp"%>
				<div data-role="main" class="ui-content">
					<%@include file="Menu.jsp"%>
					<!-- PAGE 1 -->
					<div id="PersonCreate1_Form">
						<select name="activity" id="activity">
						   <option value="-1">[Actividad]</option>
						   <option value="0">ninguna</option>
						   <option value="1">F�tbol</option>
						   <option value="2">Basket</option>
						   <option value="3">Volley</option>
						   <option value="4">Futsal</option>
						</select>
						<input type="text" name="firstname" id="firstname" placeholder="Nombre(s)">
						<input type="text" name="lastname" id="lastname" placeholder="Apellido(s)">
						<input type="text" name="dni" id="dni" placeholder="DNI">
						<label for="birthdate">Fecha de Nacimiento:</label>
						<input type="date" name="birthdate" id="birthdate">
						<label for="gender">Sexo:</label>
						<fieldset id="gender" data-role="controlgroup" data-type="horizontal">
							<label>Sexo</label>
					        <label for="male">Masculino</label>
							<input type="radio" name="gender" id="male" value="M">
							<label for="female">Femenino</label>
							<input type="radio" name="gender" id="female" value="F">	
						</fieldset>
						<select name="medicalCoverage" id="medicalCoverage">
						   <option value="-1">[Obra Social]</option>
						   <option value="0">ninguna</option>
						   <option value="1">OSDE</option>
						   <option value="2">IOMA</option>
						   <option value="3">OSPE</option>
						   <option value="4">CASA</option>
						</select>
						<input type="text" name="medicalCoverageNumber" id="medicalCoverageNumber" placeholder="N&uacute;mero de Afiliado">
						<textarea name="address" id="address" placeholder="Domicilio"></textarea>
						<input type="text" name="phone" id="phone" placeholder="Tel&eacute;fono">
						<input type="text" name="email" id="email" placeholder="Email">
					</div>
					
					<div data-role="controlgroup" data-type="horizontal">
						<a id="Accept" class="ui-btn" onclick="doSubmit();">Guardar</a>
						<a href="PersonCreatePage2.jsp" class="ui-btn">Crear ficha t�cnica</a>
					</div>
				</div>
				<%@include file="Footer.jsp"%>
			</div>	
		</form>
	</body>
</html>
