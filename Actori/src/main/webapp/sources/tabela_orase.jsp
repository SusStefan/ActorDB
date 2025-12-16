<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.lang.*,java.math.*,db.*,java.sql.*, java.io.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Tabela Orase</title>
 <link rel="stylesheet" href="persona.css">
 </head>
 <jsp:useBean id="jb" scope="session" class="db.JavaBean" />
 <jsp:setProperty name="jb" property="*" />
 <body>
 <div id="butholder2">
 <h1 align="center" id="titlu"> City Manager:</h1>
 </div>

 <form action="sterge_orase.jsp" method="post">
 <table border="1" align="center">
 <tr>
 <td><b>Mark:</b></td>
 <td><b>CityID:</b></td>
 <td><b>City name:</b></td>
 <td><b>Country:</b></td>
 <td><b>Edit:</b></td>
 </tr>
 <%
 jb.connect();
 ResultSet rs = jb.vedeTabela("orase");
 long x;
 while (rs.next()) {
 x = rs.getInt("idoras");
 %>
 <tr>
 <td><input type="checkbox" name="primarykey" value="<%= x%>" /></td><td><%= x%></td>
 <td><%= rs.getString("nume")%></td>
 <td><%= rs.getString("tara")%></td>
 <td><a href="oras_m1.jsp?idoras=<%= x %>" class="action-button"><b>X</b></a></td>
 <%
 }
 %>
 </tr>
 </table>
  <div id="butholder2">
 <a href="adauga_oras.jsp">
<div class="cssbutton"><b class="sway-text"><strong>Add City</strong></b></div>
</a> 
<p align="center">
    <button type="submit" class="cssbutton" id="butactori1">
        <b class="sway-text"><strong>Delete City</strong></b>
    </button>
</p>
<a href="../index.html">
<div class="cssbutton"><b class="sway-text"><strong>Back</strong></b></div>
</a>
 </div>
 
 </form>
 <%
 rs.close();
 jb.disconnect();
 %>
 <style>
body{
 background-image: url('assets/bg.jpg');
 background-size:cover;
 background-position: bottom bottom;
 background-repeat:no-repeat;
 }
 </style>
 </body>
</html>