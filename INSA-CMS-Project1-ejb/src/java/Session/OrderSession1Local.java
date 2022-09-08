/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Session;
import Entity.Order2;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author hp
 */
@Local
public interface OrderSession1Local {
  public boolean s(Order2 order);   

    public List<Order2> findAll();

    public Order2 findById(int id);

    public void delete(Order2 order);
}
