/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Model.Vacuna;
import java.util.List;

/**
 *
 * @author Familia
 */
public interface VacunaCRUD {
   public List list();
   public Vacuna list(int id);
   public boolean  add(Vacuna v);
   public boolean  edit(Vacuna v);
   public boolean delete(int id);
}
