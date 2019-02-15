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
public class categoriabe {
    private int idcategoria;
    private String nomcategoria;

    public categoriabe() {
    }

    public categoriabe(int idcategoria, String nomcategoria) {
        this.idcategoria = idcategoria;
        this.nomcategoria = nomcategoria;
    }

    public int getIdcategoria() {
        return idcategoria;
    }

    public void setIdcategoria(int idcategoria) {
        this.idcategoria = idcategoria;
    }

    public String getNomcategoria() {
        return nomcategoria;
    }

    public void setNomcategoria(String nomcategoria) {
        this.nomcategoria = nomcategoria;
    }
    
}
