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
    private String nomfuncionario;
    private String area;
    private int idcargo;
   

    public funcionariobe() {
    }

    public funcionariobe(int idfuncionario, String nomfuncionario, String area, int idcargo) {
        this.idfuncionario = idfuncionario;
        this.nomfuncionario = nomfuncionario;
        this.area = area;
        this.idcargo = idcargo;       
    }

    public int getIdfuncionario() {
        return idfuncionario;
    }

    public void setIdfuncionario(int idfuncionario) {
        this.idfuncionario = idfuncionario;
    }

    public String getNomfuncionario() {
        return nomfuncionario;
    }

    public void setNomfuncionario(String nomfuncionario) {
        this.nomfuncionario = nomfuncionario;
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
 
}
