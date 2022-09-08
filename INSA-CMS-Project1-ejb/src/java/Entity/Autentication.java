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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author hp
 */
@Entity
@Table(name = "autentication")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Autentication.findAll", query = "SELECT a FROM Autentication a"),
    @NamedQuery(name = "Autentication.findById", query = "SELECT a FROM Autentication a WHERE a.id = :id"),
    @NamedQuery(name = "Autentication.findBySelectore", query = "SELECT a FROM Autentication a WHERE a.selectore = :selectore"),
    @NamedQuery(name = "Autentication.findByValidator", query = "SELECT a FROM Autentication a WHERE a.validator = :validator"),
    @NamedQuery(name = "Autentication.findByEid", query = "SELECT a FROM Autentication a WHERE a.eid = :eid")})
public class Autentication implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Id")
    private Integer id;
    @Size(max = 22)
    @Column(name = "selectore")
    private String selectore;
    @Size(max = 64)
    @Column(name = "validator")
    private String validator;
    @Size(max = 33)
    @Column(name = "Eid")
    private String eid;

    public Autentication() {
    }

    public Autentication(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSelectore() {
        return selectore;
    }

    public void setSelectore(String selectore) {
        this.selectore = selectore;
    }

    public String getValidator() {
        return validator;
    }

    public void setValidator(String validator) {
        this.validator = validator;
    }

    public String getEid() {
        return eid;
    }

    public void setEid(String eid) {
        this.eid = eid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Autentication)) {
            return false;
        }
        Autentication other = (Autentication) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Autentication[ id=" + id + " ]";
    }
    
}
