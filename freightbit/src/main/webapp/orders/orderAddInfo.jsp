<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>


<div class="row" style=" margin-top: -15px; ">
    <div class="col-lg-12">
        <h1>Booking Module </h1>
        <ol class="breadcrumb">
            <li class="active"><a href="<s:url action='../home' />"> <i class="fa fa-dashboard"></i> Dashboard </a></li>
            <li class="active"><a href="<s:url action='viewOrders' />"> <i class="fa fa-list"></i> Booking List </a>
            </li>
            <li class="active"><i class="fa fa-info-circle"></i> Booking Information</li>
        </ol>

    </div>
</div>
<!-- /.row -->

<div class="row">
<div class="col-lg-12">
<div class="panel panel-primary">

<div class="panel-heading">
    <h3 class="panel-title"><i class="fa fa-info-circle"></i> Booking Information</h3>
</div>

<div class="panel-body">

<div class="row">
    <div class="col-lg-8 col-lg-offset-2">
        <div class="panel panel-primary">

            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-book"></i> Order Details
                </h3>
            </div>

            <div class="panel-body">

                <div class="row">

                    <div class="col-lg-6 ">
                        <table class="table table-user-information">
                            <tbody>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important; border-top: none;">Booking Number</td>
                                <td style="border-top: none; text-align: left !important;"><s:property value="order.orderNumber"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Service Mode</td>
                                <td style="text-align: left !important;"><s:property value="order.modeOfService"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Origin Port</td>
                                <td style="text-align: left !important;"><s:property value="order.originationPort"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Payment Mode</td>
                                <td style="text-align: left !important;"><s:property value="order.modeOfPayment"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Notification Type</td>
                                <td style="text-align: left !important;"><s:property value="order.notifyBy"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Comments</td>
                                <td style="text-align: left !important;"><s:property value="order.comments"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="col-lg-6 ">
                        <table class="table table-user-information">
                            <tbody>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important; border-top: none;">Booking Date</td>
                                <td style="border-top: none; text-align: left !important;"><s:property value="order.orderDate"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Service Requirement</td>
                                <td style="text-align: left !important;"><s:property value="order.serviceRequirement"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Destination Port</td>
                                <td style="text-align: left !important;"><s:property value="order.destinationPort"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Total Rate</td>
                                <td style="text-align: left !important;"><s:property value="order.rates"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Status</td>
                                <td style="text-align: left !important;"><s:property value="order.orderStatus"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>

        </div>
    </div>

    <div class="col-lg-2">
        <div class="btn-toolbar pull-right">
            <a class="btn btn-primary">Edit Booking</a>
        </div>
    </div>

</div>

