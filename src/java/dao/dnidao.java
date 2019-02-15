/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.departamentobe;
import be.tipodocumentobe;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author gustavo-pc
 */
public class dnidao {

    public dnidao() {
    }
 
    
    public List<tipodocumentobe> getdni(){
        List<tipodocumentobe> lista= new ArrayList();
         String sql= "select id_tipo_documento, nomtipodocumento from tipo_documento ";
         Connection c=null;
         c=new base().getMysql();
        try {
            PreparedStatement pst= c.prepareCall(sql);
            ResultSet rs=pst.executeQuery();
            while(rs.next()){
                tipodocumentobe e=new tipodocumentobe(rs.getInt("id_tipo_documento"),rs.getString("nomtipodocumento"));
                lista.add(e);
            }
        } catch (SQLException ex) {
            Logger.getLogger(dnidao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
         
         return lista;
    }
}
