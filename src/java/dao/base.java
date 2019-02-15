/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.mysql.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Estudiante
 */
public class base {

    public base() {
    }
    
    public Connection getMysql(){
        Connection c = null;
        String ubd="root";
        String pbd="root";
        String url="jdbc:mysql://localhost:3306/mydb?useTimezone=true&serverTimezone=UTC";
        
        try {
            // 1 registrando driver
            DriverManager.registerDriver(new Driver());
            //2. estableciendo conexion con el servidor de base de datos
            c = DriverManager.getConnection(url, ubd ,pbd);
        } catch (SQLException ex) {
            Logger.getLogger(base.class.getName()).log(Level.SEVERE, null, ex);
        }
        return c;
        
    }
}
