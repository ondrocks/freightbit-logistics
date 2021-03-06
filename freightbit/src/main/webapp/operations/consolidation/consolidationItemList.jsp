<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
    <div class="col-lg-12">
        <legend style="text-align: left;">
            <span >
               <h1><i class="fa fa-exchange"></i> Consolidation </h1>
            </span>
        </legend>
        <ol class="breadcrumb">
            <li class="active"><a href="<s:url action='../home' />"> Dashboard </a></li>
            <li class="active"> Yard Management</li>
            <li class="active"><a href="<s:url action='viewConsolidationContainerList' />"> Consolidation Container List </a></li>
            <li class="active"> Container Information</li>
        </ol>
    </div>
</div>

<s:if test="hasActionMessages()">
    <div class="col-lg-12">
        <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
            <strong><s:actionmessage cssStyle="margin-bottom: 0px;"/></strong>
        </div>
    </div>
</s:if>

<s:if test="hasActionErrors()">
   <div class="col-lg-12">
	   <div class="alert alert-errors">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
   			<strong><s:actionerror cssStyle="margin-bottom: 0px;"/></strong>
		</div>
   </div>
</s:if>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-primary">

            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-list"></i> Available Item List</h3>
            </div>

            <div class="panel-body">

                <div class="table-responsive">

                    <s:form action="updateStatusOfContainers" theme="bootstrap" id="updateContainer">

                        <s:hidden name="containerIdParam" value="%{containerIdParam}"></s:hidden>
                        <s:hidden name="containerSizeParam" value="%{containerSizeParam}"></s:hidden>
                        <s:hidden name="containerStatusParam" value="%{containerStatusParam}"></s:hidden>
                        <s:hidden name="containerPortCodeParam" value="%{containerPortCodeParam}"></s:hidden>

                    <display:table id="orderItems" name="orderItemsBeans"
                                   requestURI="viewConsolidationItemList.action"
                                   class="mainTable table table-striped table-hover table-bordered text-center tablesorter table-condensed"
                                   style="margin-top: 15px;"> <%--Booking Date--%>
                        <td>
                            <display:column>
                                <s:checkbox theme="simple" name="check" id="check"
                                            fieldValue="%{#attr.orderItems.orderItemId}"/>
                            </display:column>
                        </td>
                        <td><display:column property="nameSize" title="Item Name <i class='fa fa-sort' />" class="tb-font-black"
                                            style="text-align: center;"> </display:column></td>
                        <td><display:column property="orderNum" title="Order Number <i class='fa fa-sort' />" class="tb-font-black"
                                            style="text-align: center;"> </display:column></td>
                        <td><display:column property="weight" title="Weight (kg) <i class='fa fa-sort' />" class="tb-font-black"
                                            style="text-align: center;"> </display:column></td>
                        <td><display:column property="volume" title="Volume (cbm) <i class='fa fa-sort' />" class="tb-font-black"
                                            style="text-align: center;"> </display:column></td>
                        <td><display:column property="port" title="Port <i class='fa fa-sort' />" class="tb-font-black"
                                            style="text-align: center;"> </display:column></td>

                    </display:table>
                        <input type="hidden" id="containerType" value="<c:out value='${sessionScope.containerSizeParam}'/>" />
                </div>


            </div>
        </div>
                    </s:form>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title" style="float:left;top: 10px;"><i class="fa fa-list"></i> Container Items</h3>

                <div class="btn-toolbar pull-right">
                    <s:hidden value="%{container.documentManifestCheck}" />
                    <s:if test=" #attr.container.documentManifestCheck == 'YES' ">
                        <a class="btn btn-info" title="Print Consolidation Manifest" onclick="generateReport(${container.documentManifestId},'CONSOLIDATION MANIFEST')"> <i class="fa fa-print"></i> Print Consolidation Manifest</a>
                    </s:if>
                    <s:else>
                        <a class="btn btn-info" title="Create Consolidation Manifest" href="<s:url action='createConsolidationReport' >
                        <s:param name="containerIdParam" value="%{containerIdParam}"></s:param>
                        <s:param name="containerSizeParam" value="%{containerSizeParam}"></s:param>
                        <s:param name="containerStatusParam" value="%{containerStatusParam}"></s:param>
                        <s:param name="containerPortCodeParam" value="%{containerPortCodeParam}"></s:param>
                        </s:url>" >
                            <i class="fa fa-file-text-o"></i> Create Consolidation Manifest</a>
                    </s:else>

                </div>
            </div>

            <div class="panel-body">
                <div class="table-responsive">
                    <display:table id="orderItemsInsideContainer" name="orderItemsInsideContainer" requestURI="viewConsolidationItemList.action"
                                   class="containerItems table table-striped table-hover table-bordered text-center tablesorter table-condensed"
                                   style="margin-top: 15px;">
                        <td><display:column property="nameSize" title="Item Name <i class='fa fa-sort' />" class="tb-font-black"
                                            style="text-align: center;"> </display:column></td>
                        <td><display:column property="orderNum" title="Order Number <i class='fa fa-sort' />" class="tb-font-black"
                                            style="text-align: center;"> </display:column></td>
                        <td><display:column property="weight" title="Weight (kg) <i class='fa fa-sort' />" class="tb-font-black"
                                            style="text-align: center;"> </display:column></td>
                        <td><display:column property="volume" title="Volume (cbm) <i class='fa fa-sort' />" class="tb-font-black"
                                            style="text-align: center;"> </display:column></td>
                        <td><display:column property="port" title="Port <i class='fa fa-sort' />" class="tb-font-black"
                                            style="text-align: center;"> </display:column></td>

                        <td><display:column title="Action">
                            <s:url var="removeItemOnContainerUrl" action="removeItemOnContainer">
                                <s:param name="containerIdParam" value="%{containerIdParam}"></s:param>
                                <s:param name="containerSizeParam" value="%{containerSizeParam}"></s:param>
                                <s:param name="containerStatusParam" value="%{containerStatusParam}"></s:param>
                                <s:param name="containerPortCodeParam" value="%{containerPortCodeParam}"></s:param>
                                <s:param name="orderItemIdParam" value="%{#attr.orderItemsInsideContainer.orderItemId}"></s:param>
                            </s:url>
                            <s:a class="icon-action-link" href="%{removeItemOnContainerUrl}" rel="tooltip" title ="Delete Container Item(s)" onclick="return confirm('Do you really want to delete?');">
                                <i class="fa fa-times"></i> Remove
                            </s:a>
                        </display:column></td>
                    </display:table>
                </div>
            </div>

            <div style="background-color: #ECF0F1; border-radius: 5px; padding: 15px; box-shadow: inset 0 0 10px #888888;">
                Total weight (kg) : <b><p id="result" style="display: inline">0</p></b> / <p style="display: inline" id="maxWt"></p> kg<br/>
                Total volume (cbm) : <b><p id="result-vol" style="display: inline">0</p></b> / <p style="display: inline" id="maxVol"></p> cbm
                <div style="float: right; margin-top: -1.2em;">
                    <button class="btn btn-success" id="submitBtn" disabled>Save</button>
                    <button type="button" class="btn btn-danger" onclick="resetBox('CONSO_EDIT')">Reset</button>

                    <s:url var="finalizeContainerUrl" action="finalizeContainer">
                        <s:param name="containerIdParam" value="#attr.container.containerId"></s:param>
                    </s:url>
                    <s:a id="finalBtn" cssClass="btn btn-primary" href="%{finalizeContainerUrl}" title="Container Info" rel="tooltip" >Final</s:a>

                </div>
            </div>

        </div>
    </div>
</div>

<script>
    // AUTHORED BY Jan Sarmiento -- START
    $(document).ready(function(){
        initValidationScript('NONE');

        var submitBtn = $('#submitBtn'),
            formToSubmit = $('#updateContainer');

        submitBtn.click(function() {
            formToSubmit.submit();
        })

    });
    // AUTHORED BY Jan Sarmiento -- END

    function generateReport(documentId,documentName) {
        var win = window.open('documentations/generateConsolidationManifestReport?documentIdParam=' + documentId, 'consolidationManifest', 'width=910,height=800');
        win.onload = function () {
            this.document.title = "Consolidation Manifest";
        }
    }
</script>