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
        String sql = "select * from cliente where idCliente="+id;
        Cliente pl = new Cliente();
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                pl.setIdCliente(rs.getInt("idCliente"));
                pl.setPrimerApellido(rs.getString("primerApellido"));
                pl.setCuentaBanco(rs.getString("cuentaBanco"));
                pl.setTelefono(rs.getString("telefono"));
                pl.setDireccion(rs.getString("direccion"));                
            }
        } catch(SQLException ex){
            System.out.println("Error: "+ex);
        }
        
        return pl;
    }

    @Override
    public boolean add(Cliente cl) {
        String sql = "insert into cliente(idUsuario, primerApellido, cuentaBanco, direccion, telefono) values("+cl.getIdUsuario()+", '"+cl.getPrimerApellido()+"', '"+cl.getCuentaBanco()+"', '"+cl.getDireccion()+"', '"+cl.getTelefono()+"')";
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            
        } catch(SQLException ex){
            System.out.println("Error: "+ex);
        }
        
        return false;
    }

    @Override
    public boolean edit(Cliente cl) {
        
        String sql = "update cliente set primerApellido='"+cl.getPrimerApellido()+"', cuentaBanco='"+cl.getCuentaBanco()+"', direccion='"+cl.getDireccion()+"', telefono='"+cl.getTelefono()+"' where idCliente="+cl.getIdCliente();
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            
        } catch(SQLException ex){
            System.out.println("Error: "+ex);
        }
        
        return false;
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
