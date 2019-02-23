/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.estadobe;
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
public class estadodao {

    public estadodao() {
    }
    
    public List<estadobe> getestado(){
        List<estadobe> lista= new ArrayList();
         
        String sql= "select * from estado ";
         Connection c=null;
         c=new base().getMysql();
         
        try {
            PreparedStatement pst= c.prepareCall(sql);
            ResultSet rs=pst.executeQuery();
            while(rs.next()){
              estadobe e=new estadobe(Integer.parseInt(rs.getString("idestado")),rs.getString("estados"));
              lista.add(e);
            }
        } catch (SQLException ex) {
            Logger.getLogger(estadodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
        
    }
}
