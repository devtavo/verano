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
public class cargobe {
   private int idcargo;
   private String nomcargo;

    public cargobe() {
    }

    public cargobe(int idcargo, String nomcargo) {
        this.idcargo = idcargo;
        this.nomcargo = nomcargo;
    }

    public int getIdcargo() {
        return idcargo;
    }

    public void setIdcargo(int idcargo) {
        this.idcargo = idcargo;
    }

    public String getNomcargo() {
        return nomcargo;
    }

    public void setNomcargo(String nomcargo) {
        this.nomcargo = nomcargo;
    }
   
   
}
