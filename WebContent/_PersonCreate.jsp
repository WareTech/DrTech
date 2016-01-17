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

String firstname = request.getParameter("firstname");
if (firstname == null || "".equals(firstname))
{
	_errors.put("'Nombre' es requerido");	
}

String lastname = request.getParameter("lastname");
if (lastname == null || "".equals(lastname))
{
	_errors.put("'Apellido' es requerido");	
}

String email = request.getParameter("email");
if (email == null || "".equals(email))
{
	_errors.put("'EMail' es requerido");	
}

String dni = request.getParameter("dni");
if (dni == null || "".equals(dni))
{
	_errors.put("'DNI' es requerido");	
}

Person person = (Person) Database.getCurrentSession().createCriteria(
		Person.class
		)
		.add(Expression.eq("dni", dni))
		.uniqueResult();
if (person != null)
{
	_errors.put("'DNI' ya existente");	
}

String birthdate = request.getParameter("birthdate");
if (birthdate == null || "".equals(dni))
{
	_errors.put("'Fecha de Nacimiento' es requerido");	
}

if (_errors.length() == 0)
{
	person = new Person();
	person.setFirstname(firstname);
	person.setLastname(lastname);
	person.setEmail(email);
	person.setDni(dni);
	person.setBirthdate(birthdate);
	person.setGender(Enums.GENDER_MASCULINO);
	
	Database.getCurrentSession().save(person);
	_response.put("person", person);
	_response.put("status", 1);
}

out.print(_response.toString());
%>