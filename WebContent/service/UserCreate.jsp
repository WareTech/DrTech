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

User user = (User) Database.getCurrentSession().createCriteria(User.class)
		.add(Expression.eq("username", username))
		.uniqueResult();
if (user != null)
{
	_errors.put("'Usuario' ya existente");	
}

String personId = request.getParameter("personId");
if (personId == null || "".equals(personId))
{
	_errors.put("Persona es requerido");	
}

Person person = (Person) Database.getCurrentSession().get(Person.class, new Long(personId));
if (person == null)
{
	_errors.put("Persona no existente");	
}

if (_errors.length() == 0)
{
	user = new User();
	user.setUsername(username);
	user.setPassword(new sun.misc.BASE64Encoder().encode(password.getBytes()));
	user.setPerson(person);
	
	Database.getCurrentSession().save(user);
	_response.put("user", user.toJSON());
	_response.put("status", 1);
}

out.print(_response.toString());
%>