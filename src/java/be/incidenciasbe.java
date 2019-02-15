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
public class incidenciasbe {
    
    private int idincidencias;
    private int idfuncionario;
    private int idcliente;
    private int idcategoria;
    private int idestado;
    private String idarea;

    public incidenciasbe() {
    }

    public incidenciasbe(int idincidencias, int idfuncionario, int idcliente, int idcategoria, int idestado, String idarea) {
        this.idincidencias = idincidencias;
        this.idfuncionario = idfuncionario;
        this.idcliente = idcliente;
        this.idcategoria = idcategoria;
        this.idestado = idestado;
        this.idarea = idarea;
    }

    public int getIdincidencias() {
        return idincidencias;
    }

    public void setIdincidencias(int idincidencias) {
        this.idincidencias = idincidencias;
    }

    public int getIdfuncionario() {
        return idfuncionario;
    }

    public void setIdfuncionario(int idfuncionario) {
        this.idfuncionario = idfuncionario;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public int getIdcategoria() {
        return idcategoria;
    }

    public void setIdcategoria(int idcategoria) {
        this.idcategoria = idcategoria;
    }

    public int getIdestado() {
        return idestado;
    }

    public void setIdestado(int idestado) {
        this.idestado = idestado;
    }

    public String getIdarea() {
        return idarea;
    }

    public void setIdarea(String idarea) {
        this.idarea = idarea;
    }
    
    
   
}
