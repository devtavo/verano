/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.distritobe;
import be.provinciabe;
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
public class distdao {

    public distdao() {
    }
     public List<distritobe> getprov(String iddepa, String idprov){
        List<distritobe> lista= new ArrayList();
         String sql= "select iddistrito, nomdistrito from distrito where iddepartamento = ? and idprovincia = ?";
         Connection c=null;
         c=new base().getMysql();
         
        try {
            PreparedStatement pst= c.prepareCall(sql);
             pst.setString(1, iddepa);
             pst.setString(2, idprov);
             
            ResultSet rs=pst.executeQuery();
            while(rs.next()){
                distritobe e=new distritobe();
                e.setIddist(rs.getString("iddistrito"));
                e.setNomdist(rs.getString("nomdistrito"));
                
                lista.add(e);
            }
        } catch (SQLException ex) {
            Logger.getLogger(distdao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
        
    }
}
