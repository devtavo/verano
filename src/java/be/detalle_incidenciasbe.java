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
public class detalle_incidenciasbe {
    
    
    private String iddet_incidencias;
    private String nom_area;
    private int idincidencia;
    private String areaorigen;
    private String areadestino;

    public detalle_incidenciasbe() {
    }

    public detalle_incidenciasbe(String iddet_incidencias, String nom_area, int idincidencia, String areaorigen, String areadestino) {
        this.iddet_incidencias = iddet_incidencias;
        this.nom_area = nom_area;
        this.idincidencia = idincidencia;
        this.areaorigen = areaorigen;
        this.areadestino = areadestino;
    }

    public String getIddet_incidencias() {
        return iddet_incidencias;
    }

    public void setIddet_incidencias(String iddet_incidencias) {
        this.iddet_incidencias = iddet_incidencias;
    }

    public String getNom_area() {
        return nom_area;
    }

    public void setNom_area(String nom_area) {
        this.nom_area = nom_area;
    }

    public int getIdincidencia() {
        return idincidencia;
    }

    public void setIdincidencia(int idincidencia) {
        this.idincidencia = idincidencia;
    }

    public String getAreaorigen() {
        return areaorigen;
    }

    public void setAreaorigen(String areaorigen) {
        this.areaorigen = areaorigen;
    }

    public String getAreadestino() {
        return areadestino;
    }

    public void setAreadestino(String areadestino) {
        this.areadestino = areadestino;
    }
    
}
