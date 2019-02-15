/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.departamentobe;
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
public class provdao {

    public provdao() {
    }
    public List<provinciabe> getprov(String iddepa){
        List<provinciabe> lista= new ArrayList();
         String sql= "select idprovincia, nomprovincia from provincia where iddepartamento = ?";
         Connection c=null;
         c=new base().getMysql();
        try {
            PreparedStatement pst= c.prepareCall(sql);
            pst.setString(1, iddepa);
            ResultSet rs=pst.executeQuery();
            
            while(rs.next()){
                provinciabe e=new provinciabe();
                e.setIdprov(rs.getString("idprovincia"));
                e.setNomprov(rs.getString("nomprovincia"));
                lista.add(e);
            }
        } catch (SQLException ex) {
            Logger.getLogger(provdao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
        
    }
}
