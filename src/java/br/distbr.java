/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.distritobe;
import dao.distdao;
import java.util.List;

/**
 *
 * @author gustavo-pc
 */
public class distbr {
    
    public List<distritobe> listadist(String iddepa, String idprov){
        return new distdao().getprov(iddepa, idprov);
    }
}
