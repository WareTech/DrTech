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
					<div id="PersonCreate2_Form">
						<label for="birthdate">Fecha de Consulta:</label>
						<input type="date" name="date" id="date">
						<input type="text" name="motivation" id=""motivation"" placeholder="Motivo">
						<textarea name="description" id="description" placeholder="Descripción"></textarea>
						<textarea name="exams" id="exams" placeholder="Estudios solicitados"></textarea>
						<select name="diagnostic" id="diagnostic" onchange="$('#new').toggle('slow');">
						   <option value="-1">[Diagnóstico]</option>
						   <option value="0">En estudio</option>
						   <option value="1">Nuevo...</option>
						   <option value="2">Desgarro</option>
						   <option value="3">Esguince</option>
						   <option value="4">Fractura</option>
						</select>
						<textarea name="new" id="new" placeholder="Nuevo diagnóstico..." style="display: none"></textarea>
					</div>
					
					<div data-role="controlgroup" data-type="horizontal">
						<a id="Accept" class="ui-btn" data-transition="fade" style="width: 340px;">Guardar</a>
					</div>
				</div>
				<%@include file="Footer.jsp"%>
			</div>	
		</form>
	</body>
</html>
