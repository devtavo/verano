<%-- 
    Document   : area
    Created on : 01-feb-2019, 19:56:37
    Author     : gustavo-pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
                function mostrar(){
                    var x=document.getElementById("carousel-example-generic");
                    x.style.display="none";  
                    var doble=x;
    }
        </script>
    </head>
    <body onload="mostrar()">
         <jsp:include page="index.html"></jsp:include>
        <form name="frmbanRecla">
                   <div class="panel panel-success">
                       
                   <div class="panel-heading text-uppercase">
                       
                       <table  class="table table-hover">
                           <thead>
                               <tr>
                                                                   
                                     <th>Seleccione estados de denuncias a mostrar</th>
                               <td>
                                   <select id="selestado" name="selestado"> 
                                       <option value="todas">--------------todas-------------</option>
                                       <option value="todas">todas</option>
                                   </select>
                               </td>
                               <td><button value="buscar" class="btn btn-block">buscar</button> </td>
                               </tr>
                           </thead>
                           <tr>
                               
                               
                               
                           </tr>

                       </table>
                   </div>
               </div>
                  <div>
                   <div class=" panel text-uppercase">
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
                                       <td>dddd </td>
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
                               <tr>
                                       <td>2</td>
                                       <td>dddd </td>
                                       <td>54546</td>
                                       <td>dw</td>
                                       <td>dwdwd</td>
                                       <td>wdwd</td>
                                       <td>
                                           <button type="button" class="btn btn-success">ver</button>
                                           <button type="button" class="btn btn-info">editar</button>
                                           <button type="button" class="btn btn-toolbar">seguimiento</button>
                                           
                                       </td>
                               </tr>
                               <tr>
                                       <td>3</td>
                                       <td>dddd </td>
                                       <td>54546</td>
                                       <td>dw</td>
                                       <td>dwdwd</td>
                                       <td>wdwd</td>
                                       <td>
                                           <button type="button" class="btn btn-success">ver</button>
                                           <button type="button" class="btn btn-info">editar</button>
                                           <button type="button" class="btn btn-toolbar">seguimiento</button>
                                           
                                       </td>
                               </tr>
                                <tr>
                                       <td>4</td>
                                       <td>dddd </td>
                                       <td>54546</td>
                                       <td>dw</td>
                                       <td>dwdwd</td>
                                       <td>wdwd</td>
                                       <td>
                                           <button type="button" class="btn btn-success">ver</button>
                                           <button type="button" class="btn btn-info">editar</button>
                                           <button type="button" class="btn btn-toolbar">seguimiento</button>
                                           
                                       </td>
                               </tr>
                                <tr>
                                       <td>5</td>
                                       <td>dddd </td>
                                       <td>54546</td>
                                       <td>dw</td>
                                       <td>dwdwd</td>
                                       <td>wdwd</td>
                                       <td>
                                           <button type="button" class="btn btn-success">ver</button>
                                           <button type="button" class="btn btn-info">editar</button>
                                           <button type="button" class="btn btn-toolbar">seguimiento</button>
                                           
                                       </td>
                               </tr>
                                <tr>
                                       <td>5</td>
                                       <td>dddd </td>
                                       <td>54546</td>
                                       <td>dw</td>
                                       <td>dwdwd</td>
                                       <td>wdwd</td>
                                       <td>
                                           <button type="button" class="btn btn-success">ver</button>
                                           <button type="button" class="btn btn-info">editar</button>
                                           <button type="button" class="btn btn-toolbar">seguimiento</button>
                                           
                                       </td>
                               </tr>
                                <tr>
                                       <td>5</td>
                                       <td>dddd </td>
                                       <td>54546</td>
                                       <td>dw</td>
                                       <td>dwdwd</td>
                                       <td>wdwd</td>
                                       <td>
                                           <button type="button" class="btn btn-success">ver</button>
                                           <button type="button" class="btn btn-info">editar</button>
                                           <button type="button" class="btn btn-toolbar">seguimiento</button>
                                           
                                       </td>
                               </tr>
                                <tr>
                                       <td>5</td>
                                       <td>dddd </td>
                                       <td>54546</td>
                                       <td>dw</td>
                                       <td>dwdwd</td>
                                       <td>wdwd</td>
                                       <td>
                                           <button type="button" class="btn btn-success">ver</button>
                                           <button type="button" class="btn btn-info">editar</button>
                                           <button type="button" class="btn btn-toolbar">seguimiento</button>
                                           
                                       </td>
                               </tr>
                                <tr>
                                       <td>5</td>
                                       <td>dddd </td>
                                       <td>54546</td>
                                       <td>dw</td>
                                       <td>dwdwd</td>
                                       <td>wdwd</td>
                                       <td>
                                           <button type="button" class="btn btn-success">ver</button>
                                           <button type="button" class="btn btn-info">editar</button>
                                           <button type="button" class="btn btn-toolbar">seguimiento</button>
                                           
                                       </td>
                               </tr>
                           </tbody>
                       </table>
                      <ul class="pagination" id="myPager"></ul>
                   </div>
                  </div>
               </form>  
               <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
          <div class="modal-header">
              
          </div></div>
      </div></div>
    </body>
</html>
