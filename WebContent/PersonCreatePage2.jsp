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
					<!-- PAGE 2 -->
					<div id="PersonCreate2_Form">
<%
List<Illness> illnessSickList = Database.getCurrentSession().createCriteria(Illness.class)
	.add(Expression.eq("type", Enums.ILLNESS_SICK))
	.list();
%>
<%
for(Illness illness : illnessSickList)
{
%>		
						<span><%= illness.getValue() %></span>
								<fieldset data-role="controlgroup" data-type="horizontal" style="text-align: center;">
						       <label for="illness_<%= illness.getId() %>_true" style="width: 150px; text-align: center;">S&iacute;</label>
							<input type="radio" name="illness_<%= illness.getId() %>" id="illness_<%= illness.getId() %>_true" value="true">
							<label for="illness_<%= illness.getId() %>_false" style="width: 150px; text-align: center;">No</label>
							<input type="radio" name="illness_<%= illness.getId() %>" id="illness_<%= illness.getId() %>_false" value="true">	
						</fieldset>
<%
}
%>
					</div>

					<!-- PAGE 3 -->
					<div id="PersonCreate3_Form">
<%
List<Illness> illnessHeritageList = Database.getCurrentSession().createCriteria(Illness.class)
	.add(Expression.eq("type", Enums.ILLNESS_HERITAGE))
	.list();
for(Illness illness : illnessHeritageList)
{
%>		
						<span><%= illness.getValue() %></span>
				  		<fieldset data-role="controlgroup" data-type="horizontal" style="text-align: center;">
					        <label for="illness_<%= illness.getId() %>_true" style="width: 150px; text-align: center;">S&iacute;</label>
							<input type="radio" name="illness_<%= illness.getId() %>" id="illness_<%= illness.getId() %>_true" value="true">
							<label for="illness_<%= illness.getId() %>_false" style="width: 150px; text-align: center;">No</label>
							<input type="radio" name="illness_<%= illness.getId() %>" id="illness_<%= illness.getId() %>_false" value="true">	
						</fieldset>
<%
}
%>
					</div>
					
					<!-- PAGE 4 -->
					<div id="PersonCreate4_Form">
<%
List<Illness> illnessOthersList = Database.getCurrentSession().createCriteria(Illness.class)
	.add(Expression.eq("type", Enums.ILLNESS_OTHERS))
	.list();
for(Illness illness : illnessOthersList)
{
%>		
		<span><%= illness.getValue() %></span>
		<fieldset data-role="controlgroup" data-type="horizontal" style="text-align: center;">
	        <label for="illness_<%= illness.getId() %>_true" style="width: 150px; text-align: center;">S&iacute;</label>
			<input type="radio" name="illness_<%= illness.getId() %>" id="illness_<%= illness.getId() %>_true" value="true">
			<label for="illness_<%= illness.getId() %>_false" style="width: 150px; text-align: center;">No</label>
			<input type="radio" name="illness_<%= illness.getId() %>" id="illness_<%= illness.getId() %>_false" value="true">	
		</fieldset>
<%
}
%>
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
