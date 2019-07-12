/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelDAO;

import Config.Conection;
import Interface.PacienteCRUD;
import Model.Paciente;
import com.mysql.jdbc.Connection;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Familia
 */
public class PacienteDAO implements PacienteCRUD {
    Conection cn = new Conection();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Paciente u = new Paciente();
    
    public List listD() {
        ArrayList<Paciente>list = new ArrayList<>();
        String sql = "select * from paciente limit 5";
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Paciente pl = new Paciente();
                pl.setIdMascota(rs.getInt("idMascota"));
                pl.setIdUsuario(rs.getInt("idUsuario"));
                pl.setIdCliente(rs.getInt("idCliente"));
                pl.setAliasMascota(rs.getString("aliasMascota"));
                pl.setFechaNacimiento(rs.getString("fechaNacimiento"));
                pl.setEspecie(rs.getString("especie"));
                pl.setRaza(rs.getString("raza"));
                pl.setColorPelo(rs.getString("colorPelo"));
                list.add(pl);
                
            }
        } catch(SQLException ex){
            System.out.println("Error: "+ex);
        }
        
        return list;
    }
    
    @Override
    public List list() {
        ArrayList<Paciente> list = new ArrayList<>();
        String sql = "select * from paciente";
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Paciente pl = new Paciente();
                pl.setIdMascota(rs.getInt("idMascota"));
                pl.setIdUsuario(rs.getInt("idUsuario"));
                pl.setIdCliente(rs.getInt("idCliente"));
                pl.setAliasMascota(rs.getString("aliasMascota"));
                pl.setFechaNacimiento(rs.getString("fechaNacimiento"));
                pl.setEspecie(rs.getString("especie"));
                pl.setRaza(rs.getString("raza"));
                pl.setColorPelo(rs.getString("colorPelo"));
                list.add(pl);
                
            }
        } catch(SQLException ex){
            System.out.println("Error: "+ex);
        }
        
        return list;
    }

    @Override
    public Paciente list(int id) {
        String sql = "select * from paciente where idMascota="+id;
        Paciente pl = new Paciente();
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                pl.setIdMascota(rs.getInt("idMascota"));
                pl.setIdUsuario(rs.getInt("idUsuario"));
                pl.setIdCliente(rs.getInt("idCliente"));
                pl.setAliasMascota(rs.getString("aliasMascota"));
                pl.setFechaNacimiento(rs.getString("fechaNacimiento"));
                pl.setEspecie(rs.getString("especie"));
                pl.setRaza(rs.getString("raza"));
                pl.setColorPelo(rs.getString("colorPelo"));
                
            }
        } catch(SQLException ex){
            System.out.println("Error: "+ex);
        }
        
        return pl;
    }

    @Override
    public boolean add(Paciente cl) {
        String sql = "insert into paciente (idUsuario, aliasMascota, idCliente, especie, raza, colorPelo, fechaNacimiento) values('"+cl.getIdUsuario()+"','"+cl.getAliasMascota()+"', '"+cl.getIdCliente()+"', '"+cl.getEspecie()+"', '"+cl.getRaza()+"', '"+cl.getColorPelo()+"', '"+cl.getFechaNacimiento()+"')";
        
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
    public boolean edit(Paciente cl) {

        String sql = "update paciente set aliasMascota='"+cl.getAliasMascota()+"', idCliente='"+cl.getIdCliente()+"', especie='"+cl.getEspecie()+"', raza='"+cl.getRaza()+"', colorPelo='"+cl.getColorPelo()+"', fechaNacimiento='"+cl.getFechaNacimiento()+"' where idMascota="+cl.getIdMascota();
        
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
