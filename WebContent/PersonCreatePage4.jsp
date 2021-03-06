<%@page import="org.hibernate.criterion.Expression"%>
<%@page import="ar.com.WareTech.DrTech.middleware.entities.Enums"%>
<%@page import="ar.com.WareTech.DrTech.backend.Database"%>
<%@page import="ar.com.WareTech.DrTech.middleware.entities.Illness"%>
<%@page import="java.util.List"%>
<%
List<Illness> illnessOthersList = Database.getCurrentSession().createCriteria(Illness.class)
	.add(Expression.eq("type", Enums.ILLNESS_OTHERS))
	.list();
%>
<!-- PERSON CREATE PAGE #4 -->
<div data-role="page" id="PersonCreate4">
	<%@include file="Header.jsp"%>
	<div data-role="main" class="ui-content">
<%
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
		<div data-role="controlgroup" data-type="horizontal">
			<a href="#PersonCreate3" class="ui-btn" data-transition="fade">Anterior</a>
			<a href="#PersonCreate5" class="ui-btn" data-transition="fade">Siguiente</a>
		</div>
	</div>
	<%@include file="Footer.jsp"%>
</div>	
