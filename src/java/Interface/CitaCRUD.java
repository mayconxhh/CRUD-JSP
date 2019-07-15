/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Model.Cita;
import java.util.List;

/**
 *
 * @author Familia
 */
public interface CitaCRUD {
   public List list();
   public Cita list(int id);
   public boolean  add(Cita ci);
   public boolean  edit(Cita ci);
   public boolean delete(int id);
}
