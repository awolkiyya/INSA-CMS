/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Session;

import Entity.Archivefile;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author hp
 */
@Local
public interface ArchiveFileSessionLocal {

    public List<Archivefile> findAll();

    public boolean save(Archivefile archive);

    public List<Archivefile> findById(String fileId);

    public boolean updateing(Archivefile archive);

    public Archivefile findById(int fId);

    public void delete(Archivefile archive);
    
}
