<%@ taglib prefix="s" uri="/struts-tags" %>

<%--<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header">Rates Module</h1>

    <div class="col-md-12">
        <div class="panel panel-info">

            <div class="panel-heading">

                <img src="includes/images/listofusers.png" class="box-icon"/> <span
                    class="panel-title">List of Rates</span>
            </div>

            <div class="panel-body">
                <div class="table-responsive list-table">
                    <table class="table table-striped table-bordered text-center" id="customer-list">
                        <thead>
                        <tr class="header_center">
                            <th class="tb-font-black">Origin</th>
                            <th class="tb-font-black">Destination</th>
                            <th class="tb-font-black">Rate</th>
                            <th class="tb-font-black">Rate Type</th>
                            <th class="tb-font-black">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <s:iterator value="rates" var="rate">
                            <tr>
                                <td class="tb-font-black"><s:property value="origin"/></td>
                                <td class="tb-font-black"><s:property value="destination"/></td>
                                <td class="tb-font-black"><s:property value="rate"/></td>
                                <td class="tb-font-black"><s:property value="rateType"/></td>
                                <td>

                                    <s:url var="loadEditRatesUrl" action="loadEditRates">
                                        <s:param name="ratesIdParam" value="%{customerRateId}"></s:param>
                                    </s:url>
                                    <s:a href="%{loadEditRatesUrl}" class="icon-action-link" rel="tooltip"
                                         title="Edit this Vendor Address"><img src="includes/images/edit-user.png"
                                                                               class="icon-action circ-icon"> </s:a>

                                    <s:url var="deleteRatesUrl" action="deleteRates">
                                        <s:param name="ratesIdParam" value="%{customerRateId}"></s:param>
                                    </s:url>
                                    <s:a class="icon-action-link" href="%{deleteRatesUrl}" rel="tooltip"
                                         title="Delete this Vendor Address"
                                         onclick="return confirm('Do you really want to delete?');"><img
                                            src="includes/images/remove-user.png" class="icon-action circ-icon"> </s:a>
                                </td>
                            </tr>
                        </s:iterator>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="panel-footer">

                <ul class="pagination">
                    <li class="disabled"><a href="#">&laquo;</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li class="disabled"><a href="#">&raquo;</a></li>
                </ul>

            <span class="pull-right">
                <s:url var="loadAddRatesUrl" action="loadAddRates">
                    <s:param name="customerIdParam" value="customerIdParam"> </s:param>
                </s:url>
                <s:a class="icon-action-link" href="%{loadAddRatesUrl}" rel="tooltip" title="Add Contact">
                    <img src="includes/images/add-user.png" class="icon-action circ-icon">
                </s:a>
            </span>

            </div>
        </div>
    </div>
</div>--%>



<div class="row">
    <div class="col-lg-12">
        <h1>Customer Module </h1>
        <ol class="breadcrumb">
            <li class="active" ><a href="<s:url action='home' />"> <i class="fa fa-dashboard"></i> Dashboard </a></li>
            <li class="active"><i class="fa fa-male"></i> Customer</li>
            <li class="active"><a href="<s:url action='customerList' />"> <i class="fa fa-list"></i> Customer List</a></li>
            <li class="active"><a href="<s:url action='customerInfo' />"> <i class="fa fa-info-circle"></i> Customer Profile</a></li>
            <li class="active"><i class="fa fa-money"></i> Rates</li>
        </ol>

    </div>
</div><!-- /.row -->


<s:if test="hasActionMessages()">
    <%--<div class="row alert alert-success alert-dismissable">
        <s:actionmessage/>
    </div>--%>
    <div class="col-lg-10">
        <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                ×</button>
            <span class="fa fa-check"></span> <strong>Success Message</strong>
            <hr class="message-inner-separator">
            <s:actionmessage/>
        </div>
    </div>
</s:if>

