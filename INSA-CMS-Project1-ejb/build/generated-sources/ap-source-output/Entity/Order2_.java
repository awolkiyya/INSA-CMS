package Entity;

import Entity.Employee;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-08-20T12:37:16")
@StaticMetamodel(Order2.class)
public class Order2_ { 

    public static volatile SingularAttribute<Order2, String> filename;
    public static volatile SingularAttribute<Order2, String> deliveredby;
    public static volatile SingularAttribute<Order2, Date> ordereddate;
    public static volatile SingularAttribute<Order2, Integer> orderId;
    public static volatile SingularAttribute<Order2, Employee> employeeId;
    public static volatile SingularAttribute<Order2, String> filesize;
    public static volatile SingularAttribute<Order2, String> type;
    public static volatile SingularAttribute<Order2, Integer> pagenumber;
    public static volatile SingularAttribute<Order2, Date> deliverydate;

}