/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.personabe;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author gustavo-pc
 */
public class personadao {

    public personadao() {
    }
    
    public int registrar(personabe e){
        int r=0;
            String sql= "insert into persona(idpersona, nombre, domicilio, telefono, celular, email, iddepartamento, idprovincia, iddistrito, idtipodocumento,descripcion,archivo,dni,fecha,funcionario) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            Connection c=null;
       try {
                 
            c=new base().getMysql();
            int id=nuevoId(c);
            PreparedStatement pst=c.prepareCall(sql);
            pst.setInt(1, id);
            pst.setString(2, e.getNombre());
            pst.setString(3, e.getDomicilio());
            pst.setString(4, e.getTelefono());
            pst.setString(5, e.getCelular());
            pst.setString(6, e.getEmail());
            pst.setString(7, e.getIddepartamento());
            pst.setString(8, e.getIdprovincia());
            pst.setString(9, e.getIddistrito());
            pst.setInt(10, Integer.parseInt(e.getIdtipodocumento()));
            pst.setString(11, e.getDescripcion());
            pst.setString(12, e.getArchivo());
            pst.setString(13, e.getDni());
            pst.setString(14, e.getFecha());
            pst.setString(15, e.getFuncionario());
            
            r=pst.executeUpdate();
            pst.close();
            pst=null;
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(personadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }
    private int nuevoId(Connection c){
        int r=0;
        String sql="select IFNULL(max(idpersona),0)+1 codigo from persona";
        
        try {
            PreparedStatement pst= c.prepareCall(sql);
            
            ResultSet rs=pst.executeQuery();
            if(rs.next()){
                r=rs.getInt("codigo");
            }
            rs.close();
            rs=null;
            
            pst.close();
            pst=null;
            
            //c.close();
            //c=null;
        } catch (SQLException ex) {
            Logger.getLogger(personadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return r;
    }
}
