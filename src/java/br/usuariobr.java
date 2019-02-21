/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.perfilbe;
import be.usuariobe;
import dao.usuariodao;
import java.util.List;

/**
 *
 * @author Jamil
 */
public class usuariobr {

    public usuariobr() {
    }
    public int validandousuario(usuariobe usu){
        return new usuariodao().validando(usu);
    }
    public int nuevoUsuario(usuariobe usu){
        return new usuariodao().registrando(usu);
    }
    public List<perfilbe> listarPerfiles(usuariobe e){
        return new usuariodao().listarperfiles(e.getIdusuario());
    }
}
