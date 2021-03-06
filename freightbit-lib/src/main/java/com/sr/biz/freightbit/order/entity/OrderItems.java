package com.sr.biz.freightbit.order.entity;

import com.sr.biz.freightbit.operations.entity.OrderStatusLogs;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "orderitems"
        , catalog = "freightbit"
)
public class OrderItems implements Serializable {

    private Integer orderItemId;
    private Integer clientId;
    //private Orders order;
    private Integer orderId;
    private Integer quantity;
    private String classification;
    private String commodity;
    private Double declaredValue;
    private Double weight;
    private String comments;
    private Date createdTimestamp;
    private String createdBy;
    private Date modifiedTimestamp;
    private String modifiedBy;
    private Float rate;
    private String nameSize;
    private String status;
    private Float volume;
    private String vendorOrigin;
    private String vendorSea;
    /*private String vesselName;*/
    private String vendorDestination;
    private String finalPickupDate;
    private String finalDeliveryDate;
    private String vesselScheduleId;
    private String driverOrigin;
    private String driverDestination;
    private String truckOrigin;
    private String truckDestination;
    private Integer containerId;
    private Integer documentId;
    private String serviceRequirement;

    public OrderItems() {
    }

    public OrderItems(String comments, Integer orderItemId, Integer clientId, Integer orderId, Integer quantity, String classification, String commodity, Double declaredValue, Double weight, Date createdTimestamp, String createdBy, Date modifiedTimestamp, String modifiedBy, Float rate, String nameSize, String status, Float volume, String vendorOrigin, String vendorSea, String vendorDestination, String finalPickupDate, String finalDeliveryDate, String vesselScheduleId, String driverOrigin, String driverDestination, String truckOrigin, String truckDestination, Integer containerId, Integer documentId, String serviceRequirement) {
        this.comments = comments;
        this.orderItemId = orderItemId;
        this.clientId = clientId;
        this.orderId = orderId;
        this.quantity = quantity;
        this.classification = classification;
        this.commodity = commodity;
        this.declaredValue = declaredValue;
        this.weight = weight;
        this.createdTimestamp = createdTimestamp;
        this.createdBy = createdBy;
        this.modifiedTimestamp = modifiedTimestamp;
        this.modifiedBy = modifiedBy;
        this.rate = rate;
        this.nameSize = nameSize;
        this.status = status;
        this.volume = volume;
        this.vendorOrigin = vendorOrigin;
        this.vendorSea = vendorSea;
        this.vendorDestination = vendorDestination;
        this.finalPickupDate = finalPickupDate;
        this.finalDeliveryDate = finalDeliveryDate;
        this.vesselScheduleId = vesselScheduleId;
        this.driverOrigin = driverOrigin;
        this.driverDestination = driverDestination;
        this.truckOrigin = truckOrigin;
        this.truckDestination = truckDestination;
        this.containerId = containerId;
        this.documentId = documentId;
        this.serviceRequirement = serviceRequirement;
    }

