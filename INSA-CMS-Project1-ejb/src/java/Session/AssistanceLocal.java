/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Session;

import Entity.Assistance;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author hp
 */
@Local
public interface AssistanceLocal {

    public List<Assistance> findAll();

    public boolean save(Assistance assistance);

    public List<Assistance> findByAllPassword(String p111);

    public Assistance findById(String p1);

    public boolean edit(Assistance el);    

    public void delete(Assistance assistance);
}
