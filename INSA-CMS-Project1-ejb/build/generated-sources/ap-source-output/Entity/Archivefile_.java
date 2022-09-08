package Entity;

import Entity.Employee;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-08-20T12:37:16")
@StaticMetamodel(Archivefile.class)
public class Archivefile_ { 

    public static volatile SingularAttribute<Archivefile, String> filename;
    public static volatile SingularAttribute<Archivefile, String> discription;
    public static volatile SingularAttribute<Archivefile, Employee> employeeId;
    public static volatile SingularAttribute<Archivefile, String> filesize;
    public static volatile SingularAttribute<Archivefile, Integer> fileId;

}