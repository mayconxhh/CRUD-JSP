/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelDAO;

import Config.Conection;
import Interface.ClienteCRUD;
import Model.Cliente;
import com.mysql.jdbc.Connection;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Familia
 */
public class ClienteDAO implements ClienteCRUD {
    Conection cn = new Conection();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Cliente u = new Cliente();

    public List listD() {
        ArrayList<Cliente>list = new ArrayList<>();
        String sql = "select * from cliente limit 5";
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Cliente cl = new Cliente();
                cl.setIdCliente(rs.getInt("idCliente"));
                cl.setIdUsuario(rs.getInt("idUsuario"));
                cl.setPrimerApellido(rs.getString("primerApellido"));
                cl.setCuentaBanco(rs.getString("cuentaBanco"));
                cl.setTelefono(rs.getString("telefono"));
                cl.setDireccion(rs.getString("direccion"));
                list.add(cl);
            }
        } catch(SQLException ex){
            System.out.println("Error: "+ex);
        }
        
        return list;
    }
    
    @Override
    public List list() {
        ArrayList<Cliente>list = new ArrayList<>();
        String sql = "select * from cliente";
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Cliente cl = new Cliente();
                cl.setIdCliente(rs.getInt("idCliente"));
                cl.setIdUsuario(rs.getInt("idUsuario"));
                cl.setPrimerApellido(rs.getString("primerApellido"));
                cl.setCuentaBanco(rs.getString("cuentaBanco"));
                cl.setTelefono(rs.getString("telefono"));
                cl.setDireccion(rs.getString("direccion"));
                list.add(cl);
            }
        } catch(SQLException ex){
            System.out.println("Error: "+ex);
        }
        
        return list;
    }

    @Override
    public Cliente list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Cliente cl) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit(Cliente cl) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
