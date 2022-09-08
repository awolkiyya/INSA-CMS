package Session;
import Entity.Message;
import Mapper.MessageFacade;
import java.util.List;
import javax.ejb.EJB;
import javax.ejb.Stateless;
@Stateless
public class MessageSession implements MessageSessionLocal {
    @EJB
    private MessageFacade messageFacade;

    @Override
    public boolean save(Message m) {
       messageFacade.create(m);
       return true;
    }

    @Override
    public List<Message> findAll() {
       return messageFacade.findAll();
    }

}
