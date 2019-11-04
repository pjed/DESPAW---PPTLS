<%-- 
    Document   : controlador
    Created on : 30-oct-2019, 14:00:54
    Author     : alvaro
--%>

<%@page import="Clases.Logica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    // Clase principal
    Logica game = new Logica();

    // Ponemos las reglas del juego
    game.setRules();
    
    do {
        // Play
        String result = game.play();
        String[] variables = game.getO();

        // Ponemos en sesión con qué variables van a jugar
        session.setAttribute("log", variables[game.getP1()] + " vs " + variables[game.getP2()]);
        
        if (game.getP1() != game.getP2()) {
            if (result.equals("")) {
                // Si el jugador 2 ha ganado
                session.setAttribute("ganador", "La máquina ha Ganado");
                session.setAttribute("logFinal", "");
            } else {
                // Si el jugador 1 ha ganado
                session.setAttribute("ganador", request.getParameter("nombre") + " ha Ganado");
                session.setAttribute("logFinal", variables[game.getP1()] + " " + result + " " + variables[game.getP2()]);
            }
        }
        // Mientras empaten
    } while (game.getP1() == game.getP2());

    // Página de resultados
    response.sendRedirect("resultados.jsp");
%>

