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
public class tipodocumentobe {
    private int idtipodocumento;
    private String nomtipodocumento;

    public tipodocumentobe() {
    }

    public tipodocumentobe(int idtipodocumento, String nomtipodocumento) {
        this.idtipodocumento = idtipodocumento;
        this.nomtipodocumento = nomtipodocumento;
    }

    public int getIdtipodocumento() {
        return idtipodocumento;
    }

    public void setIdtipodocumento(int idtipodocumento) {
        this.idtipodocumento = idtipodocumento;
    }

    public String getNomtipodocumento() {
        return nomtipodocumento;
    }

    public void setNomtipodocumento(String nomtipodocumento) {
        this.nomtipodocumento = nomtipodocumento;
    }
    
            
    
}
