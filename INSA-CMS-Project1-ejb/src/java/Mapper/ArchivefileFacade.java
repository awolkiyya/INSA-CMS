/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mapper;

import Entity.Archivefile;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author hp
 */
@Stateless
public class ArchivefileFacade extends AbstractFacade<Archivefile> {
    @PersistenceContext(unitName = "INSA-CMS-Project1-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ArchivefileFacade() {
        super(Archivefile.class);
    }

    public List<Archivefile> findById(String fileId) {
        int id=Integer.parseInt(fileId);
        Query q = em.createNamedQuery("Archivefile.findByFileId");
        q.setParameter("fileId",id);
        try {
            List<Archivefile> file = new ArrayList<>(q.getResultList());
            return file;
        } catch (Exception e) {
            return null;
        }
    }

    public Archivefile findById(int fId) {
       Archivefile archFile=null;
       Query q = em.createNamedQuery("Archivefile.findByFileId");
        q.setParameter("fileId",fId);
        try {
            List<Archivefile> empatt = new ArrayList<>(q.getResultList());
            for(Archivefile m:empatt){
                archFile=m;
            }
            return archFile;
        } catch (Exception e) {
            return null;
        }
    }
    
}
