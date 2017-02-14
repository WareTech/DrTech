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
		<form>
			<div data-role="page" id="PersonCreate">
				<%@include file="Header.jsp"%>
				<div data-role="main" class="ui-content">
					<%@include file="Menu.jsp"%>
					<!-- PAGE 1 -->
					<div id="PersonCreate1_Form">
						<select name="activity" id="activity" disabled>
						   <option value="-1">[Actividad]</option>
						   <option value="0">ninguna</option>
						   <option value="1" selected>Fútbol</option>
						   <option value="2">Basket</option>
						   <option value="3">Volley</option>
						   <option value="4">Futsal</option>
						</select>
						<input type="text" name="firstname" id="firstname" placeholder="Nombre(s)" value="Ignacio" disabled>
						<input type="text" name="lastname" id="lastname" placeholder="Apellido(s)" value="Soncini" disabled>
						<input type="text" name="dni" id="dni" placeholder="DNI" value="29764826" disabled>
						<label for="birthdate">Fecha de Nacimiento:</label>
						<input type="date" name="birthdate" id="birthdate" value="26/11/1982" disabled>
						<label for="gender">Sexo:</label>
						<fieldset id="gender" data-role="controlgroup" data-type="horizontal" disabled>
							<label>Sexo</label>
					        <label for="male">Masculino</label>
							<input type="radio" name="gender" id="male" value="M" checked disabled>
							<label for="female">Femenino</label>
							<input type="radio" name="gender" id="female" value="F" disabled>	
						</fieldset>
						<select name="medicalcoverage" id="medicalcoverage" disabled>
						   <option value="-1">[Obra Social]</option>
						   <option value="0">ninguna</option>
						   <option value="1" selected>OSDE</option>
						   <option value="2">IOMA</option>
						   <option value="3">OSPE</option>
						   <option value="4">CASA</option>
						</select>
						<input type="text" name="affiliatenumber" id="affiliatenumber" placeholder="N&uacute;mero de Afiliado" disabled>
						<textarea name="address" id="address" placeholder="Domicilio" disabled>Calle 40 #765 6to.A</textarea>
						<input type="text" name="phone" id="phone" placeholder="Tel&eacute;fono" value="2215551891" disabled>
						<input type="text" name="email" id="email" placeholder="Email" value="ignaciosoncini@hotmail.com" disabled>
					</div>
					
					<div data-role="controlgroup" data-type="horizontal">
						<a id="Accept" class="ui-btn" style="width: 340px;">Editar</a>
						<a href="DiagnosticListPage.jsp" class="ui-btn" >Historial de Consultas</a>
						<a href="PersonCreatePage2.jsp" class="ui-btn" >Crear ficha técnica</a>
						<a href="PersonCreatePage2.jsp" class="ui-btn" >Ver ficha técnica</a>
					</div>
				</div>
				<%@include file="Footer.jsp"%>
			</div>	
		</form>
	</body>
</html>
