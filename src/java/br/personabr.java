/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.personabe;
import dao.personadao;
import java.util.List;

/**
 *
 * @author gustavo-pc
 */
public class personabr {
    
    public int registrarpersona(personabe e){
        return new personadao().registrar(e);
    }
     public int registrarcliente(){
        return new personadao().registrarcliente();
    }
    public List<personabe> obtener(personabe e){
        return new personadao().getpersona(e);
                
    }
}
