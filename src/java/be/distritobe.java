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
public class distritobe {
    private String iddist;
    private String idprov;
    private String iddepa;
    private String nomdist;

    public distritobe() {
    }

    public distritobe(String iddist, String idprov, String iddepa, String nomdist) {
        this.iddist = iddist;
        this.idprov = idprov;
        this.iddepa = iddepa;
        this.nomdist = nomdist;
    }

    public String getIddist() {
        return iddist;
    }

    public void setIddist(String iddist) {
        this.iddist = iddist;
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

    public String getNomdist() {
        return nomdist;
    }

    public void setNomdist(String nomdist) {
        this.nomdist = nomdist;
    }
    
}
