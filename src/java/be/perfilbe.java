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
public class perfilbe {
  
    private int idperfil;
    private String nomperfil;
    private int idusuario;
    private int idmodulo;

    public perfilbe() {
    }

    public perfilbe(int idperfil, String nomperfil, int idusuario, int idmodulo) {
        this.idperfil = idperfil;
        this.nomperfil = nomperfil;
        this.idusuario = idusuario;
        this.idmodulo = idmodulo;
    }

    public int getIdperfil() {
        return idperfil;
    }

    public void setIdperfil(int idperfil) {
        this.idperfil = idperfil;
    }

    public String getNomperfil() {
        return nomperfil;
    }

    public void setNomperfil(String nomperfil) {
        this.nomperfil = nomperfil;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public int getIdmodulo() {
        return idmodulo;
    }

    public void setIdmodulo(int idmodulo) {
        this.idmodulo = idmodulo;
    }
    
}
