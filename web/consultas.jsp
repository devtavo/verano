<%-- 
    Document   : consultas
    Created on : 01-feb-2019, 19:33:05
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
                    $(document).ready(function () {
                         $("#mostrarmodal").modal("show");
                      });
    }
    function buscar(){
                var codb = document.getElementById("cod").value;
                $.ajax({
                    data:{codigo:codb},
                    type: 'POST',
                    url: "consulta.jsp",
                    success: function (response) {
                        document.getElementById("divbusca").innerHTML=response;
                    }
                });
//               $.post('svrpersona', {
//			codigo : codb
//			}, function(response) {
//				document.getElementById("divbusca").innerHTML=response;
//			});
            }
        
    
        </script>
    </head>
    <body onload="mostrar()">
               <jsp:include page="index.html"></jsp:include>
                             <!-- Modal -->
  <div class="modal fade" id="mostrarmodal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
          <div class="modal-header">
              codigo:<input type="text" id="cod" name="cod" autofocus="true" > <button data-dismiss="modal" 
                                                                      id="close" value="enviar" 
                                                                      onclick="buscar()">envair</button>

          </div></div>
      </div></div>
               <div class="panel text-uppercase" >
                                   <div id="divbusca">
                                        </div>            
               </div>                             
    </body>
</html>
