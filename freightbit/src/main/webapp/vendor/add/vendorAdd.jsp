<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<div class="row">
    <div class="col-lg-12">
        <legend style="text-align: left;">
            <span >
               <h1><i class="fa fa-building"></i> Vendor Module </h1>
            </span>
        </legend>
        <ol class="breadcrumb">
            <li class="active"><a href="<s:url action='../home' />"> Dashboard </a></li>
            <li class="active"> Vendor</li>
            <li class="active"><a href="<s:url action='viewVendors' />"> Vendor List</a></li>
            <li class="active"> Add Vendor</li>
        </ol>

    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-primary">

            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-plus"></i> Add Vendor</h3>
            </div>

            <div class="panel-body">
                <div class="table-responsive list-table">

                    <s:form cssClass="form-horizontal" action="addVendor" method="POST" theme="bootstrap">
                    <div class="form-group">
                        <label class="col-lg-2 control-label" style="padding-top:0px;">Type</label>

                        <div class="col-lg-9">
                            <s:select list="vendorTypeList" name="vendor.vendorType" id="vendor.vendorType"
                                      listKey="key" listValue="value" cssClass="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label" style="padding-top:0px;">Company</label>

                        <div class="col-lg-9">
                            <s:textfield cssClass="form-control" placeholder="Company Name" name="vendor.vendorName"
                                         id="vendor.vendorName" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label" style="padding-top:0px;">Code</label>

                        <div class="col-lg-9">
                            <s:textfield cssClass="form-control" name="vendor.vendorCode" id="vendor.vendorCode"
                                         placeholder="Code" maxLength="3" pattern="[A-Z]+" title="Must be letters only"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label" style="padding-top:0px;">Class</label>

                        <div class="col-lg-9">
                            <s:select list="vendorClassList" listKey="key" listValue="value" cssClass="form-control"
                                      id="vendor.vendorClass" name="vendor.vendorClass"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label" style="padding-top:0px;">Status</label>

                        <div class="col-lg-9">
                            <s:select list="statusList" listKey="key" listValue="value" cssClass="form-control"
                                      id="vendor.vendorStatus" name="vendor.vendorStatus"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
                <div class="pull-right">
                    <button class="btn btn-default" onclick="this.form.action='viewVendors'">
                        Cancel
                    </button>
                    <s:submit cssClass="btn btn-primary" value="Save" type="submit"/>
                </div>
            </div>
            </s:form>
        </div>

    </div>
</div>