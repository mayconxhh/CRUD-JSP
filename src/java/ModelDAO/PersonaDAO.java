/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelDAO;

import Interface.PersonaCRUD;
import Model.Persona;
import Config.Conection;
import com.mysql.jdbc.Connection;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Familia
 */
public class PersonaDAO implements PersonaCRUD {
    Conection cn = new Conection();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona u = new Persona();
    
    public List listPC(int id) {
        
        ArrayList<Persona>list = new ArrayList<>();
        String sql = "select persona.idPersona, persona.nombrePersona, persona.apellidoPersona from personaCliente inner join persona on personaCliente.idPersona=persona.idPersona where idCliente="+id;
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Persona p = new Persona();
                p.setIdPersona(rs.getInt("idPersona"));
                p.setNombrePersona(rs.getString("nombrePersona"));
                p.setApellidoPersona(rs.getString("apellidoPersona"));
                list.add(p);
            }
            
        } catch(SQLException ex){
            System.out.println("Error: "+ex);
        }
        
        return list;
    }

    @Override
    public List list() {
        ArrayList<Persona>list = new ArrayList<>();
        String sql = "select * from persona";
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Persona p = new Persona();
                p.setIdPersona(rs.getInt("idPersona"));
                p.setNombrePersona(rs.getString("nombrePersona"));
                p.setApellidoPersona(rs.getString("apellidoPersona"));
                p.setTelefono(rs.getString("telefono"));
                list.add(p);
            }
            
        } catch(SQLException ex){
            System.out.println("Error: "+ex);
        }
        
        return list;
    }

    @Override
    public Persona list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Persona p) {
        String sql = "insert into Persona (idUsuario, nombrePersona, apellidoPersona, telefono) values("+p.getIdUsuario()+", '"+p.getNombrePersona()+"', '"+p.getApellidoPersona()+"', '"+p.getTelefono()+"')";
        
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
    public boolean edit(Persona p) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
