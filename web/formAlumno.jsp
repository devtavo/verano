<%-- 
    Document   : formAlumno
    Created on : 02/02/2019, 04:50:44 PM
    Author     : Estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="jquery.js" type="text/javascript"></script>
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
    <body>
        <form action="registro.jsp" method="post">
            <table>
                <tr>
                    <td>Apellido paterno</td>
                    <td>
                        <input type="text" name="tapepat">
                    </td>
                </tr>
                <tr>
                    <td>Apellido materno</td>
                    <td>
                        <input type="text" name="tapemat">
                    </td>
                </tr>
                <tr>
                    <td>Nombres</td>
                    <td>
                        <input type="text" name="tnombre">
                    </td>
                </tr>
                <tr>
                    <td>Departamento</td>
                    <td >
                        <div id="divdpto">
                            <jsp:include page="departamento.jsp"/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>provincia</td>
                    <td>
                        <div id="divprov">
                            
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>Distrito</td>
                    <td>
                        <div id="divdist">
                            
                        </div>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Registrar"</td>
                </tr>
            </table>
            
        </form>
    </body>
</html>
