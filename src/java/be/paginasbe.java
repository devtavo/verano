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
public class paginasbe {
    private int idpaginas;
    private String nompaginas;

    public paginasbe() {
    }

    public paginasbe(int idpaginas, String nompaginas) {
        this.idpaginas = idpaginas;
        this.nompaginas = nompaginas;
    }

    public int getIdpaginas() {
        return idpaginas;
    }

    public void setIdpaginas(int idpaginas) {
        this.idpaginas = idpaginas;
    }

    public String getNompaginas() {
        return nompaginas;
    }

    public void setNompaginas(String nompaginas) {
        this.nompaginas = nompaginas;
    }
    
}
