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
public class departamentobe {
     private String iddepa;
     private String nomdepa;

    public departamentobe() {
    }

    public departamentobe(String iddepa, String nomdepa) {
        this.iddepa = iddepa;
        this.nomdepa = nomdepa;
    }

    public String getIddepa() {
        return iddepa;
    }

    public void setIddepa(String iddepa) {
        this.iddepa = iddepa;
    }

    public String getNomdepa() {
        return nomdepa;
    }

    public void setNomdepa(String nomdepa) {
        this.nomdepa = nomdepa;
    }
     
     
}
