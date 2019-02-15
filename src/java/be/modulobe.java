/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package be;

/**
 *
 * @author gustavo-pc
 */
public class modulobe {
    private int idmodulo;
    private String nommodulo;
    private int iddetalle;

    public modulobe() {
    }

    public modulobe(int idmodulo, String nommodulo, int iddetalle) {
        this.idmodulo = idmodulo;
        this.nommodulo = nommodulo;
        this.iddetalle = iddetalle;
    }

    public int getIdmodulo() {
        return idmodulo;
    }

    public void setIdmodulo(int idmodulo) {
        this.idmodulo = idmodulo;
    }

    public String getNommodulo() {
        return nommodulo;
    }

    public void setNommodulo(String nommodulo) {
        this.nommodulo = nommodulo;
    }

    public int getIddetalle() {
        return iddetalle;
    }

    public void setIddetalle(int iddetalle) {
        this.iddetalle = iddetalle;
    }
    
}
