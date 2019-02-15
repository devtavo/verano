<%-- 
    Document   : provincia
    Created on : 10-feb-2019, 18:21:47
    Author     : gustavo-pc
--%>

<%@page import="br.provbr"%>
<%@page import="java.util.List"%>
<%@page import="be.provinciabe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <% String dpto=request.getParameter("dpto");
    %>
    <body>
        <% List<provinciabe> lista= new provbr().listaprov(dpto);
        %>
        <select class="form-control" id="selprov" name="selprov" onchange="getdistrito()">
 <% for(provinciabe p:lista){
     %>
     <option value="<%=p.getIdprov()%>"><%=p.getNomprov() %></option>
        <%
 }
 %></select>
    </body>
</html>
