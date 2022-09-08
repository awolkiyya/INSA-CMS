package Session;
import Entity.Order2;
import Mapper.Order2Facade;
import java.util.List;
import javax.ejb.EJB;
import javax.ejb.Stateless;
@Stateless
public class OrderSession1 implements OrderSession1Local {
    @EJB
    private Order2Facade order2Facade;
    @Override
    public boolean s(Order2 order) {
        order2Facade.create(order);
        return true;
    }

    @Override
    public List<Order2> findAll() {
        return order2Facade.findAll();
    }

    @Override
    public Order2 findById(int id) {
        return order2Facade.findById(id);
    }

    @Override
    public void delete(Order2 order) {
        order2Facade.remove(order);
    }

}
