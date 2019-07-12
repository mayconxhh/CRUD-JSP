/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import com.mysql.jdbc.Connection;
import java.sql.*;

/**
 *
 * @author Familia
 */
public class Conection {
    Connection con;
    
    public Conection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/veterinaria","root", "");
            System.out.println("Conexion exitosa");
        } catch (ClassNotFoundException | SQLException ex) {
            System.err.println("Error: "+ex);
        }
    };
    
    public Connection getConnection(){
        return con;
    };
}
