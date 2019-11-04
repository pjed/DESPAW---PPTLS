<%-- 
    Document   : resultados
    Created on : 30-oct-2019, 13:58:45
    Author     : daw201
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultados</title>
    </head>
    <body>
        <%
            String ganador = (String) session.getAttribute("ganador");
            String logFinal = (String) session.getAttribute("logFinal");
            String log = (String) session.getAttribute("log");
        %>
        <textarea id="resultado" name="resultado" cols="25" rows="5"><%out.print(log+ "\r\n" +logFinal + "\r\n" + ganador);%></textarea>
    </body>
</html>
