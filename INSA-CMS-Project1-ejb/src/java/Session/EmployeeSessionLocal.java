package Session;
import Entity.Employee;
import java.util.List;
import javax.ejb.Local;
@Local
public interface EmployeeSessionLocal {
    public List<Employee> findByAllPassword(String id);

    public Employee findByPassword(String password);

    public List<Employee> findAll();

    public void delete(Employee employee);

    public boolean save(Employee em); 

    public boolean edit(Employee e);
}
