<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.lang.*,java.math.*,db.*,java.sql.*, java.io.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Adauga Oras</title>
  <link rel="stylesheet" href="persona.css">
 </head>
 <jsp:useBean id="jb" scope="session" class="db.JavaBean" />
 <jsp:setProperty name="jb" property="*" />
 <body>
  <div id="butholder2">
  <h1 align="center" id="titlu">Adauga un oras:</h1>
</div>
 <%
 String Nume = request.getParameter("nume");
 String Tara = request.getParameter("tara");
 if (Nume != null) {
 jb.connect();
 jb.adaugaOras(Nume, Tara);
 jb.disconnect();
 response.sendRedirect("tabela_orase.jsp");
 %>
 <p>Data: Introdusa cu Succes</p><%
 } else {
 %>
 <h1> Suntem in tabela Oras.</h1>
 <form action="adauga_oras.jsp" method="post">
 <table>
 <tr>
 <td align="right">Nume Oras:</td>
 <td> <input type="text" name="nume" size="40" /></td>
 </tr>
 <tr>
 <td align="right">Nume Tara:</td>
 <td> <input type="text" name="tara" size="30" /></td>
 </tr>
 </table>
   <div id="butholder2">

 <a href="tabela_orase.jsp">
<div class="cssbutton "id="butactori1"><b class="sway-text"><strong>Inapoi</strong></b></div>
</a> 
<p align="center">
    <button type="submit" class="cssbutton" id="butactori1">
        <b class="sway-text"><strong>Adauga Orasul</strong></b>
    </button>
</p>
<a href="index.html">
<div class="cssbutton "id="butactori1"><b class="sway-text"><strong>Acasa</strong></b></div>
</a> 
 </div>
 </form>
 <%
 }
 %>
  <style>
body{
 background-image: url('assets/take_your_time.png');
 background-size:cover;
 background-position: center center;
 }
 #butactori1
 {
 background-color:grey;
 }
 input[type="text"], 
select {
background-color: #000;
color: #fff;
padding:5px;
width:250px;
font-size:16px;
}
 
</style>
 
 </body>
</html>