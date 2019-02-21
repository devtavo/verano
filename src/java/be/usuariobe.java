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
public class usuariobe {
    
    private int idusuario;
    private String nomusuario;
    private String claveusuario;
    

    public usuariobe() {
    }

    public usuariobe(int idusuario, String nomusuario, String claveusuario) {
        this.idusuario = idusuario;
        this.nomusuario = nomusuario;
        this.claveusuario = claveusuario;
    }


    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public String getNomusuario() {
        return nomusuario;
    }

    public void setNomusuario(String nomusuario) {
        this.nomusuario = nomusuario;
    }

    
    public String getClaveusuario() {
        return claveusuario;
    }

    public void setClaveusuario(String claveusuario) {
        this.claveusuario = claveusuario;
    }

    public int validando(String nombre, String contra) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
          
}
