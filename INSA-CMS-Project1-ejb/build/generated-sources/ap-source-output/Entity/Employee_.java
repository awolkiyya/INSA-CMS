package Entity;

import Entity.Order2;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-08-20T12:37:16")
@StaticMetamodel(Employee.class)
public class Employee_ { 

    public static volatile SingularAttribute<Employee, String> fname;
    public static volatile SingularAttribute<Employee, String> lname;
    public static volatile SingularAttribute<Employee, String> password;
    public static volatile SingularAttribute<Employee, Integer> phoneNumber;
    public static volatile SingularAttribute<Employee, String> gender;
    public static volatile SingularAttribute<Employee, byte[]> profile;
    public static volatile SingularAttribute<Employee, Integer> employeeId;
    public static volatile SingularAttribute<Employee, String> proname;
    public static volatile SingularAttribute<Employee, String> mname;
    public static volatile ListAttribute<Employee, Order2> order2List;
    public static volatile SingularAttribute<Employee, String> department;
    public static volatile SingularAttribute<Employee, String> status;

}