<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-primary">

            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-male"></i> Shipper Information</h3>
            </div>

            <div class="panel-body">

                <div class="row">
                    <div class="col-md-3 col-lg-3 " align="center">
                        <img alt="User Pic" src="../includes/images/photo.png" class="img-circle">
                    </div>
                    <div class=" col-md-9 col-lg-9 ">
                        <table class="table table-user-information">

                            <tbody>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important; border-top: none;">Shipper Name</td>
                                <td style="border-top: none; text-align: left !important;"><s:property value="order.customerName"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Contact Person</td>
                                <td style="text-align: left !important;"><s:property value="order.shipperInfoContact.name"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Contact Number</td>
                                <td style="text-align: left !important;"><s:property value="order.shipperInfoContact.phone"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Mobile</td>
                                <td style="text-align: left !important;"><s:property value="order.shipperInfoContact.mobile"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Fax</td>
                                <td style="text-align: left !important;"><s:property value="order.shipperInfoContact.fax"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">E-Mail</td>
                                <td style="text-align: left !important;"><s:property value="order.shipperInfoContact.email"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Pick-up Date</td>
                                <td style="text-align: left !important;"><s:property value="order.pickupDate"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Pick-up Address</td>
                                <td style="text-align: left !important;"><s:property value="order.shipperInfoAddress.address"/></td>
                            </tr>
                            </tbody>

                        </table>
                    </div>
                </div>

            </div>

        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-primary">

            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-male"></i> Consignee Information</h3>
            </div>

            <div class="panel-body">

                <div class="row">
                    <div class="col-md-3 col-lg-3 " align="center">
                        <img alt="User Pic" src="../includes/images/photo.png" class="img-circle">
                    </div>
                    <div class=" col-md-9 col-lg-9 ">
                        <table class="table table-user-information">

                            <tbody>
                            <%--<tr>
                                <td style="font-weight: bold;">Consignee Name:</td>
                                <td><s:property value="order.customerName"/></td>
                            </tr>--%>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important; border-top: none;">Consignee Name</td>
                                <td style="border-top: none; text-align: left !important;"><s:property value="order.consigneeInfoContact.name"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Contact Number</td>
                                <td style="text-align: left !important;"><s:property value="order.consigneeInfoContact.phone"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Mobile</td>
                                <td style="text-align: left !important;"><s:property value="order.consigneeInfoContact.mobile"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Fax</td>
                                <td style="text-align: left !important;"><s:property value="order.consigneeInfoContact.fax"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">E-Mail</td>
                                <td style="text-align: left !important;"><s:property value="order.consigneeInfoContact.email"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Delivery Date</td>
                                <td style="text-align: left !important;"><s:property value="order.deliveryDate"/></td>
                            </tr>
                            <tr>
                                <td style="font-weight: normal; font-size: 12px; text-align:right !important;">Delivery Address</td>
                                <td style="text-align: left !important;"><s:property value="order.consigneeInfoAddress.address"/></td>
                            </tr>
                            </tbody>

                        </table>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>

<div class="row">

    <div class="col-lg-12" >

        <div class="well">

            <s:form cssClass="form-horizontal" theme="bootstrap" action="addItemsInTable" >

                <fieldset class="inputs">

                    <legend style="text-align: left;">
                                    <span>
                                        Cargo Information
                                    </span>
                    </legend>

                    <div class="form-group" style="padding-top: 25px;">

                        <label class="col-lg-3 control-label" style="padding-top: 0px;">
                            Container Quantity
                        </label>

                        <div class="col-lg-3" >
                            <s:select cssClass="form-control"
                                      id="orderItem.quantity"
                                      name="orderItem.quantity"
                                      list="containerQuantity"
                                      emptyOption="true"
                            />
                        </div>

                        <label class="col-lg-3 control-label" style="padding-top: 0px;">
                            Container Size
                        </label>

                        <div class="col-lg-3" >
                            <s:select cssClass="form-control"
                                      id="orderItem.nameSize"
                                      name="orderItem.nameSize"
                                      list="containerList"
                                      listKey="key"
                                      listValue="value"
                                      emptyOption="true"
                            />
                        </div>

                    </div>

                    <div class="form-group">

                        <label class="col-lg-3 control-label" style="padding-top: 0px;">
                            Weight (kg)
                        </label>

                        <div class="col-lg-3" >
                            <s:textfield cssClass="form-control step3"
                                         name="orderItem.weight"
                                         id="orderItem.weight"
                            />
                        </div>

                        <label class="col-lg-3 control-label" style="padding-top: 0px;">
                            Volume (cm�)
                        </label>
                        <div class="col-lg-3" >
                            <s:textfield cssClass="form-control step3"
                                         name="orderItem.volume"
                                         id="orderItem.volume"
                            />
                        </div>

                    </div>

                    <div class="form-group">

                        <label class="col-lg-3 control-label" style="padding-top: 0px;">
                            Classification
                        </label>

                        <div class="col-lg-3" >
                            <s:textfield cssClass="form-control step3"
                                         name="orderItem.classification"
                                         id="orderItem.classification"
                            />
                        </div>

                        <label class="col-lg-3 control-label" style="padding-top: 0px;">
                            Commodity
                        </label>

                        <div class="col-lg-3" >
                            <s:textfield cssClass="form-control step3"
                                 name="orderItem.description"
                                 id="orderItem.description"
                            />
                        </div>

                    </div>

                    <div class="form-group">

                        <label class="col-lg-3 control-label" style="padding-top: 0px;">
                            Rate (Php)
                        </label>
                        <div class="col-lg-3" >
                            <s:textfield cssClass="form-control step3"
                                 id="orderItem.rate"
                                 name="orderItem.rate"
                            />
                        </div>

                        <label class="col-lg-3 control-label" style="padding-top: 0px;">
                            Declared Value (Php)
                        </label>
                        <div class="col-lg-3" >
                            <s:textfield cssClass="form-control step3"
                                 name="orderItem.declaredValue"
                                 id="orderItem.declaredValue"
                            />
                        </div>

                    </div>

                    <div class="form-group" >

                        <label class="col-lg-3 control-label" style="padding-top: 0px;">
                            Comments
                        </label>
                        <div class="col-lg-3" >
                            <s:textarea cssClass="form-control step3"
                                name="orderItem.remarks"
                                id="orderItem.remarks"
                                cssStyle="resize: none;"
                            />
                        </div>

                    </div>

                    <legend />

                    <div style="clear:both; margin-top: 20px;" class="pull-right">
                        <s:submit name="submit" cssClass="btn btn-primary" value="Add Cargo" />
                    </div>

                </fieldset>

            </s:form>

        </div>

    </div>

