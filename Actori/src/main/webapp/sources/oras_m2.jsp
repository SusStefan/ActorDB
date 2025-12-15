<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.lang.*,java.math.*,db.*,java.sql.*, java.io.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Tabela Orase Modificare</title>
 <link href="table.css" rel="stylesheet" type="text/css" media="screen" />
 </head>
 <jsp:useBean id="jb" scope="session" class="db.JavaBean" />
 <jsp:setProperty name="jb" property="*" />
 <body>
 <%
 jb.connect();
 int aux = java.lang.Integer.parseInt(request.getParameter("idoras"));
 String Nume = request.getParameter("Nume");
 String Tara = request.getParameter("Tara");
 String[] valori = {Nume, Tara};
 String[] campuri = {"nume", "tara"};
 jb.modificaTabela("orase", "idoras", aux, campuri, valori);
 jb.disconnect();
 response.sendRedirect("tabela_orase.jsp");
 %>
 </body>
</html>