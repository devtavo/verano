<%-- 
    Document   : distrito
    Created on : 10-feb-2019, 18:21:55
    Author     : gustavo-pc
--%>

<%@page import="br.distbr"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="be.distritobe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String dpto=request.getParameter("dpto");
           String prov=request.getParameter("prov");
        %>
    <body>
        <% List<distritobe> lista= new distbr().listadist(dpto, prov);
        %>
        <select class="form-control" id="seldist" name="seldist">
 <% for(distritobe di:lista){
     %><option value="<%=di.getIddist() %>"><%=di.getNomdist() %></option>
        <%
 }
 %></select>
    </body>
</html>
