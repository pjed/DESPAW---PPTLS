<%-- 
    Document   : controlador
    Created on : 30-oct-2019, 14:00:54
    Author     : alvaro
--%>

<%@page import="Clases.Logica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    Logica game = new Logica();
    
    // Ponemos las reglas del juego
    game.setRules();

    do {
        // Play
        String result = game.play();
        String [] variables = game.getO();
        
        session.setAttribute("log", variables[game.getP1()] + " vs " + variables[game.getP2()]);
        
        if (game.getP1() != game.getP2()) {
            if (result.equals("")) {
                session.setAttribute("ganador", "Jugador 2 ha ganado");
                session.setAttribute("logFinal", variables[game.getP2()] + " " + result + " " + variables[game.getP1()]);
            } else {
                session.setAttribute("ganador", "Jugador 1 ha ganado");
                session.setAttribute("logFinal", variables[game.getP1()] + " " + result + " " + variables[game.getP2()]);
            }
        }
    } while (game.getP1() == game.getP2());
    
    response.sendRedirect("resultados.jsp");
%>

