/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.departamentobe;
import be.funcionariobe;
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
public class funcionariodao {

    public funcionariodao() {
    }
 
    
    public List<funcionariobe> getfunc(){
        List<funcionariobe> lista= new ArrayList();
         String sql= "select * from funcionario ";
         Connection c=null;
         c=new base().getMysql();
        try {
            PreparedStatement pst= c.prepareCall(sql);
            ResultSet rs=pst.executeQuery();
            while(rs.next()){
                funcionariobe e=new funcionariobe();
                       e.setIdfuncionario(rs.getInt("idfuncionario"));
                       e.setNomfuncionario(rs.getString("nomfunc"));
                       e.setArea(rs.getString("area"));
                       e.setIdcargo(rs.getInt("idcargo"));
                        
                lista.add(e);
            }
        } catch (SQLException ex) {
            Logger.getLogger(funcionariodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
         
         return lista;
    }
}
