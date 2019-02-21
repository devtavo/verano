<%-- 
    Document   : consulta
    Created on : 13-feb-2019, 14:09:14
    Author     : gustavo-pc
--%>

<%@page import="be.funcionariobe"%>
<%@page import="java.util.List"%>
<%@page import="br.personabr"%>
<%@page import="be.personabe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
         
        <!--query/popper/bootstrap.js--> 

        <script src="js/jquery2.1.js" type="text/javascript"></script>
        <script src="js/popper.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.js" type="text/javascript"></script>
        <script src="js/paginacion.js" type="text/javascript"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String funcionario=request.getParameter("funcionario"); 
            String date1=request.getParameter("date1"); 
            String date2=request.getParameter("date2"); 
            String estado=request.getParameter("selestado"); 
        
                
            
            
//       personabe p=new personabe();
//       
//       
//        personabr pbr=new personabr();
//        personabe pbe= new personabe();
//        pbe.setIdpersona(Integer.parseInt(cod));
//        
//        List<personabe> lis= pbr.obtener(pbe);
 
       %>
       <%=funcionario%>
       <%=date2  %>
       <%=date1%>
       <%=estado%>
       
   
    </body>
</html>