    public OrderItems(int i) {}


	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "orderItemId", unique = true)
    public Integer getOrderItemId() {
        return this.orderItemId;
    }

    public void setOrderItemId(Integer orderItemId) {
        this.orderItemId = orderItemId;
    }

    @Column(name = "clientId")
    public Integer getClientId() {
        return this.clientId;
    }

    public void setClientId(Integer clientId) {
        this.clientId = clientId;
    }

    /*@ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "orderId", nullable = false)
    public Orders getOrder() {
        return this.order;
    }

    public void setOrder(Orders order) {
        this.order = order;
    }*/

    @Column(name = "orderId")
    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    @Column(name = "quantity")
    public Integer getQuantity() {
        return this.quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    @Column(name = "classification")
    public String getClassification() {
        return this.classification;
    }

    public void setClassification(String classification) {
        this.classification = classification;
    }

    @Column(name = "commodity")
    public String getCommodity() {
        return this.commodity;
    }

    public void setCommodity(String commodity) {
        this.commodity = commodity;
    }

    /*@Column(name = "declaredValue", nullable = false, precision = 12, scale = 0)*/
    @Column(name = "declaredValue")
    public Double getDeclaredValue() {
        return this.declaredValue;
    }

    public void setDeclaredValue(Double declaredValue) {
        this.declaredValue = declaredValue;
    }

    @Column(name = "weight")
    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    @Column(name = "comments")
    public String getComments() {
        return this.comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "createdTimestamp")
    public Date getCreatedTimestamp() {
        return this.createdTimestamp;
    }

    public void setCreatedTimestamp(Date createdTimestamp) {
        this.createdTimestamp = createdTimestamp;
    }

    @Column(name = "createdBy")
    public String getCreatedBy() {
        return this.createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "modifiedTimestamp")
    public Date getModifiedTimestamp() {
        return this.modifiedTimestamp;
    }

    public void setModifiedTimestamp(Date modifiedTimestamp) {
        this.modifiedTimestamp = modifiedTimestamp;
    }

    @Column(name = "modifiedBy")
    public String getModifiedBy() {
        return this.modifiedBy;
    }

    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    @Column(name = "rate")
    public Float getRate() {
        return rate;
    }

    public void setRate(Float rate) {
        this.rate = rate;
    }

    @Column(name = "nameSize")
    public String getNameSize() {
        return nameSize;
    }

    public void setNameSize(String nameSize) {
        this.nameSize = nameSize;
    }

    @Column(name = "status")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Column(name = "volume")
    public Float getVolume() {
        return volume;
    }

    public void setVolume(Float volume) {
        this.volume = volume;
    }

    @Column(name = "vendorOrigin")
    public String getVendorOrigin() {
        return vendorOrigin;
    }

    public void setVendorOrigin(String vendorOrigin) {
        this.vendorOrigin = vendorOrigin;
    }

    @Column(name = "vendorSea")
    public String getVendorSea() {
        return vendorSea;
    }

    public void setVendorSea(String vendorSea) {
        this.vendorSea = vendorSea;
    }

    /*@Column(name = "vesselName")
    public String getVesselName() {
        return vesselName;
    }

    public void setVesselName(String vesselName) {
        this.vesselName = vesselName;
    }*/

    @Column(name = "vendorDestination")
    public String getVendorDestination() {
        return vendorDestination;
    }

    public void setVendorDestination(String vendorDestination) {
        this.vendorDestination = vendorDestination;
    }

    @Column(name = "finalPickupDate")
    public String getFinalPickupDate() {
        return finalPickupDate;
    }

    public void setFinalPickupDate(String finalPickupDate) {
        this.finalPickupDate = finalPickupDate;
    }

    @Column(name = "finalDeliveryDate")
    public String getFinalDeliveryDate() {
        return finalDeliveryDate;
    }

    public void setFinalDeliveryDate(String finalDeliveryDate) {
        this.finalDeliveryDate = finalDeliveryDate;
    }

    @Column(name = "vesselScheduleId")
    public String getVesselScheduleId() {
        return vesselScheduleId;
    }

    public void setVesselScheduleId(String vesselScheduleId) {
        this.vesselScheduleId = vesselScheduleId;
    }

    @Column(name = "driverOrigin")
    public String getDriverOrigin() {
        return driverOrigin;
    }

    public void setDriverOrigin(String driverOrigin) {
        this.driverOrigin = driverOrigin;
    }

    @Column(name = "driverDestination")
    public String getDriverDestination() {
        return driverDestination;
    }

    public void setDriverDestination(String driverDestination) {
        this.driverDestination = driverDestination;
    }

    @Column(name = "truckOrigin")
    public String getTruckOrigin() {
        return truckOrigin;
    }

    public void setTruckOrigin(String truckOrigin) {
        this.truckOrigin = truckOrigin;
    }

    @Column(name = "truckDestination")
    public String getTruckDestination() {
        return truckDestination;
    }

    public void setTruckDestination(String truckDestination) {
        this.truckDestination = truckDestination;
    }

    @Column(name = "containerId")
    public Integer getContainerId() {
        return containerId;
    }

    public void setContainerId(Integer containerId) {
        this.containerId = containerId;
    }

    @Column(name = "serviceRequirement")
    public String getServiceRequirement() {
        return serviceRequirement;
    }

    public void setServiceRequirement(String serviceRequirement) {
        this.serviceRequirement = serviceRequirement;
    }
}


