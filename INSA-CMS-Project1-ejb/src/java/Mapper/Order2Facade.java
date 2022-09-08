/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mapper;

import Entity.Order2;
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
public class Order2Facade extends AbstractFacade<Order2> {
    @PersistenceContext(unitName = "INSA-CMS-Project1-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public Order2Facade() {
        super(Order2.class);
    }

    public Order2 findById(int id) {
       Order2 order=null;
       Query q = em.createNamedQuery("Order2.findByOrderId");
        q.setParameter("orderId",id);
        try {
            List<Order2> allOrder = new ArrayList<>(q.getResultList());
            for(Order2 m:allOrder){
                order=m;
            }
            return order;
        } catch (Exception e) {
            return null;
        }
    }
    
}
