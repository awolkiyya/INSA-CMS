/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mapper;

import Entity.Assistance;
import Entity.Employee;
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
public class AssistanceFacade extends AbstractFacade<Assistance> {
    @PersistenceContext(unitName = "INSA-CMS-Project1-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AssistanceFacade() {
        super(Assistance.class);
    }

    public List<Assistance> findByAllPassword(String p111) {
       Query q = em.createNamedQuery("Assistance.findById");
        q.setParameter("id", p111);
        try {
            List<Assistance> empatt = new ArrayList<>(q.getResultList());
            return empatt;
        } catch (Exception e) {
            return null;
        }
    }

    public Assistance findById(String p1) {
       Assistance emplo=null;
       Query q = em.createNamedQuery("Assistance.findById");
        q.setParameter("id",p1);
        try {
            List<Assistance> empatt = new ArrayList<>(q.getResultList());
            for(Assistance m:empatt){
                emplo=m;
            }
            return emplo;
        } catch (Exception e) {
            return null;
        }
    }
    
}
