<%-- 
    Document   : consulta
    Created on : 13-feb-2019, 14:09:14
    Author     : gustavo-pc
--%>

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
        <% String cod=request.getParameter("codigo"); %>
        <div class=" panel text-uppercase" >
        
                       <table class="table table-hover" id="myTable">
                           <thead class="black white-text ">
                               <tr><th>#</th>
                                   <th >Ticket</th>
                                   <th >Fecha</th>
                                   <th>Apellido y nombres</th>
                                   <th>Categoria</th>
                                   <th>Estados</th>
                               </tr>  
                           </thead>
                           <tbody> 
                               <tr>
                                       <td>1</td>
                                       <td><%=cod%> </td>
                                       <td>54546</td>
                                       <td>dw</td>
                                       <td>dwdwd</td>
                                       <td>wdwd</td>
                                       <td>
                                           <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">ver</button>
                                           <button type="button" class="btn btn-info">editar</button>
                                           <button type="button" class="btn btn-toolbar">seguimiento</button>
                                           
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
              
          </div></div>
      </div></div>
               </div>
    </body>
</html>
