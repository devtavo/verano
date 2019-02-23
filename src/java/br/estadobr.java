/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.estadobe;
import be.tipodocumentobe;

import dao.estadodao;
import java.util.List;

/**
 *
 * @author gustavo-pc
 */
public class estadobr {
    
    public List<estadobe> listaestado(){
        return new estadodao().getestado();
    }
}
