<%-- 
    Document   : departamento
    Created on : 10-feb-2019, 18:21:34
    Author     : gustavo-pc
--%>

<%@page import="java.util.List"%>
<%@page import="br.depabr"%>
<%@page import="be.departamentobe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% List<departamentobe> lista= new depabr().listadepa();
        

        %>
        <select class="form-control" id="seldpto" name="seldpto" onchange="getprovincia()">
 <% for(departamentobe d:lista){
     %><option value="<%=d.getIddepa()%>"><%=d.getNomdepa()%></option>
        <%
 }
 %></select>
 
    </body>
</html>
