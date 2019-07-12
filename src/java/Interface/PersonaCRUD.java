/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Model.Persona;
import java.util.List;

/**
 *
 * @author Familia
 */
public interface PersonaCRUD {
   public List list();
   public Persona list(int id);
   public boolean  add(Persona p);
   public boolean  edit(Persona p);
   public boolean delete(int id);
}
