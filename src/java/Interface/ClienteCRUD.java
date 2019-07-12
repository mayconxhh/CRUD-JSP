/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Model.Cliente;
import java.util.*;

/**
 *
 * @author Familia
 */
public interface ClienteCRUD {
   public List list();
   public Cliente list(int id);
   public boolean  add(Cliente cl);
   public boolean  edit(Cliente cl);
   public boolean delete(int id);
}
