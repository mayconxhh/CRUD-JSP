/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelDAO;

import Config.Conection;
import Interface.CitaCRUD;
import Model.Cita;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Familia
 */
public class CitaDAO implements CitaCRUD{
    Conection cn = new Conection();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Cita ci = new Cita();

    @Override
    public List list() {
        ArrayList<Cita>list = new ArrayList<>();
        String sql = "select * from cita";
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Cita cl = new Cita();
                cl.setIdCita(rs.getInt("idCita"));
                cl.setIdCliente(rs.getInt("idCliente"));
                cl.setNombreCita(rs.getString("nombreCita"));
                cl.setIdUsuario(rs.getInt("idUsuario"));
                cl.setIdMascota(rs.getInt("idMascota"));
                cl.setDescripcion(rs.getString("descripcion"));
                cl.setFecha(rs.getString("fecha"));
                cl.setEstado(rs.getBoolean("estado"));
                list.add(cl);
            }
        } catch(SQLException ex){
            System.out.println("Error: "+ex);
        }
        
        return list;
    }

    public List listLS() {
        ArrayList<Cita>list = new ArrayList<>();
        String sql = "select * from cita where idUsuario=1 order by idCita DESC LIMIT 5";
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Cita cl = new Cita();
                cl.setIdCita(rs.getInt("idCita"));
                cl.setIdCliente(rs.getInt("idCliente"));
                cl.setNombreCita(rs.getString("nombreCita"));
                cl.setIdUsuario(rs.getInt("idUsuario"));
                cl.setIdMascota(rs.getInt("idMascota"));
                cl.setDescripcion(rs.getString("descripcion"));
                cl.setFecha(rs.getString("fecha"));
                cl.setEstado(rs.getBoolean("estado"));
                list.add(cl);
            }
        } catch(SQLException ex){
            System.out.println("Error: "+ex);
        }
        
        return list;
    }

    @Override
    public Cita list(int id) {
        Cita cl = new Cita();
        String sql = "select * from cita where idCita="+id;
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                cl.setIdCita(rs.getInt("idCita"));
                cl.setIdCliente(rs.getInt("idCliente"));
                cl.setNombreCita(rs.getString("nombreCita"));
                cl.setIdUsuario(rs.getInt("idUsuario"));
                cl.setIdMascota(rs.getInt("idMascota"));
                cl.setDescripcion(rs.getString("descripcion"));
                cl.setFecha(rs.getString("fecha"));
                cl.setEstado(rs.getBoolean("estado"));
            }
            
        } catch(SQLException ex){
            System.out.println("Error: "+ex);
        }
        
        return cl;
    }

    @Override
    public boolean add(Cita ci) {
        
        String sql = "insert into cita(idUsuario, idMascota, idCliente, nombreCita, estado, fecha, descripcion) values("+ci.getIdUsuario()+", "+ci.getIdMascota()+", "+ci.getIdCliente()+",'"+ci.getNombreCita()+"', "+ci.isEstado()+", '"+ci.getFecha()+"', '"+ci.getDescripcion()+"')";
        
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
    public boolean edit(Cita ci) {
        String sql = "update cita set idUsuario='"+ci.getIdUsuario()+"', idPersona='"+ci.getIdPersona()+"', estado="+ci.isEstado()+", descripcion='"+ci.getDescripcion()+"', fecha='"+ci.getFecha()+"' where idCita="+ci.getIdCita();
        
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
