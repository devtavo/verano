<%-- 
    Document   : formLogin
    Created on : 15-oct-2017, 7:43:12
    Author     : Estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>

<%
    
String datos = (String)request.getAttribute("datos");

if (datos==null)
  datos="";

%>

<html>
    <head>
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        
          <link rel="stylesheet" href="/stati/css/bootstrap-theme.css">
          
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema Reclamo</title>
        
        <script type="text/javascript">
        function ingresar() {
          var ok = true;
          var msg = "Debe escribir algo en el campo ";
          
          var usuario = document.getElementById("txtUsuario").value;
          var contra = document.getElementById("txtContra").value;
                    
          if (usuario==""){
              msg += "Usuario";
              alert(msg);
              return false;
          }
          
          if (contra==""){
              msg += "Clave";
              alert(msg);
              return false;
          }
          
          
          return true;
        
        
       }
       </script>
        
        
    </head>
    <body>
        <form action='svrlogin' method='post' id="frmlogueo" >
            
            <table cellpadding="0" cellspacing="0" width="100%" border="0" align="center">
                <tr align="center">
                 <td>
                     <H1>Login</H1>
                 </td>   
                </tr>
            </table>
            <table cellpadding="0" cellspacing="0" width="20%" border="0" align="center">
                <tr>
                 <td width="250">
                    
                    <img src="img/reclamo.jpg" width="250"  alt=""/>
                </td>   
                </tr>
            </table>
            <br><br>
            <table border="0" cellpadding="0" cellspacing="0" width="20%" border="1" align="center">
                <tr><td>Usuario:</td><td><input type="text" name="txtUsuario" id="txtUsuario" required align="center"></td></tr>
                <tr><td>Contraseña:</td><td><input type="password" name="txtContra" id="txtContra" required align="center"></td></tr>
                <tr><td colspan="2">
                        <button type="submit" name="btnInicio" class="btn btn-primary" onclick="return ingresar();">Ingresar</button>
                        
                        <button type="reset" class="btn btn-danger">Cancelar</button>
                    </td></tr>
                <tr align="center" ><td colspan="2"><%=datos%></td></tr>
            </table>
        </form>  
            <%
                HttpSession sesion = request.getSession();
                int resultado=0;
                if(request.getAttribute("resultado")!=null){
                    resultado = (Integer)request.getAttribute("resultado");
                    if(resultado==1){
                        sesion.setAttribute("nombre", request.getAttribute("nombre"));
                        sesion.setAttribute("resultado", resultado);
                        response.sendRedirect("index.html");
                    }
                }
            %>
    </body>
</html>

