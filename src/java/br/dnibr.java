/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.distritobe;
import be.tipodocumentobe;
import dao.distdao;
import dao.dnidao;
import java.util.List;

/**
 *
 * @author gustavo-pc
 */
public class dnibr {
     public List<tipodocumentobe> listadni(){
        return new dnidao().getdni();
    }
}
