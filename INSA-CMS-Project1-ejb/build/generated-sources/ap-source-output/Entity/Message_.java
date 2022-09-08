package Entity;

import Entity.Employee;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-08-20T12:37:16")
@StaticMetamodel(Message.class)
public class Message_ { 

    public static volatile SingularAttribute<Message, String> employeeName;
    public static volatile SingularAttribute<Message, Integer> messageId;
    public static volatile SingularAttribute<Message, Employee> employeeId;
    public static volatile SingularAttribute<Message, String> message;
    public static volatile SingularAttribute<Message, String> status;

}