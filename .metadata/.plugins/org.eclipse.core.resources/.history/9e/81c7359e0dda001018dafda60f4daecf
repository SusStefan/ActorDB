<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.lang.*,java.math.*,db.*,java.sql.*, java.io.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Tabela Teatre Modificare</title>
 <link href="table.css" rel="stylesheet" type="text/css" media="screen" />
 </head>
 <jsp:useBean id="jb" scope="session" class="db.JavaBean" />
 <jsp:setProperty name="jb" property="*" />
 <body>
 <%
 jb.connect();
 int aux = java.lang.Integer.parseInt(request.getParameter("idteatru"));
 String Nume = request.getParameter("Nume");
 String Descriere = request.getParameter("Descriere");
 String Adresa = request.getParameter("Adresa");
 String idoras = request.getParameter("idoras");
 String[] valori = {Nume, Descriere,Adresa,idoras};
 String[] campuri = {"nume", "descriere","adresa","idoras"};
 jb.modificaTabela("teatre", "idteatru", aux, campuri, valori);
 jb.disconnect();
 response.sendRedirect("tabela_teatre.jsp");
 %>
 </body>
</html>