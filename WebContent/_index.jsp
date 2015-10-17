<%@page import="ar.com.WareTech.DrTech.middleware.entities.Access"%>
<%@page import="ar.com.WareTech.DrTech.middleware.entities.Configuration"%>
<%@page import="ar.com.WareTech.DrTech.middleware.entities.User"%>
<%@page import="ar.com.WareTech.DrTech.middleware.entities.UserAccess"%>
<%@page import="ar.com.WareTech.DrTech.backend.Database"%>
<%
Database.getCurrentSession().createCriteria(Access.class).list();
Database.getCurrentSession().createCriteria(Configuration.class).list();
Database.getCurrentSession().createCriteria(User.class).list();
Database.getCurrentSession().createCriteria(UserAccess.class).list();

out.print("Hello World!!!");
%>
