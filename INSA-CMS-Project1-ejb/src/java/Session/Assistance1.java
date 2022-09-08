package Session;
import Entity.Assistance;
import Mapper.AssistanceFacade;
import java.util.List;
import javax.ejb.EJB;
import javax.ejb.Stateless;
@Stateless
public class Assistance1 implements AssistanceLocal {
    @EJB
    private AssistanceFacade assistanceFacade;

    @Override
    public List<Assistance> findAll() {
          return assistanceFacade.findAll();
    }

    @Override
    public boolean save(Assistance assistance) {
     assistanceFacade.create(assistance);
     return true;
    }

    @Override
    public List<Assistance> findByAllPassword(String p111) {
        return assistanceFacade.findByAllPassword(p111);
    }

    @Override
    public Assistance findById(String p1) {
      return assistanceFacade.findById(p1);
    }

    @Override
    public boolean edit(Assistance el) {
      assistanceFacade.edit(el);
      return true;
    }

    @Override
    public void delete(Assistance as) {
        assistanceFacade.remove(as);
    }
}
