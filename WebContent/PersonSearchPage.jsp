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
			<div data-role="page" id="PersonSearch">
				<%@include file="Header.jsp"%>
				<div data-role="main" class="ui-content">
					<%@include file="Menu.jsp"%>
					<!-- PAGE 1 -->
					<div id="PersonSearch_Form">
						<input type="text" name="search" id="search" placeholder="">
						<a class="ui-btn ui-icon-search ui-btn-icon-right" onclick="$('#PersonSearch_Result').toggle('slow');">Buscar</a>
					</div>
					
					<div id="PersonSearch_Result" style="display: none">
						<a href="PersonEditPage.jsp" id="person5" class="ui-btn" data-transition="fade" style="width: 340px;">Antonio Soncini</a>
						<a href="PersonEditPage.jsp" id="person1" class="ui-btn" data-transition="fade" style="width: 340px;">Augusto Soncini</a>
						<a href="PersonEditPage.jsp" id="person2" class="ui-btn" data-transition="fade" style="width: 340px;">Ignacio Soncini</a>
						<a href="PersonEditPage.jsp" id="person2" class="ui-btn" data-transition="fade" style="width: 340px;">Inés Soncini</a>
						<a href="PersonEditPage.jsp" id="person3" class="ui-btn" data-transition="fade" style="width: 340px;">Leandro Soncini</a>
						<a href="PersonEditPage.jsp" id="person3" class="ui-btn" data-transition="fade" style="width: 340px;">Manuel Soncini</a>
						<a href="PersonEditPage.jsp" id="person4" class="ui-btn" data-transition="fade" style="width: 340px;">Roberto Soncini</a>
						<a href="PersonEditPage.jsp" id="person5" class="ui-btn" data-transition="fade" style="width: 340px;">Valentino Soncini</a>
					</div>

				</div>
				<%@include file="Footer.jsp"%>
			</div>	
		</form>
	</body>
</html>
