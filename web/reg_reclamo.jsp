<%-- 
    Document   : reg_reclamo
    Created on : 01-feb-2019, 1:44:39
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
        </script>
        <script>
            function getprovincia(){
                cdep = document.getElementById("seldpto").value;
                $.ajax({
                    data:{dpto:cdep},
                    type: 'POST',
                    url: "provincia.jsp",
                    success: function (response) {
                        document.getElementById("divprov").innerHTML=response;
                    }
                });
            }
            
            function getdistrito(){
                cdep = document.getElementById("seldpto").value;
                cpro = document.getElementById("selprov").value;
                $.ajax({
                    data:{dpto:cdep, prov:cpro},
                    type: 'POST',
                    url: "distrito.jsp",
                    success: function (response) {
                        document.getElementById("divdist").innerHTML=response;
                    }
                });
            }
            
        </script>
    </head>
    <body onload="mostrar()">
        <jsp:include page="index.html"></jsp:include>
        
        <form name="frmregistro" id="frmregistro" action="svrpersona" method="POST">
<div class="card">
  <img src="img/reclamo.jpg" alt="Avatar" style="width:25%">
  <div class="container">
      <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading text-uppercase"><strong> Registro de reclamos y denuncias</strong></div>
      <table class="table table-striped" >
          <tr >
                    <td colspan="2" >T.Documento de identidad</td>
                    <td colspan="2" >Documento de identidad</td>
                    <td></td>
                    
                </tr>
                <tr>
                    <td colspan="2" >
                    <jsp:include page="dni.jsp"/>
                    </td>
                    <td><input type="text"  class="form-control" name="dni" id="dni"> </td>
                </tr>
                <tr>
                    <td colspan="2">Apellidos y nombres</td>
                </tr>
                <tr>
                    <td colspan="2"><input type="text" class="form-control" name="nombre" id="nombre"></td>
                </tr>
                <tr>
                    <td colspan="2">Departamento</td> 
                    <td>Provincia</td>
                    <td>Distrito</td>
                </tr>
                <tr>
                    <td colspan="2"> 
                        <div id="divdpto">
                            <jsp:include page="departamento.jsp"/>
                        </div>
                    </td>
                    <td><div id="divprov">
                            
                        </div>
                    </td>
                    <td><div id="divdist">
                            
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">Domicilio</td>
                </tr>
                <tr>
                    <td colspan="4"><input type="text" class="form-control" name="domicilio" id="domicilio"></td>
                </tr>
                <tr>
                    <td colspan="4">E-mail</td>
                </tr>
                <tr>
                    <td colspan="4"><input type="text" class="form-control" name="mail" id="mail"></td>
                </tr>
                <tr>
                    <td colspan="2">Telefono</td>
                    <td colspan="2">Celular</td>
                </tr>                
                <tr>
                    <td colspan="2"><input type="text" class="form-control" name="tel" id="tel"></td>
                    <td colspan="2"><input type="text" class="form-control" name="cel" id="cel"></td>
                    
                </tr>
                <tr>
                    <td colspan="2">Fecha de hecho</td>
                    <td colspan="2">funcionario</td>
                </tr>                
                <tr>
                    <td colspan="2"><input type="date" class="form-control" name="fecha" id="fecha"></td>
                    <td colspan="2"><jsp:include page="funcionario.jsp"/> </td>
                    
                </tr>              
                <tr>
                    <td colspan="4">Descripcion:       maximo (1000 caracteres)</td>
                   
                </tr>
                <tr>
                    <td colspan="4"><textarea class="form-control" rows="4" cols="50" name="descripcion" id="descripcion"></textarea></td>
                </tr>
                <tr>
                    <td colspan="3">
                <div class="custom-file">
                    <input type="file" class="custom-file-input" id="customFileLang" lang="es" name="customFileLang">
                     <label class="custom-file-label" for="customFileLang">Seleccionar Archivo</label>
                </div>
                    </td>
                                     
                    <td colspan="1">
                        <button class="btn btn-lg btn-success">Enviar</button>
                    </td>
                </tr>
            </table>    
            </div>
  </div>
    
  </div>
            <input type="hidden" name="accion" value="insertar">
                   
        </form>
    </body>
</html>
