<%-- 
    Document   : dni
    Created on : 13-feb-2019, 12:08:48
    Author     : gustavo-pc
--%>

<%@page import="dao.funcionariodao"%>
<%@page import="be.funcionariobe"%>
<%@page import="java.util.List"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% List<funcionariobe> lista= new funcionariodao().getfunc();
        %>
       <select class="form-control" id="selfunc" name="selfunc" >
           <% for(funcionariobe d:lista){
           %><option value="<%=d.getIdfuncionario() %>"><%=d.getNomfuncionario() %></option>
        <%
 }
 %></select>
    </body>
</html>
