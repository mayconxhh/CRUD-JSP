/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Model.PersonaCliente;
import java.util.List;

/**
 *
 * @author Familia
 */
public interface PersonaClienteCRUD {
   public List list();
   public PersonaCliente list(int id);
   public boolean  add(PersonaCliente pc);
   public boolean  edit(PersonaCliente pc);
   public boolean delete(int id);
}
