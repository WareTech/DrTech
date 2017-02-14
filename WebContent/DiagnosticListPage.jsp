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
					<div class="ui-grid-a">
						<div class="ui-block-a"><button type="button" data-theme="c">01/01/2017</button></div>
						<div class="ui-block-b"><a href="InterviewCreatePage.jsp" class="ui-btn ui-icon-plus ui-btn-icon-right">Esguince</a></div>	   
						<div class="ui-block-a"><button type="button" data-theme="c">08/01/2017</button></div>
						<div class="ui-block-b"><button type="button" data-theme="c">Fractura</button></div>	   
						<div class="ui-block-a"><button type="button" data-theme="c">15/01/2017</button></div>
						<div class="ui-block-b"><button type="button" data-theme="c">Muerte</button></div>	   
					</div>
				</div>
				<%@include file="Footer.jsp"%>
			</div>	
		</form>
	</body>
</html>
