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

String username = request.getParameter("username");
if (username == null || "".equals(username))
{
	_errors.put("'Usuario' es requerido");	
}

String password = request.getParameter("password");
if (password == null || "".equals(password))
{
	_errors.put("'Clave' es requerido");	
}

if (_errors.length() == 0)
{
	User user = (User) Database.getCurrentSession().createCriteria(
			User.class
			)
			.add(Expression.eq("username", username))
			.add(Expression.eq("password", (new sun.misc.BASE64Encoder()).encode(password.getBytes())))
			.uniqueResult();
	
	if (user != null)
	{
		WebUtils.setUser(session, user);
		_response.put("user", user.toJSON());
		_response.put("status", 1);
	}
	else
	{
		_errors.put("Login incorrecto");
	}
}

out.print(_response.toString());
%>