<div class="row">
    <div class="col-lg-10">
        <div class="panel panel-primary">

            <div class="panel-heading" style="padding-bottom: 0px;">
                <h3 class="panel-title" style="position: relative; top: 10px;"><i class="fa fa-money"></i> Rates</h3>
                <span class="pull-right">
                <a href="loadAddRates" class="icon-action-link" rel="tooltip" title="Add Vendor">
                    <img src="includes/images/add-user.png" class="icon-action circ-icon" style="position: relative; bottom: 15px;">
                </a>
                </span>
            </div>

            <div class="panel-body">
                <div class="table-responsive list-table">
                    <table class="table table-striped table-bordered text-center table-hover" id="customer-list">
                        <thead>
                        <tr class="header_center">
                            <th class="tb-font-black" style="text-align: center;">Origin <i class="fa fa-sort"></i></th>
                            <th class="tb-font-black" style="text-align: center;">Destination <i class="fa fa-sort"></i></th>
                            <th class="tb-font-black" style="text-align: center;">Rate <i class="fa fa-sort"></i></th>
                            <th class="tb-font-black" style="text-align: center;">Rate Type <i class="fa fa-sort"></i></th>
                            <th class="tb-font-black" style="text-align: center;">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <s:iterator value="rates" var="rate">
                            <tr>
                                <td class="tb-font-black"><s:property value="origin"/></td>
                                <td class="tb-font-black"><s:property value="destination"/></td>
                                <td class="tb-font-black"><s:property value="rate"/></td>
                                <td class="tb-font-black"><s:property value="rateType"/></td>
                                <td>

                                    <s:url var="loadEditRatesUrl" action="loadEditRates">
                                        <s:param name="ratesIdParam" value="%{customerRateId}"></s:param>
                                    </s:url>
                                    <s:a href="%{loadEditRatesUrl}" class="icon-action-link" rel="tooltip"
                                         title="Edit this Vendor Address"><img src="includes/images/edit-user.png"
                                                                               class="icon-action circ-icon"> </s:a>

                                    <s:url var="deleteRatesUrl" action="deleteRates">
                                        <s:param name="ratesIdParam" value="%{customerRateId}"></s:param>
                                    </s:url>
                                    <s:a class="icon-action-link" href="%{deleteRatesUrl}" rel="tooltip"
                                         title="Delete this Vendor Address"
                                         onclick="return confirm('Do you really want to delete?');"><img
                                            src="includes/images/remove-user.png" class="icon-action circ-icon"> </s:a>
                                </td>
                            </tr>
                        </s:iterator>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="panel-footer">

                <span class="pull-right">
                    <s:url var="loadAddRatesUrl" action="loadAddRates">
                        <s:param name="customerIdParam" value="customerIdParam"> </s:param>
                    </s:url>
                    <s:a class="icon-action-link" href="%{loadAddRatesUrl}" rel="tooltip" title="Add Contact">
                        <img src="includes/images/add-user.png" class="icon-action circ-icon">
                    </s:a>
                </span>

            </div>
        </div>
    </div>
    <div class="col-lg-2">
        <div class="panel panel-primary">

            <%--<div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-list-ol"></i> Vendor Details</h3>
            </div>--%>

            <ul class="nav nav-pills nav-stacked">
                <li><a href="#"><i class="fa fa-info-circle fa-fw"></i> Profile</a></li>
                <li><a href="viewAddress"><i class="fa fa-home fa-fw"></i> Address</a></li>
                <li><a href="viewCustomerContacts"><i class="fa fa-group fa-fw"></i> Contact Persons</a></li>
                <li><a href="viewItem"><i class="fa fa-list-ol fa-fw"></i> Items</a></li>
                <li  class="active"><a href="viewRates"><i class="fa fa-money fa-fw"></i> Rates</a></li>
                <li><a href="viewConsignees"><i class="fa fa-list fa-fw"></i> Consignee List</a></li>

            </ul>
        </div>
    </div>
</div><!-- /.row -->

