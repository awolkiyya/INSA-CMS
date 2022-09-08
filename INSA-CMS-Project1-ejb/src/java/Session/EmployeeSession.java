package Session;
import Entity.Employee;
import Mapper.EmployeeFacade;
import java.util.List;
import javax.ejb.EJB;
import javax.ejb.Stateless;
@Stateless
public class EmployeeSession implements EmployeeSessionLocal {
    @EJB
    private EmployeeFacade employeeFacade;
    @Override
    public List<Employee> findByAllPassword(String id) {
        return employeeFacade.findByAllPassword(id);
    }

    @Override
    public Employee findByPassword(String password) {
        return employeeFacade.findByPassword(password);
    }

    @Override
    public List<Employee> findAll() {
       return employeeFacade.findAll();
    }

    @Override
    public void delete(Employee employee) {
        employeeFacade.remove(employee);
    }

    @Override
    public boolean save(Employee em) {
       employeeFacade.create(em);
        return true;
    }

    @Override
    public boolean edit(Employee e) {
        employeeFacade.edit(e);
        return true;
    }
}
