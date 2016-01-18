<%@page import="ar.com.WareTech.DrTech.middleware.entities.User"%>
<%@page import="ar.com.WareTech.DrTech.frontend.web.WebUtils"%>
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
	</head>
	<body>
		<%@include file="PersonCreatePage1.jsp"%>
		<%@include file="PersonCreatePage2.jsp"%>
		<%@include file="PersonCreatePage3.jsp"%>
		<%@include file="PersonCreatePage4.jsp"%>
	</body>
</html>
