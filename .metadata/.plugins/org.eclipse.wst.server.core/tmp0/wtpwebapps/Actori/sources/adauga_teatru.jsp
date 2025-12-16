<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.lang.*,java.math.*,db.*,java.sql.*, java.io.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Theatre Introduction Screen</title>
  <link rel="stylesheet" href="persona.css">
 </head>
 <jsp:useBean id="jb" scope="session" class="db.JavaBean" />
 <jsp:setProperty name="jb" property="*" />
 <body>
 <div id="butholder2">
  <h1 align="center" id="titlu">Add a new Theatre:</h1>
</div>
 <%
 String Nume = request.getParameter("nume");
 String Descriere = request.getParameter("descriere");
 String Adresa = request.getParameter("adresa");
 
 // IMPORTANT: The form submission logic only runs if a parameter (like Nume) is present.
 if (Nume != null) {

     String idOrasString = request.getParameter("idoras");
     long idOras = 0; // Initialize variable for safety
     if (idOrasString != null && !idOrasString.isEmpty()) {
             idOras = Long.parseLong(idOrasString);    
     }
     jb.connect();
     
     // 3. Call the correct method with the long ID
     jb.adaugateatru(Nume, Descriere, Adresa, idOras);
     jb.disconnect();
%>
    <p>Data: Introdusa cu Succes</p>
<%
// --- END Submission Logic ---
 } else { 
 // --- START Form Display Logic ---
%>
    
    <%
// --- END Form Display Logic ---
}
%>
 <form action="adauga_teatru.jsp" method="post">
 <table>
 <tr>
 <td align="right">Theatre name:</td>
 <td> <input type="text" name="nume" size="40" /></td>
 </tr>
 <tr>
 <td align="right">Description:</td>
 <td> <input type="text" name="descriere" size="30" /></td>
 </tr>
  <tr>
 <td align="right">Adress:</td>
 <td> <input type="text" name="adresa" size="30" /></td>
 </tr>
  <tr>
 <td align="right">City Name:</td>
 <td> 
    <select name="idoras" id="idoras_choice">
        <%
        jb.connect();
        ResultSet rsOrase = jb.vedeOrase(); 
        while (rsOrase.next()) {
            long id = rsOrase.getLong("idoras");
            String numeOras = rsOrase.getString("nume");
        %>
            <option value="<%= id %>"><%= numeOras %></option>
        <%
        }
        rsOrase.close(); 
           jb.disconnect(); 
        %>
    </select>
</td>
 </tr>
  </table>
  <div id="butholder2">

 <a href="tabela_teatre.jsp">
<div class="cssbutton "id="butactori1"><b class="sway-text"><strong>Back</strong></b></div>
</a> 
<p align="center">
    <button type="submit" class="cssbutton" id="butactori1">
        <b class="sway-text"><strong>Add Theatre</strong></b>
    </button>
</p>
<a href="../index.html">
<div class="cssbutton "id="butactori1"><b class="sway-text"><strong>Home</strong></b></div>
</a> 
 </div>
 </form>
 
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