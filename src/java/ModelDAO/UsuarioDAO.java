/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelDAO;

import Config.Conection;
import Interface.UsuarioCRUD;
import Model.Usuario;
import com.mysql.jdbc.Connection;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Familia
 */
public class UsuarioDAO implements UsuarioCRUD{
    Conection cn = new Conection();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Usuario u = new Usuario();

    public List<Usuario> access(String username, String password){
        ArrayList<Usuario> list = new ArrayList<Usuario>();
        String sql = "select * from usuario where username='"+username+"' and password='"+password+"'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Usuario user = new Usuario();
                user.setIdUsuario(rs.getInt("idUsuario"));
                user.setUsername(rs.getString("username"));
                user.setNombres(rs.getString("nombres"));
                user.setApellidos(rs.getString("apellidos"));
                user.setRol(rs.getString("rol"));
                user.setTelefono(rs.getString("telefono"));
                list.add(user);
            }
            
        } catch(SQLException ex){
            System.out.println("Error: "+ex);
        }
        
        return list;
    }
    
    @Override
    public List<Usuario> list() {
        ArrayList<Usuario>list = new ArrayList<>();
        String sql = "select * from usuario";
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Usuario user = new Usuario();
                user.setIdUsuario(rs.getInt("idUsuario"));
                user.setUsername(rs.getString("username"));
                user.setNombres(rs.getString("nombres"));
                user.setApellidos(rs.getString("apellidos"));
                user.setRol(rs.getString("rol"));
                user.setTelefono(rs.getString("telefono"));
                list.add(user);
            }
        } catch(SQLException ex){
            System.out.println("Error: "+ex);
        }
        
        return list;
    }

    @Override
    public Usuario list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Usuario user) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit(Usuario user) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
