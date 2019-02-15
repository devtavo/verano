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
public class detalle_estadobe {
    private String iddetalle_estado;  
    private String fecha;
    private int idestado;
    private int idincidencias;

    public detalle_estadobe() {
    }

    public detalle_estadobe(String iddetalle_estado, String fecha, int idestado, int idincidencias) {
        this.iddetalle_estado = iddetalle_estado;
        this.fecha = fecha;
        this.idestado = idestado;
        this.idincidencias = idincidencias;
    }

    public String getIddetalle_estado() {
        return iddetalle_estado;
    }

    public void setIddetalle_estado(String iddetalle_estado) {
        this.iddetalle_estado = iddetalle_estado;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getIdestado() {
        return idestado;
    }

    public void setIdestado(int idestado) {
        this.idestado = idestado;
    }

    public int getIdincidencias() {
        return idincidencias;
    }

    public void setIdincidencias(int idincidencias) {
        this.idincidencias = idincidencias;
    }
    
    
    
    
}