</div>

<div class="row">

    <div class="col-lg-12">

        <div class="well">

        <fieldset>

            <legend style="text-align: left;">
                            <span>
                                Cargo Listing
                            </span>
            </legend>

            <div class="panel-body">
                <div class="table-responsive list-table">
                    <table class="table table-striped table-hover table-bordered text-center tablesorter" id="customer-list">
                        <thead>
                        <tr class="header_center" style="background-color: #fff;">
                            <th class="tb-font-black">Quantity</th>
                            <th class="tb-font-black">Size</th>
                            <th class="tb-font-black">Weight</th>
                            <th class="tb-font-black">Class</th>
                            <th class="tb-font-black">Commodity</th>
                            <th class="tb-font-black">Value</th>
                            <th class="tb-font-black">Rate</th>
                            <th class="tb-font-black">Comment</th>
                            <th class="tb-font-black">Action</th>
                        </tr>
                        </thead>
                        <tbody>

                        <s:iterator value="orderItems" var="orderItem">
                            <tr>
                                <td class="tb-font-black"><s:property value="quantity"/></td>
                                <td class="tb-font-black"><s:property value="nameSize"/></td>
                                <td class="tb-font-black"><s:property value="weight"/></td>
                                <td class="tb-font-black"><s:property value="classification"/></td>
                                <td class="tb-font-black"><s:property value="description"/></td>
                                <td class="tb-font-black"><s:property value="declaredValue"/></td>
                                <td class="tb-font-black"><s:property value="rate"/></td>
                                <td class="tb-font-black"><s:property value="remarks"/></td>

                                <td class="tb-font-black">

                                    &lt;%&ndash;<s:url var="deleteItemUrl" action="deleteItem">
                                    <s:param name="customersItemIdParam" value="%{customerItemsId}"></s:param>
                                </s:url>
                                    <s:a class="icon-action-link" href="%{deleteItemUrl}" rel="tooltip"
                                         title="Delete this Item?"
                                         onclick="return confirm('Do you really want to delete?');">
                                        <img src="includes/images/remove-user.png" class="icon-action circ-icon">
                                    </s:a>&ndash;%&gt;

                                </td>
                            </tr>
                        </s:iterator>
                        </tbody>
                    </table>
                </div>
            </div>

        </fieldset>

        </div>

    </div>

</div>

<div style="text-align: center;">

    <button type="button" id="Cancel" class="btn btn-lg btn-primary">
        Create Booking
    </button>

    <%--<s:submit name="submit" cssClass="btn btn-primary btn-lg" value="Next" />--%>

</div>

</div>
</div>
</div>
</div>
