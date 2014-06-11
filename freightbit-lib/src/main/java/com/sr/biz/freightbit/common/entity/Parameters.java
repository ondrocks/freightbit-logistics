package com.sr.biz.freightbit.common.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Parameters generated by hbm2java
 */
@Entity
@Table(name="parameters"
    ,catalog="freightbit"
)
public class Parameters  implements java.io.Serializable {


     private Integer parameterId;
     private int clientId;
     private String referenceTable;
     private String referenceColumn;
     private String key;
     private String value;
     private String label;
     private String notes;
     private Date createdTimestamp;
     private String createdBy;
     private Date modifiedTimestamp;
     private String modifiedBy;

    public Parameters() {
    }

	
    public Parameters(int clientId, String referenceTable, String referenceColumn, Date createdTimestamp, String createdBy, Date modifiedTimestamp) {
        this.clientId = clientId;
        this.referenceTable = referenceTable;
        this.referenceColumn = referenceColumn;
        this.createdTimestamp = createdTimestamp;
        this.createdBy = createdBy;
        this.modifiedTimestamp = modifiedTimestamp;
    }
    public Parameters(int clientId, String referenceTable, String referenceColumn, String key, String value, String label, String notes, Date createdTimestamp, String createdBy, Date modifiedTimestamp, String modifiedBy) {
       this.clientId = clientId;
       this.referenceTable = referenceTable;
       this.referenceColumn = referenceColumn;
       this.key = key;
       this.value = value;
       this.label = label;
       this.notes = notes;
       this.createdTimestamp = createdTimestamp;
       this.createdBy = createdBy;
       this.modifiedTimestamp = modifiedTimestamp;
       this.modifiedBy = modifiedBy;
    }
   
     @Id 
     @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="parameterId", unique=true, nullable=false)
    public Integer getParameterId() {
        return this.parameterId;
    }
    
    public void setParameterId(Integer parameterId) {
        this.parameterId = parameterId;
    }

    
    @Column(name="clientId", nullable=false)
    public int getClientId() {
        return this.clientId;
    }
    
    public void setClientId(int clientId) {
        this.clientId = clientId;
    }

    
    @Column(name="referenceTable", nullable=false, length=50)
    public String getReferenceTable() {
        return this.referenceTable;
    }
    
    public void setReferenceTable(String referenceTable) {
        this.referenceTable = referenceTable;
    }

    
    @Column(name="referenceColumn", nullable=false, length=50)
    public String getReferenceColumn() {
        return this.referenceColumn;
    }
    
    public void setReferenceColumn(String referenceColumn) {
        this.referenceColumn = referenceColumn;
    }

    
    @Column(name="key", length=50)
    public String getKey() {
        return this.key;
    }
    
    public void setKey(String key) {
        this.key = key;
    }

    
    @Column(name="value", length=50)
    public String getValue() {
        return this.value;
    }
    
    public void setValue(String value) {
        this.value = value;
    }

    
    @Column(name="label", length=50)
    public String getLabel() {
        return this.label;
    }
    
    public void setLabel(String label) {
        this.label = label;
    }

    
    @Column(name="notes")
    public String getNotes() {
        return this.notes;
    }
    
    public void setNotes(String notes) {
        this.notes = notes;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="createdTimestamp", nullable=false, length=19)
    public Date getCreatedTimestamp() {
        return this.createdTimestamp;
    }
    
    public void setCreatedTimestamp(Date createdTimestamp) {
        this.createdTimestamp = createdTimestamp;
    }

    
    @Column(name="createdBy", nullable=false, length=10)
    public String getCreatedBy() {
        return this.createdBy;
    }
    
    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="modifiedTimestamp", nullable=false, length=19)
    public Date getModifiedTimestamp() {
        return this.modifiedTimestamp;
    }
    
    public void setModifiedTimestamp(Date modifiedTimestamp) {
        this.modifiedTimestamp = modifiedTimestamp;
    }

    
    @Column(name="modifiedBy", length=10)
    public String getModifiedBy() {
        return this.modifiedBy;
    }
    
    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }




}

