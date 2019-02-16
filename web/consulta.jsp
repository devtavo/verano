<%-- 
    Document   : consulta
    Created on : 13-feb-2019, 14:09:14
    Author     : gustavo-pc
--%>

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
        <% String cod=request.getParameter("codigo"); 
        
       personabe p=new personabe();
       
       
        personabr pbr=new personabr();
        personabe pbe= new personabe();
        pbe.setIdpersona(Integer.parseInt(cod));
        
        List<personabe> lis= pbr.obtener(pbe);
 
       %>
        
        <div class="panel text-uppercase" >
        
                       <table class="table table-hover" id="myTable">
                           <thead class="black white-text ">
                               <tr><th>#</th>
                                   <th >Ticket</th>
                                   <th >Fecha</th>
                                   <th >Apellido y nombres</th>
                                   <th>Estados</th>
                               </tr>  
                           </thead>
                           <tbody> 
                               <tr><%
                                   for (personabe  d : lis) {
                                           
                                      %>
                                       <td>1</td>
                                       <td><%=d.getIdpersona() %> </td>
                                       <td><%=d.getFecha()%> </td>
                                       <td><%=d.getNombre()%> </td>
                                     
                                       <td>
                                           <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">ver</button>
                                           <button type="button" class="disabled btn btn-info ">editar</button>
                                           <button type="button" class="disabled btn btn-toolbar">seguimiento</button>
                                           
                                       </td>
                               </tr>
                               
                           </tbody>
                       </table>
               <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
     
      <!-- Modal content-->
      <div class="modal-content">
          <div class="modal-header">
             <div class="panel panel-default">
  <div class="panel-heading">
      <h3 class="panel-title">Ticket nro: <%=d.getIdpersona()%>-Fecha:<%=d.getFecha()%></h3>
  </div>
  <div class="panel-body">
      <!-- Modal contenido-->
   
      <table>
          <tr>
              <td>DENUNCIANTE</td>
          </tr>
          <tr>
              <td>Nombre:</td>
          </tr>
      </table>
      <%}%>
 
      <!-- Modal contenido-->
  
  </div>
</div>
          </div></div>
      </div></div>
              
        
        
        </div>
    </body>
</html>
