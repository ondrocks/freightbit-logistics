<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="row">
    <div class="col-lg-12">
        <h1>Customer Module </h1>
        <ol class="breadcrumb">
            <li class="active"><a href="<s:url action='../home' />"> Dashboard </a></li>
            <li class="active"> Customer</li>
            <li class="active"><a href="<s:url action='customerList' />"> Customer List</a>
            </li>
            <li class="active"><a href="<s:url action='customerInfo' />"> Customer
                Profile</a></li>
            <li class="active"><a href="<s:url action='viewItem' />"> Items</a></li>
            <li class="active"> Add New Item</li>
        </ol>

    </div>
</div>

<div class="row">
    <div class="col-lg-10">
        <div class="panel panel-primary">

            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-plus"></i> Add New Item</h3>
            </div>

            <div class="panel-body">
                <div class="table-responsive list-table">
                    <s:form theme="bootstrap" cssClass="form-horizontal" action="addItem">

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="textinput">Item Name:</label>

                            <div class="col-sm-4">
                                <s:textfield name="item.itemName" id="item.itemName" required="true"
                                             cssClass="form-control"/>
                            </div>

                            <label class="col-sm-2 control-label" for="textinput">Item Code:</label>

                            <div class="col-sm-4">
                                <s:textfield name="item.itemCode" id="item.itemCode" required="true"
                                             cssClass="form-control"/>
                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="textinput">Base Price:</label>

                            <div class="col-sm-4">
                                <s:textfield name="item.basePrice" id="item.basePrice" required="true"
                                             cssClass="form-control"/>
                            </div>

                            <label class="col-sm-2 control-label" for="textinput">SRP:</label>

                            <div class="col-sm-4">
                                <s:textfield name="item.srp" id="item.srp" required="true" cssClass="form-control"/>
                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="textinput">Critical Quality:</label>

                            <div class="col-sm-4">
                                <s:textfield name="item.criticalQuality" id="item.criticalQuality" required="true"
                                             cssClass="form-control"/>
                            </div>

                            <label class="col-sm-2 control-label" for="textinput">Lenght: </label>

                            <div class="col-sm-4">
                                <s:textfield name="item.length" id="item.length" required="true" cssClass="form-control"
                                             style="150px"/>
                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="textinput">Width:</label>

                            <div class="col-sm-4">
                                <s:textfield name="item.width" id="item.width" required="true" cssClass="form-control"/>
                            </div>

                            <label class="col-sm-2 control-label" for="textinput">Height: </label>

                            <div class="col-sm-4">
                                <s:textfield name="item.height" id="item.height" required="true"
                                             cssClass="form-control"/>
                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="textinput">Description:</label>

                            <div class="col-sm-4">
                                <s:textarea name="item.description" id="item.description" required="true" resize="none"
                                            style="resize:none" rows="3" cssClass="form-control"/>
                            </div>

                            <label class="col-sm-2 control-label" for="textinput">Note: </label>

                            <div class="col-sm-4">
                                <s:textarea name="item.note" id="item.note" required="true" cssClass="form-control"
                                            style="resize:none" rows="3"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="pull-right">

                                    <button type="submit" class="btn btn-info">Save</button>
                                </div>
                            </div>
                        </div>
                    </s:form>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-2">
        <div class="panel panel-primary">

            <ul class="nav nav-pills nav-stacked">
           	   <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER_RELATIONS', 'ROLE_SALES', 'ROLE_CUSTOMER')">
                <li><a href="#"><i class="fa fa-info-circle fa-fw"></i> Profile</a></li>
                <li><a href="viewAddress"><i class="fa fa-home fa-fw"></i> Address</a></li>
                <li><a href="viewCustomerContacts"><i class="fa fa-group fa-fw"></i> Contacts</a></li>
                <li class="active"><a href="viewItem"><i class="fa fa-list-ol fa-fw"></i> Items</a></li>
                </sec:authorize>
                
                <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER_RELATIONS', 'ROLE_SALES', 'ROLE_CUSTOMER',  'ROLE_DOC_SPECIALIST', 'ROLE_FINANCE')">
                <li><a href="viewRates"><i class="fa fa-money fa-fw"></i> Rates</a></li>
                </sec:authorize>
                
                <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER_RELATIONS', 'ROLE_SALES', 'ROLE_CUSTOMER')">
                <li><a href="viewConsignees"><i class="fa fa-list fa-fw"></i> Consignee List</a></li>
                </sec:authorize>
            </ul>
        </div>
    </div>
</div>