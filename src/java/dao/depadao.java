/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.departamentobe;
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
public class depadao {

    public depadao() {
    }
    public List<departamentobe> getdepa(){
        List<departamentobe> lista= new ArrayList();
         String sql= "select iddepartamento, nomdepartamento from departamento ";
         Connection c=null;
         c=new base().getMysql();
        try {
            PreparedStatement pst= c.prepareCall(sql);
            ResultSet rs=pst.executeQuery();
            while(rs.next()){
                departamentobe e=new departamentobe(rs.getString("iddepartamento"),rs.getString("nomdepartamento"));
                lista.add(e);
            }
        } catch (SQLException ex) {
            Logger.getLogger(depadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
         
         return lista;
    }
}
