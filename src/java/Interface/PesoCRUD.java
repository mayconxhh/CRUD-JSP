
package Interface;

import Model.Peso;
import java.util.List;

public interface PesoCRUD {
   public List list();
   public Peso list(int id);
   public boolean  add(Peso cl);
   public boolean  edit(Peso cl);
   public boolean delete(int id);
}
