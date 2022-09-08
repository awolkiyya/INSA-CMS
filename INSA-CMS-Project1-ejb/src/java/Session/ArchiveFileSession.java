package Session;
import Entity.Archivefile;
import Mapper.ArchivefileFacade;
import java.util.List;
import javax.ejb.EJB;
import javax.ejb.Stateless;
@Stateless
public class ArchiveFileSession implements ArchiveFileSessionLocal {
    @EJB
    private ArchivefileFacade archivefileFacade;
    @Override
    public List<Archivefile> findAll() {
     return archivefileFacade.findAll();
    }

    @Override
    public boolean save(Archivefile archive) {
       archivefileFacade.create(archive);
       return true;
    }

    @Override
    public List<Archivefile> findById(String fileId) {
       return archivefileFacade.findById(fileId);
    }

    @Override
    public boolean updateing(Archivefile archive1) {
     archivefileFacade.edit(archive1);
     return true;
    }

    @Override
    public Archivefile findById(int fId) {
          return archivefileFacade.findById(fId);
    }

    @Override
    public void delete(Archivefile archive) {
      archivefileFacade.remove(archive);
    }

}
