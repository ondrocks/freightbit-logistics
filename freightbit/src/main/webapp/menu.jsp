<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<ul class="nav navbar-nav side-nav">
    <li><a href="<s:url action='../home' />" class="menu-style-a"><i class="fa fa-dashboard "></i> Dashboard</a></li>

    <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER', 'ROLE_CUSTOMER_RELATIONS', 'ROLE_FREIGHT_OPERATIONS_OFFICER', 'ROLE_SALES')">
        <li><a href="<s:url action='../orders/viewOrders' />" class="menu-style-a"><i class="fa fa-book"></i> Booking</a></li>
    </sec:authorize>

    <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER_RELATIONS', 'ROLE_CUSTOMER', 'ROLE_INLAND_FREIGHT', 'ROLE_SEA_FREIGHT', 'ROLE_FREIGHT_OPERATIONS_OFFICER')">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" class="menu-style-a"><i class="fa fa-truck"></i> Operations <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER', 'ROLE_FREIGHT_OPERATIONS_OFFICER')">
                    <li><a href="<s:url action='../operations/viewSeaFreightList' />"> <i class="fa fa-caret-right fa-fw"></i> Freight Plan</a></li>
                </sec:authorize>
                <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_FREIGHT_OPERATIONS_OFFICER', 'ROLE_INLAND_FREIGHT')">
                    <li><a href="<s:url action='../operations/viewInlandFreightList' />"> <i class="fa fa-caret-right fa-fw"></i> Dispatch Plan</a></li>
                </sec:authorize>
                <%--<li><a href="<s:url action='../operations/viewShipmentMonitoringList' />"> <i class="fa fa-caret-right fa-fw"></i> Shipment Monitoring</a></li>--%>
                <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER', 'ROLE_SEA_FREIGHT', 'ROLE_FREIGHT_OPERATIONS_OFFICER')">
                    <li><a href="<s:url action='../operations/viewVesselSchedules' />"> <i class="fa fa-caret-right fa-fw"></i> Vessel Schedule</a></li>
                </sec:authorize>
                <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER_RELATIONS', 'ROLE_SEA_FREIGHT', 'ROLE_FREIGHT_OPERATIONS_OFFICER', 'ROLE_INLAND_FREIGHT')">
                    <li><a href="<s:url action='../operations/viewStatusList' />"> <i class="fa fa-caret-right fa-fw"></i> Shipment Monitoring</a></li>
                </sec:authorize>
            </ul>
        </li>
    </sec:authorize>

    <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_FREIGHT_OPERATIONS_OFFICER')">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" class="menu-style-a"><i class="fa fa-road"></i> Yard Management <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="<s:url action='../operations/viewContainerList' />"> <i class="fa fa-caret-right fa-fw"></i> Container Management</a></li>
                <li><a href="<s:url action='../operations/viewConsolidationContainerList' />"> <i class="fa fa-caret-right fa-fw"></i> Consolidation</a></li>
            </ul>
        </li>
    </sec:authorize>

    <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER', 'ROLE_FREIGHT_OPERATIONS_OFFICER', 'ROLE_DOCUMENT_SPECIALIST')">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" class="menu-style-a"><i class="fa fa-file-text"></i> Documentations <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="<s:url action='../documentation/viewPendingDocuments' />"> <i class="fa fa-caret-right fa-fw"></i>Pending Documents</a></li>
                <li><a href="<s:url action='../documentation/viewArchivedDocuments' />"> <i class="fa fa-caret-right fa-fw"></i>Archived Documents</a></li>
                <%--<li><a href="<s:url action='../documentation/viewPlainDocuments' />"> <i class="fa fa-caret-right fa-fw"></i>Plain Documents</a></li>--%>
            </ul>
        </li>
    </sec:authorize>

    <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER_RELATIONS', 'ROLE_SALES')">
        <li>
            <a href="<s:url action='../customers/customerList' />" class="menu-style-a"><i class="fa fa-male"></i> Customer </a>
            <%--<ul class="dropdown-menu">--%>
            <%--<li><a href="<s:url action='../customers/loadSearchCustomerPage' />"> <i class="fa fa-caret-right fa-fw"></i> Search Customer</a></li>--%>
            <%--<sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER_RELATIONS', 'ROLE_SALES', 'ROLE_CUSTOMER')">--%>
            <%--<li><a href="<s:url action='../customers/loadAddCustomerPage' />"> <i class="fa fa-caret-right fa-fw"></i> Add Customer</a></li>--%>
            <%--</sec:authorize>--%>
            <%--</ul>--%>
        </li>
    </sec:authorize>

    <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_SEA_FREIGHT', 'ROLE_INLAND_FREIGHT')">
        <li>
            <a href="<s:url action='../vendor/viewVendors' />" class="menu-style-a"><i class="fa fa-building-o"></i> Vendor </a>
                <%--<ul class="dropdown-menu">--%>
                <%--<li><a href="<s:url action='../vendor/loadSearchVendorPage' />"> <i class="fa fa-caret-right fa-fw"></i> Search Vendor</a></li>--%>
                <%--<li><a href="<s:url action='../vendor/loadAddVendorPage' />"> <i class="fa fa-caret-right fa-fw"></i> Add Vendor</a></li>--%>
                <%--</ul>--%>
        </li>
    </sec:authorize>

    <sec:authorize access="hasRole('ROLE_ADMIN')">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" class="menu-style-a"><i class="fa fa-user"></i> Accounts <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="<s:url action='../core/viewUsers' />"> <i class="fa fa-caret-right fa-fw"></i> User</a></li>
                <li><a href="<s:url action='../core/viewGroups' />"> <i class="fa fa-caret-right fa-fw"></i> Group</a></li>
                <!--  <li><a href="<s:url action='../core/viewPermissions' />"> <i class="fa fa-caret-right fa-fw"></i> Permission</a></li> -->
            </ul>
        </li>
    </sec:authorize>

    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" class="menu-style-a"><i class="fa fa-bar-chart-o"></i> Reports <b class="caret"></b></a>
        <ul class="dropdown-menu">
            <li><a href="<s:url action='../reports/truckReport'/>"> <i class="fa fa-caret-right fa-fw"></i> Trucks</a></li>
            <li><a href="<s:url action='../reports/containerReport'/>"> <i class="fa fa-caret-right fa-fw"></i> Container</a></li>
            <li><a href="<s:url action='../reports/cargoReport'/>"> <i class="fa fa-caret-right fa-fw"></i> Cargo</a></li>
            <li><a href="<s:url action='../reports/customerRelationReport'/>"> <i class="fa fa-caret-right fa-fw"></i> Customer Relation</a></li>
            <li><a href="<s:url action='../reports/salesReport'/>"> <i class="fa fa-caret-right fa-fw"></i> Sales</a></li>
        </ul>
    </li>
    <div id="footer-ver2" class="categories">
        <div class="footerwrap-ver2" >
            <div id="copyright-ver2" >
                developed and designed by: <br />
                <a href="http://www.solutionsresource.com" rel="license">Solutions Resource Inc.</a>
            </div>
            <div id="svnrev2" >
                version 2015.3c10be0
            </div>
        </div>
    </div>
    <%--<li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" class="menu-style-a"><i class="fa fa-money"></i> Finance <b class="caret"></b></a>
        <ul class="dropdown-menu">
            <li><a href="<s:url action='../finance/searchFinance'/>"> <i class="fa fa-caret-right fa-fw"></i> Search Finance</a></li>
            <li><a href="<s:url action='../finance/addFinance'/>"> <i class="fa fa-caret-right fa-fw"></i> Add Finance</a></li>
        </ul>
    </li>--%>
    <%--<li class=""><a href="Help" class="menu-style-a"><i class="fa fa-question"></i> Help</a></li>--%>
</ul>