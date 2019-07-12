/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelDAO;

import Config.Conection;
import Interface.PersonaClienteCRUD;
import Model.PersonaCliente;
import com.mysql.jdbc.Connection;
import java.util.*;
import java.sql.*;

/**
 *
 * @author Familia
 */
public class PersonaClienteDAO implements PersonaClienteCRUD {
    Conection cn = new Conection();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    PersonaCliente u = new PersonaCliente();

    @Override
    public List list() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public PersonaCliente list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(PersonaCliente pc) {
        
        String sql = "insert into PersonaCliente ( idCliente, idPersona, idUsuario ) values("+pc.getIdCliente()+", '"+pc.getIdPersona()+"', '"+pc.getIdUsuairo()+"')";
        
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
    public boolean edit(PersonaCliente pc) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
