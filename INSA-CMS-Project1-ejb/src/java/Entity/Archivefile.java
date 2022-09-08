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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "archivefile")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Archivefile.findAll", query = "SELECT a FROM Archivefile a"),
    @NamedQuery(name = "Archivefile.findByFileId", query = "SELECT a FROM Archivefile a WHERE a.fileId = :fileId"),
    @NamedQuery(name = "Archivefile.findByFilename", query = "SELECT a FROM Archivefile a WHERE a.filename = :filename"),
    @NamedQuery(name = "Archivefile.findByFilesize", query = "SELECT a FROM Archivefile a WHERE a.filesize = :filesize"),
    @NamedQuery(name = "Archivefile.findByDiscription", query = "SELECT a FROM Archivefile a WHERE a.discription = :discription")})
public class Archivefile implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "fileId")
    private Integer fileId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "filename")
    private String filename;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "filesize")
    private String filesize;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "discription")
    private String discription;
    @JoinColumn(name = "employeeId", referencedColumnName = "employeeId")
    @ManyToOne(optional = false)
    private Employee employeeId;

    public Archivefile() {
    }

    public Archivefile(Integer fileId) {
        this.fileId = fileId;
    }

    public Archivefile(Integer fileId, String filename, String filesize, String discription) {
        this.fileId = fileId;
        this.filename = filename;
        this.filesize = filesize;
        this.discription = discription;
    }

    public Integer getFileId() {
        return fileId;
    }

    public void setFileId(Integer fileId) {
        this.fileId = fileId;
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

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
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
        hash += (fileId != null ? fileId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Archivefile)) {
            return false;
        }
        Archivefile other = (Archivefile) object;
        if ((this.fileId == null && other.fileId != null) || (this.fileId != null && !this.fileId.equals(other.fileId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Archivefile[ fileId=" + fileId + " ]";
    }
    
}
