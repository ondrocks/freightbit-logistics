<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<!-- MIDDLE -->
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

    <h1 class="page-header">Address Profile</h1>

    <!-- MAIN BOX -->

    <div class="main-box">
        <div class="panel booking panel-info">
            <div class="booking panel-heading">
                <img src="includes/images/add-user.png" class="box-icon">
                <span class="booking panel-title">Add Customer - Address</span>
            </div>
            <div class="panel-body">
                <div class="table-responsive list-table">

                    <s:form  action="addTruckingAddress" cssClass="form-horizontal" theme="bootstrap">
                        <div class="form-group">

                            <label for="address.addressType" class="col-sm-2 control-label" style="width:25%;">Address Type</label>
                            <div class="col-sm-10" style="width:70%;">
                                <s:select name="address.addressType" list="addressTypeList" listValue="value" listKey="key" cssClass="form-control" id="address.addressType" emptyOption="true" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" style="width:25%;">Address Line 1</label>
                            <div class="col-sm-10" style="width:70%;">
                                <s:textfield name="address.addressLine1" id="address.addressLine1" cssClass="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" style="width:25%;">Address Line 2</label>
                            <div class="col-sm-10" style="width:70%;">
                                <s:textfield name="address.addressLine2" id="address.addressLine2" cssClass="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" style="width:25%;">City</label>
                            <div class="col-sm-10" style="width:70%;">
                                <s:textfield name="address.city" id="address.city" cssClass="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" style="width:25%;">State</label>
                            <div class="col-sm-10" style="width:70%;">
                                <s:textfield name="address.state" id="address.state" cssClass="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label  class="col-sm-2 control-label" style="width:25%;">Zip Code</label>
                            <div class="col-sm-10" style="width:70%;">
                                <s:textfield name="address.zip" id="address.zip" cssClass="form-control"/>
                            </div>
                        </div>
                        <s:property value="%{vendorIdParam}" />
                        <s:hidden name="vendorIdParam" id="vendorIdParam"   value="%{vendorIdParam}" />
                </div>
            </div>
            <div class="panel-footer">
                <div class="btn-group pull-right">
                    <button class="btn btn-default">Cancel</button>
                    <s:submit cssClass="btn btn-default" name="submit" value="Save"/>
                </div>
            </div>
            </s:form>
        </div>
    </div>



    <!-- END OF MAIN BOX -->

    <!-- SIDEBAR -->

    <div class="sidebar-box">
        <div class="panel panel-info">
            <div class="panel-heading">
                <img src="includes/images/calendar.png" class="box-icon">
                <span class="panel-title">Process</span>
            </div>

            <div class="panel-body" style="height: 195px;">
                <ul class="nav" style="margin-top: -10px;">
                    <li>
                        <a href="viewTrucks" class="side-help" style="font-size: 15px;"><img
                                src="includes/images/1.png"
                                class="img-sidehelp">List of Trucks</a>
                    </li>
                    <li>
                        <a href="viewDrivers" class="side-help" style="font-size: 15px;"><img
                                src="includes/images/2.png"
                                class="img-sidehelp">List of Drivers</a>
                    </li>
                    <li><a href="viewVendorTruckingContacts" class="side-help" style="font-size: 15px;"><img src="includes/images/3.png"
                                                                                                        class="img-sidehelp">Contact
                        Person</a></li>
                    <li><a href="viewTruckingAddress" class="side-help" style="font-size: 15px;"><img
                            src="includes/images/4.png"
                            class="img-sidehelp">Address</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

