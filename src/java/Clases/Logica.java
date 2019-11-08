/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.util.Random;

/**
 *
 * @author adonoso
 * @version %I%
 */
public class Logica {
    
    // Valores estáticos
    static final int ROCK = 0;
    static final int PAPER = 1;
    static final int SCISSORS = 2;
    static final int SPOCK = 3;
    static final int LIZARD = 4;
    
    // Variables juego
    private int p1;
    private int p2;
    private String vs[][] = new String[5][5];
    private String[] o = {"Piedra", "Papel", "Tijeras", "Spock", "Lagarto"};

    /**
     * Método que iniciará el juego
     * @author adonoso
     * @since 1.0
     * @return String - Devolverá alguna regla que ponemos en setRules(), ya que comprueba contra esas reglas.
     */
    public String play() {
        Random g = new Random();
        p1 = g.nextInt(5);
        p2 = g.nextInt(5);
        String resultado = vs[p1][p2];
        return resultado;
    }

    /**
     * @author adonoso
     * @since 1.0
     */
    public void setRules() {
        for (int i = 0; i < 5; i++) {
            for (int j = 0; j < 5; j++) {
                vs[i][j] = "";
            }
        }
        // Reglas
        vs[ROCK][SCISSORS] = "aplasta";
        vs[ROCK][LIZARD] = "aplasta";
        vs[PAPER][ROCK] = "cubre";
        vs[PAPER][SPOCK] = "rechaza";
        vs[SCISSORS][PAPER] = "corta";
        vs[SCISSORS][LIZARD] = "decapita";
        vs[SPOCK][ROCK] = "vaporiza";
        vs[SPOCK][SCISSORS] = "machaca";
        vs[LIZARD][PAPER] = "come";
        vs[LIZARD][SPOCK] = "envenena";
    }

    /**
     * Devuelve el vector estático de posibles elecciones
     * @author adonoso
     * @since 1.0
     * @return String[] - El vector estático
     */
    public String[] getO() {
        return o;
    }
    
    /**
     * Devuelve lo que le ha tocado al jugador 1 en el método play()
     * @author adonoso
     * @since 1.0
     * @return int - Lo que le ha tocado
     */
    public int getP1() {
        return p1;
    }
    
    /**
     * Devuelve lo que le ha tocado al jugador 2 en el método play()
     * @author adonoso
     * @since 1.0
     * @return int - Lo que le ha tocado
     */
    public int getP2() {
        return p2;
    }
}
