/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelDAO;

import Config.Conection;
import Interface.VacunaCRUD;
import Model.Vacuna;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Familia
 */
public class VacunaDAO implements VacunaCRUD{
Conection cn = new Conection();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Vacuna v = new Vacuna();
    
    @Override
    public List list() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Vacuna list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Vacuna v) {
        String sql = "insert into Vacuna (idUsuario, idMascota, fecha, enfermedad, fechaProxima) values("+v.getIdUsuario()+", "+v.getIdMascota()+", '"+v.getFecha()+"', '"+v.getEnfermedad()+"', '"+v.getFechaProxima()+"')";
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
    public boolean edit(Vacuna v) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
