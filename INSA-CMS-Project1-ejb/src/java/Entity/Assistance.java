/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author hp
 */
@Entity
@Table(name = "assistance")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Assistance.findAll", query = "SELECT a FROM Assistance a"),
    @NamedQuery(name = "Assistance.findByAssistance", query = "SELECT a FROM Assistance a WHERE a.assistance = :assistance"),
    @NamedQuery(name = "Assistance.findByFname", query = "SELECT a FROM Assistance a WHERE a.fname = :fname"),
    @NamedQuery(name = "Assistance.findByMname", query = "SELECT a FROM Assistance a WHERE a.mname = :mname"),
    @NamedQuery(name = "Assistance.findByLname", query = "SELECT a FROM Assistance a WHERE a.lname = :lname"),
    @NamedQuery(name = "Assistance.findByDepartment", query = "SELECT a FROM Assistance a WHERE a.department = :department"),
    @NamedQuery(name = "Assistance.findById", query = "SELECT a FROM Assistance a WHERE a.id = :id"),
    @NamedQuery(name = "Assistance.findByPhoneNumber", query = "SELECT a FROM Assistance a WHERE a.phoneNumber = :phoneNumber"),
    @NamedQuery(name = "Assistance.findByGender", query = "SELECT a FROM Assistance a WHERE a.gender = :gender"),
    @NamedQuery(name = "Assistance.findByStatus", query = "SELECT a FROM Assistance a WHERE a.status = :status")})
public class Assistance implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "assistance")
    private Integer assistance;
    @Size(max = 33)
    @Column(name = "fname")
    private String fname;
    @Size(max = 33)
    @Column(name = "mname")
    private String mname;
    @Size(max = 33)
    @Column(name = "lname")
    private String lname;
    @Size(max = 33)
    @Column(name = "department")
    private String department;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 22)
    @Column(name = "id")
    private String id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "phoneNumber")
    private int phoneNumber;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "gender")
    private String gender;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "status")
    private String status;

    public Assistance() {
    }

    public Assistance(Integer assistance) {
        this.assistance = assistance;
    }

    public Assistance(Integer assistance, String id, int phoneNumber, String gender, String status) {
        this.assistance = assistance;
        this.id = id;
        this.phoneNumber = phoneNumber;
        this.gender = gender;
        this.status = status;
    }

    public Integer getAssistance() {
        return assistance;
    }

    public void setAssistance(Integer assistance) {
        this.assistance = assistance;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (assistance != null ? assistance.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Assistance)) {
            return false;
        }
        Assistance other = (Assistance) object;
        if ((this.assistance == null && other.assistance != null) || (this.assistance != null && !this.assistance.equals(other.assistance))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Assistance[ assistance=" + assistance + " ]";
    }
    
}
