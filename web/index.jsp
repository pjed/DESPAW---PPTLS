<%-- 
    Document   : index
    Created on : 30-oct-2019, 13:52:31
    Author     : daw201
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>¡Piedra, Papel, Tijera, Lagarto, Spock!</title>
    </head>
    <body>
        <!-- Formulario -->
        <form name="frmUsuario" action="controlador.jsp" method="POST">
            <!-- Aquí podrá insertar el nombre del jugador el usuario -->
            <span>Nombre: </span><input type="text" name="nombre" id="nombre" placeholder="Escribe tu nombre">
            <!-- El botón llamará al controlador, comenzando el juego -->
            <input type="submit" name="boton" value="Enviar">
        </form>
    </body>
</html>
