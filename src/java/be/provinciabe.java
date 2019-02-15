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
public class provinciabe {
    private String idprov;
    private String iddepa;
    private String nomprov;

    public provinciabe() {
    }

    public provinciabe(String idprov, String iddepa, String nomprov) {
        this.idprov = idprov;
        this.iddepa = iddepa;
        this.nomprov = nomprov;
    }

    public String getIdprov() {
        return idprov;
    }

    public void setIdprov(String idprov) {
        this.idprov = idprov;
    }

    public String getIddepa() {
        return iddepa;
    }

    public void setIddepa(String iddepa) {
        this.iddepa = iddepa;
    }

    public String getNomprov() {
        return nomprov;
    }

    public void setNomprov(String nomprov) {
        this.nomprov = nomprov;
    }
    
}
