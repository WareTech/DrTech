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

User user = (User) Database.getCurrentSession().get(
		User.class,
		new Long(id)
		);
if (user == null)
{
	_errors.put("Usuario no encontrada");	
}

if (_errors.length() == 0)
{
	_response.put("person", user.toJSON());
	_response.put("status", 1);
}

out.print(_response.toString());
%>