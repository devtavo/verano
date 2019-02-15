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
public class funcionariobe {
    private int idfuncionario;
    private String area;
    private int idcargo;
    private int idpersona;

    public funcionariobe() {
    }

    public funcionariobe(int idfuncionario, String area, int idcargo, int idpersona) {
        this.idfuncionario = idfuncionario;
        this.area = area;
        this.idcargo = idcargo;
        this.idpersona = idpersona;
    }

    public int getIdfuncionario() {
        return idfuncionario;
    }

    public void setIdfuncionario(int idfuncionario) {
        this.idfuncionario = idfuncionario;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public int getIdcargo() {
        return idcargo;
    }

    public void setIdcargo(int idcargo) {
        this.idcargo = idcargo;
    }

    public int getIdpersona() {
        return idpersona;
    }

    public void setIdpersona(int idpersona) {
        this.idpersona = idpersona;
    }
    
    
    
}
