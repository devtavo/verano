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
<div class="modal fade" tabindex="-1" id="myModal" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <!--aqui va el titulo-->
        <h4 class="modal-title">Ticket nro: <%=d.getIdpersona()%>-Fecha:<%=d.getFecha()%></h4>
      </div>
      <div class="modal-body">
       <!--aqui todo el cuerpo del modal-->
       <table >
           <tr>
               <td>
  <div class="panel panel-primary small h6">
  <div class="panel-heading">DENUNCIANTE</div>
  <div class="panel-body">
    <table class="text-capitalize" border="2" bordercolor="white">
          <tr>
              <%if(d.getIdtipodocumento().equals("1"))
              {%>
              <td> DNI:</td><td><input type="text"  size="30" disabled="true" value="<%=d.getDni()%>"></td>
                 <%}else{%>
              <td> RUC:</td><td> <input type="text"  size="30"disabled="true" value="<%=d.getDni()%>"></td>
                     <%  } %>
              <td>Telefono:</td><td><input type="text" size="30" disabled="true" value="<%=d.getTelefono()%>"></td>
              
          </tr>
          <tr>
              <td>Nombre:</td><td><input type="text" size="30" disabled="true" value="<%=d.getNombre() %>"></td>
              <td>Celular:</td><td><input type="text"  size="30"disabled="true" value="<%=d.getCelular()%>"></td>
          </tr>
           <tr>
               <td>Dep/Prov/Dist:</td><td><input type="text"  size="30" disabled="true" value="<%=d.getIddepartamento() %> <%=d.getIdprovincia() %>"></td>
          </tr>
          <tr>
               <td>Domicilio:</td><td><input type="text"  size="30" disabled="true" value="<%=d.getDomicilio()%>"></td>
          </tr>
          <tr>
               <td>Email:</td><td><input type="text" size="30" disabled="true" value="<%=d.getEmail() %>"><br><br></td>
               
          </tr><br>
           
      </table> 
      
 
  </div>
</div>
               </td>
               <td >
  <div class="panel panel-primary small h6">
  <div class="panel-heading">DENUNCIADO</div>
  <div class="panel-body">
      <table>
          <Tr>
              <td>
                  Funcionario:<br><br><br><br>
              </td>
              <td><input  disabled=""><br><br><br><br>
              </td>
          </tr>
          <Tr>
              <td>
                  <br><br><br><br>
              </td>
          </tr>
          
          <Tr>
              <td>
                  Area:</td>
              <td><input disabled="">
              </td>
          </tr>

      </table>
      
  </div>
  </div>
               </td>

           </tr>
         
           <tr>
               <td>
                   <div class="panel panel-primary small h6">
  <div class="panel-heading">DESCRIPCION DE LA DENUNCIA</div>
  <div class="panel-body">
      <textarea class="form-control" rows="2" cols="2" disabled="true"><%=d.getDescripcion() %> </textarea>
        <%}%>
        <br>
  </div>
  </div>
               </td>
               <td>
                   <div class="panel panel-primary small h6">
  <div class="panel-heading">ARCHIVOS ADJUNTOS</div>
  <div class="panel-body">
      <table>
          <tr>
              <td>
                  <br><br><br><br><br>
              </td>
          </tr>
      </table>
  </div>
  </div>
               </td>

           </tr>

       </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
            
      </div>
    </body>
</html>
