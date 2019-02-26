/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.distritobe;
import be.funcionariobe;
import be.personabe;
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
public class personadao {

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
            pst.setString(15,e.getFuncionario());
            
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
    public int registrarcliente(){
        int r=0;
            String sql= "insert into cliente(idcliente,idpersona) values(?,?)";
            Connection c=null;
       try {
                 
            c=new base().getMysql();
            int id=nuevoIdcliente(c);
            int idpersona=nuevoId(c)-1;
            PreparedStatement pst=c.prepareCall(sql);
            pst.setInt(1, id);
            pst.setInt(2, idpersona);
            
            
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
    private int nuevoIdcliente(Connection c){
        int r=0;
        String sql="select IFNULL(max(idcliente),0)+1 codigoc from cliente";
        
        try {
            PreparedStatement pst= c.prepareCall(sql);
            
            ResultSet rs=pst.executeQuery();
            if(rs.next()){
                r=rs.getInt("codigoc");
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
    
    public List<personabe> getpersona(personabe e){
        List<personabe> lista= new ArrayList();
         String sql= "select * from persona p, funcionario f where p.idpersona=? and f.idfuncionario=p.funcionario";
         Connection c=null;
         c=new base().getMysql();
         
        try {
            PreparedStatement pst= c.prepareCall(sql);
             pst.setInt(1, e.getIdpersona());
           
             
            ResultSet rs=pst.executeQuery();
            while(rs.next()){
                
               e.setIdpersona(rs.getInt("idpersona"));
               e.setFecha(rs.getString("fecha"));
               e.setNombre(rs.getString("nombre"));
               e.setDomicilio(rs.getString("domicilio"));
               e.setTelefono(rs.getString("telefono"));
               e.setCelular(rs.getString("celular"));
               e.setEmail(rs.getString("email"));
               e.setIddepartamento(rs.getString("iddepartamento"));
               e.setIdprovincia(rs.getString("idprovincia"));
               e.setIddistrito(rs.getString("iddistrito"));      
               e.setIdtipodocumento(Integer.toString(rs.getInt("idtipodocumento")));
               e.setDescripcion(rs.getString("descripcion"));
               e.setArchivo(rs.getString("archivo"));
               e.setDni(rs.getString("dni"));
               e.setFuncionario(rs.getString("idfuncionario"));
               lista.add(e);
               
            }
        } catch (SQLException ex) {
            Logger.getLogger(personadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
        
    }
}
