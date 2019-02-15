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
public class detallebe {
 
    private int iddetalle;
    private String nomdetalle;
    private int idpaginas;

    public detallebe() {
    }

    public detallebe(int iddetalle, String nomdetalle, int idpaginas) {
        this.iddetalle = iddetalle;
        this.nomdetalle = nomdetalle;
        this.idpaginas = idpaginas;
    }

    public int getIddetalle() {
        return iddetalle;
    }

    public void setIddetalle(int iddetalle) {
        this.iddetalle = iddetalle;
    }

    public String getNomdetalle() {
        return nomdetalle;
    }

    public void setNomdetalle(String nomdetalle) {
        this.nomdetalle = nomdetalle;
    }

    public int getIdpaginas() {
        return idpaginas;
    }

    public void setIdpaginas(int idpaginas) {
        this.idpaginas = idpaginas;
    }
    
    
}
