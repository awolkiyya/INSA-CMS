/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author hp
 */
@Entity
@Table(name = "order2")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Order2.findAll", query = "SELECT o FROM Order2 o"),
    @NamedQuery(name = "Order2.findByOrderId", query = "SELECT o FROM Order2 o WHERE o.orderId = :orderId"),
    @NamedQuery(name = "Order2.findByFilename", query = "SELECT o FROM Order2 o WHERE o.filename = :filename"),
    @NamedQuery(name = "Order2.findByFilesize", query = "SELECT o FROM Order2 o WHERE o.filesize = :filesize"),
    @NamedQuery(name = "Order2.findByDeliveredby", query = "SELECT o FROM Order2 o WHERE o.deliveredby = :deliveredby"),
    @NamedQuery(name = "Order2.findByPagenumber", query = "SELECT o FROM Order2 o WHERE o.pagenumber = :pagenumber"),
    @NamedQuery(name = "Order2.findByDeliverydate", query = "SELECT o FROM Order2 o WHERE o.deliverydate = :deliverydate"),
    @NamedQuery(name = "Order2.findByOrdereddate", query = "SELECT o FROM Order2 o WHERE o.ordereddate = :ordereddate"),
    @NamedQuery(name = "Order2.findByType", query = "SELECT o FROM Order2 o WHERE o.type = :type")})
public class Order2 implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "orderId")
    private Integer orderId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 44)
    @Column(name = "filename")
    private String filename;
    @Size(max = 44)
    @Column(name = "filesize")
    private String filesize;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 44)
    @Column(name = "deliveredby")
    private String deliveredby;
    @Basic(optional = false)
    @NotNull
    @Column(name = "pagenumber")
    private int pagenumber;
    @Basic(optional = false)
    @NotNull
    @Column(name = "deliverydate")
    @Temporal(TemporalType.DATE)
    private Date deliverydate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ordereddate")
    @Temporal(TemporalType.DATE)
    private Date ordereddate;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "type")
    private String type;
    @JoinColumn(name = "employeeId", referencedColumnName = "employeeId")
    @ManyToOne(optional = false)
    private Employee employeeId;

    public Order2() {
    }

    public Order2(Integer orderId) {
        this.orderId = orderId;
    }

    public Order2(Integer orderId, String filename, String deliveredby, int pagenumber, Date deliverydate, Date ordereddate, String type) {
        this.orderId = orderId;
        this.filename = filename;
        this.deliveredby = deliveredby;
        this.pagenumber = pagenumber;
        this.deliverydate = deliverydate;
        this.ordereddate = ordereddate;
        this.type = type;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getFilesize() {
        return filesize;
    }

    public void setFilesize(String filesize) {
        this.filesize = filesize;
    }

    public String getDeliveredby() {
        return deliveredby;
    }

    public void setDeliveredby(String deliveredby) {
        this.deliveredby = deliveredby;
    }

    public int getPagenumber() {
        return pagenumber;
    }

    public void setPagenumber(int pagenumber) {
        this.pagenumber = pagenumber;
    }

    public Date getDeliverydate() {
        return deliverydate;
    }

    public void setDeliverydate(Date deliverydate) {
        this.deliverydate = deliverydate;
    }

    public Date getOrdereddate() {
        return ordereddate;
    }

    public void setOrdereddate(Date ordereddate) {
        this.ordereddate = ordereddate;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Employee getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Employee employeeId) {
        this.employeeId = employeeId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (orderId != null ? orderId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Order2)) {
            return false;
        }
        Order2 other = (Order2) object;
        if ((this.orderId == null && other.orderId != null) || (this.orderId != null && !this.orderId.equals(other.orderId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Order2[ orderId=" + orderId + " ]";
    }
    
}
