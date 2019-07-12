/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Model.Paciente;
import java.util.*;

/**
 *
 * @author Familia
 */
public interface PacienteCRUD {
    public List list();
    public Paciente list(int id);
    public boolean  add(Paciente cl);
    public boolean  edit(Paciente cl);
    public boolean delete(int id);
}
