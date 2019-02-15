<%-- 
    Document   : dni
    Created on : 13-feb-2019, 12:08:48
    Author     : gustavo-pc
--%>

<%@page import="java.util.List"%>
<%@page import="dao.dnidao"%>
<%@page import="be.tipodocumentobe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% List<tipodocumentobe> lista= new dnidao().getdni();
        %>
       <select class="form-control" id="seldni" name="seldni" >
           <% for(tipodocumentobe d:lista){
     %><option value="<%=d.getIdtipodocumento() %>"><%=d.getNomtipodocumento()%></option>
        <%
 }
 %></select>
    </body>
</html>
