/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.departamentobe;
import dao.depadao;
import java.util.List;

/**
 *
 * @author gustavo-pc
 */
public class depabr {
    
    public List<departamentobe> listadepa(){
        return new depadao().getdepa();
    }
}
