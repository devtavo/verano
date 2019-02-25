<%-- 
    Document   : bandejareclamos
    Created on : 01-feb-2019, 15:15:20
    Author     : gustavo-pc
--%>

<%@page import="br.funcionariobr"%>
<%@page import="be.funcionariobe"%>
<%@page import="br.estadobr"%>
<%@page import="java.util.ArrayList"%>
<%@page import="be.estadobe"%>
<%@page import="java.util.List"%>
<%@page import="br.personabr"%>
<%@page import="be.personabe"%>
<%@page import="be.personabe"%>
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
    }
    function enviar(){
        var date1=document.getElementById("date1").value;
        var date2=document.getElementById("date2").value;
        var funcionario=document.getElementById("selfunc").value;
        var selestado=document.getElementById("selestado").value;
         $.ajax({
                    data:{date1:date1, date2:date2, funcionario:funcionario, selestado:selestado},
                    type: 'POST',
                    url: "consultaBR.jsp",
                    success: function (response) {
                        document.getElementById("divb").innerHTML=response;
                    }
                });
    }
        </script>
    </head>
    <body onload="mostrar()">
         
               <jsp:include page="index.html"></jsp:include>


                   <div class="panel panel-success">
                       
                   <div class="panel-heading text-uppercase">
                       
                       <table  class="table table-hover">
                           <thead>
                               <tr>
                                     <th>Funcionario</th>
                                     <th>Rango de fechas</th>                               
                                     <th>Seleccione estados</th>
                               </tr>
                           </thead>
                           <tr>
                               <td><%
                               List<funcionariobe> lfunc= new funcionariobr().listafuncionario();
                                 %>
                                   <select id="selfunc" name="selfunc"> 
                                       <option value="-1">.:seleccione una opcion:.</option>
                                       <% for (funcionariobe es : lfunc) {
                                        %><option value="<%=es.getIdfuncionario() %>"><%=es.getNomfuncionario() %></option>
                                      <%}%>
                                   </select>
                               </td></td>
                               <td><input type="date" id="date1" name="date1" >-<input type="date" id="date2" name="date2"></td>
                               
                               <td>
                               <%
                               List<estadobe> lest= new estadobr().listaestado();
                                 %>
                                   <select id="selestado" name="selestado"> 
                                       <option value="-1">.:seleccione una opcion:.</option>
                                       <% for (estadobe es : lest) {
                                        %>
                                        <option value="<%=es.getIdestado()%>"><%=es.getEstado()%></option>
                                      <%}%>
                                   </select>
                               </td>
                               <td><button value="buscar" class="btn btn-block" onclick="enviar()" >buscar</button> </td>
                           </tr>
                           

                       </table>
                                  
                  
                <div>
                                   <div id="divb">
                                        </div>            
               </div>   
                </div>
                    <ul class="pagination" id="myPager"></ul>
                   </div>
              
    </body>
</html>
