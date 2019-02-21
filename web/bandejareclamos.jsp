<%-- 
    Document   : bandejareclamos
    Created on : 01-feb-2019, 15:15:20
    Author     : gustavo-pc
--%>

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
        var funcionario=document.getElementById("func").value;
        var selestado=document.getElementById("selestado").value;
         $.ajax({
                    data:{date1:date1, date2:date2, funcionario:funcionario, selestado:selestado},
                    type: 'POST',
                    url: "consultaBR.jsp",
                    success: function (response) {
                        document.getElementById("divbuscaBR").innerHTML=response;
                    }
                });
    }
        </script>
    </head>
    <body onload="mostrar()">
         
               <jsp:include page="index.html"></jsp:include>

               <form name="frmbanRecla" >
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
                               <td><input type="text" id="func" ></td>
                               <td><input type="date" id="date1" name="date1" >-<input type="date" id="date2" name="date2"></td>
                               
                               <td>
                                   <select id="selestado" name="selestado"> 
                                       <option value="todas">todas-------------</option>
                                       <option value="todas">todas</option>
                                   </select>
                               </td>
                               <td><button value="buscar" class="btn btn-block" onclick="enviar()" >buscar</button> </td>
                           </tr>
                           

                       </table>
                    
                   </div>
                    <ul class="pagination" id="myPager"></ul>
                   </div>
                
               </form>  
              <div class="panel text-uppercase" >
                                   <div id="divbuscaBR">
                                        </div>            
               </div>                 
    </body>
</html>
