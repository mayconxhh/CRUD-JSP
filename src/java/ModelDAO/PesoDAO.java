
package ModelDAO;

import Config.Conection;
import Interface.PesoCRUD;
import Model.Peso;
import java.util.*;
import java.sql.*;

public class PesoDAO implements PesoCRUD{
    Conection cn = new Conection();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Peso u = new Peso();

    @Override
    public List list() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Peso list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Peso cl) {
        String sql = "insert into Peso (idUsuario, idMascota, fecha, peso) values("+cl.getIdUsuario()+", "+cl.getIdMascota()+", '"+cl.getFecha()+"', "+cl.getPeso()+")";
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
    public boolean edit(Peso cl) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
