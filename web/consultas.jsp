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
                
                
            
    }
    function buscar(){
                var codb = document.getElementById("cod").value;
                $.ajax({
                    data:{codigo:codb},
                    type: 'POST',
                    url: "svrpersona",
                    success: function (response) {
                        document.getElementById("divbusca").innerHTML=response;
                    }
                });
            }
        
    
        </script>
    </head>
    <body onload="mostrar()">
               <jsp:include page="index.html"></jsp:include>
               codigo:<input type="text" id="cod" name="cod" > <button value="enviar" onclick="buscar()">envair</button>
               <div id="divbusca">
               </div>
    </body>
</html>
