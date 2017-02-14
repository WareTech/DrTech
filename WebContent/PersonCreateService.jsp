<%@page import="ar.com.WareTech.DrTech.backend.Database"%>
<%@page import="ar.com.WareTech.DrTech.middleware.entities.Person"%>
<%
System.out.println("PersonCreateService.jsp");

String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String activity = request.getParameter("activity");
String dni = request.getParameter("dni");
String birthdate = request.getParameter("birthdate");
String gender = request.getParameter("gender");
String medicalCoverage = request.getParameter("medicalCoverage");
String medicalCoverageNumber = request.getParameter("medicalCoverageNumber");
String email = request.getParameter("email");

Person person = new Person();
person.setFirstname(firstname);
person.setLastname(lastname);
person.setActivity(activity);
person.setDni(dni);
person.setBirthdate(birthdate);
person.setGender(gender);
person.setMedicalCoverage(medicalCoverage);
person.setMedicalCoverageNumber(medicalCoverageNumber);
person.setEmail(email);
Database.getCurrentSession().save(person);

response.setStatus(200);
%>

