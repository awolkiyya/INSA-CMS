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
@Table(name = "ord")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Ord.findAll", query = "SELECT o FROM Ord o"),
    @NamedQuery(name = "Ord.findByOrdId", query = "SELECT o FROM Ord o WHERE o.ordId = :ordId"),
    @NamedQuery(name = "Ord.findByName", query = "SELECT o FROM Ord o WHERE o.name = :name"),
    @NamedQuery(name = "Ord.findByPage", query = "SELECT o FROM Ord o WHERE o.page = :page"),
    @NamedQuery(name = "Ord.findBySize", query = "SELECT o FROM Ord o WHERE o.size = :size"),
    @NamedQuery(name = "Ord.findByFileName", query = "SELECT o FROM Ord o WHERE o.fileName = :fileName")})
public class Ord implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ordId")
    private Integer ordId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Name")
    private String name;
    @Basic(optional = false)
    @NotNull
    @Column(name = "page")
    private int page;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "size")
    private String size;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "fileName")
    private String fileName;

    public Ord() {
    }

    public Ord(Integer ordId) {
        this.ordId = ordId;
    }

    public Ord(Integer ordId, String name, int page, String size, String fileName) {
        this.ordId = ordId;
        this.name = name;
        this.page = page;
        this.size = size;
        this.fileName = fileName;
    }

    public Integer getOrdId() {
        return ordId;
    }

    public void setOrdId(Integer ordId) {
        this.ordId = ordId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (ordId != null ? ordId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Ord)) {
            return false;
        }
        Ord other = (Ord) object;
        if ((this.ordId == null && other.ordId != null) || (this.ordId != null && !this.ordId.equals(other.ordId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Ord[ ordId=" + ordId + " ]";
    }
    
}
