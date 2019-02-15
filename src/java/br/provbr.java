/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.provinciabe;
import dao.provdao;
import java.util.List;

/**
 *
 * @author gustavo-pc
 */
public class provbr {
    
    public List<provinciabe> listaprov(String iddepa){
        return new provdao().getprov(iddepa);
     }
}
