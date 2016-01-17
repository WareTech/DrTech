<%@page import="ar.com.WareTech.DrTech.middleware.entities.Enums"%>
<%@page import="ar.com.WareTech.DrTech.middleware.entities.Person"%>
<%@page import="ar.com.WareTech.DrTech.frontend.web.WebUtils"%>
<%@page import="org.hibernate.criterion.Expression"%>
<%@page import="ar.com.WareTech.DrTech.backend.Database"%>
<%@page import="ar.com.WareTech.DrTech.middleware.entities.User"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%
JSONObject _response = new JSONObject();
_response.put("status", 0);

JSONArray _errors = new JSONArray();
_response.put("errors", _errors);

String id = request.getParameter("id");
if (id == null || "".equals(id))
{
	_errors.put("'Id' es requerido");	
}

Person person = (Person) Database.getCurrentSession().get(
		Person.class,
		new Long(id)
		);
if (person == null)
{
	_errors.put("Persona no encontrada");	
}

if (_errors.length() == 0)
{
	_response.put("user", person.toJSON());
	_response.put("status", 1);
}

out.print(_response.toString());
%>