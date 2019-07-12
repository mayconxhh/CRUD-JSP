/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Model.Usuario;
import java.util.List;

/**
 *
 * @author Familia
 */
public interface UsuarioCRUD {
   public List list();
   public Usuario list(int id);
   public boolean  add(Usuario user);
   public boolean  edit(Usuario user);
   public boolean delete(int id);
}
