package Mapper;
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
public class EmployeeFacade extends AbstractFacade<Employee> {
    @PersistenceContext(unitName = "INSA-CMS-Project1-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public EmployeeFacade() {
        super(Employee.class);
    }
      public List<Employee> findByAllPassword(String id) {
         Query q = em.createNamedQuery("Employee.findByPassword");
        q.setParameter("password",id);
        try {
            List<Employee> empatt = new ArrayList<>(q.getResultList());
            return empatt;
        } catch (Exception e) {
            return null;
        }
    }
    public Employee findByPassword(String password) {
     Employee emplo=null;
       Query q = em.createNamedQuery("Employee.findByPassword");
        q.setParameter("password",password);
        try {
            List<Employee> empatt = new ArrayList<>(q.getResultList());
            for(Employee m:empatt){
                emplo=m;
            }
            return emplo;
        } catch (Exception e) {
            return null;
        }
    }
    
}
