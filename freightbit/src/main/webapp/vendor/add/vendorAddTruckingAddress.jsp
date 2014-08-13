<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<div class="row">
    <div class="col-lg-12">
        <h1>Vendor Module </h1>
        <ol class="breadcrumb">
            <li class="active"><a href="<s:url action='../home' />"> Dashboard </a></li>
            <li class="active"> Vendor</li>
            <li class="active"><a href="<s:url action='viewVendors' />"> Vendor List</a></li>
            <li class="active"><a href="<s:url action='viewInfoVendor' />"> Vendor
                Profile</a></li>
            <li class="active"><a href="<s:url action='viewTruckingAddress' />"> Address</a>
            </li>
            <li class="active"> Add New Address</li>
        </ol>

    </div>
</div>

<div class="row">
    <div class="col-lg-6 col-lg-offset-2">
        <div class="panel panel-primary">

            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-plus"></i> Add New Address</h3>
            </div>

            <div class="panel-body">
                <div class="table-responsive list-table">
                    <s:form action="addTruckingAddress" cssClass="form-horizontal" theme="bootstrap">
                        <div class="form-group">

                            <label for="address.addressType" class="col-sm-2 control-label" style="width:25%;">Address
                                Type</label>

                            <div class="col-sm-10" style="width:70%;">
                                <s:select name="address.addressType" list="addressTypeList" listValue="value"
                                          listKey="key" cssClass="form-control" id="address.addressType"
                                          emptyOption="true"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" style="width:25%;">Address Line 1</label>

                            <div class="col-sm-10" style="width:70%;">
                                <s:textfield name="address.addressLine1" id="address.addressLine1"
                                             cssClass="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" style="width:25%;">Address Line 2</label>

                            <div class="col-sm-10" style="width:70%;">
                                <s:textfield name="address.addressLine2" id="address.addressLine2"
                                             cssClass="form-control"/>
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
                            <label class="col-sm-2 control-label" style="width:25%;">Zip Code</label>

                            <div class="col-sm-10" style="width:70%;">
                                <s:textfield name="address.zip" id="address.zip" cssClass="form-control" pattern="[0-9]+"/>
                            </div>
                        </div>
                        <s:property value="%{vendorIdParam}"/>
                        <s:hidden name="vendorIdParam" id="vendorIdParam" value="%{vendorIdParam}"/>
                        <div class=" pull-right">
                            <s:submit cssClass="btn btn-info" name="submit" value="Save"/>
                        </div>
                    </s:form>
                </div>
            </div>


        </div>
    </div>

    <div class="col-lg-2 col-lg-offset-2">
        <div class="panel panel-primary">
            <ul class="nav nav-pills nav-stacked">
                <li><a href="viewInfoVendor"><i class="fa fa-info-circle fa-fw"></i> Profile</a></li>
                <li class="active"><a href="viewTruckingAddress"><i class="fa fa-home fa-fw"></i> Address</a></li>
                <li><a href="viewVendorTruckingContacts"><i class="fa fa-group fa-fw"></i> Contact Persons</a></li>
                <li><a href="viewDrivers"><i class="fa fa-group fa-fw"></i> Drivers</a></li>
                <li><a href="viewTrucks"><i class="fa fa-truck fa-fw"></i> Trucks</a></li>
            </ul>
        </div>
    </div>

</div>