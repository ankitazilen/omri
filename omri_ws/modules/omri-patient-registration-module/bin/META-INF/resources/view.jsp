<%@ include file="/init.jsp" %>

<portlet:renderURL var="createPatientURL">
        <portlet:param name="mvcRenderCommandName" value="/create-patient" />
</portlet:renderURL>
<script>
    define._amd = define.amd;
    define.amd = false;
</script>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css" type="text/css">
</link>
<script>
    define.amd = define._amd;
</script>
<aui:button name="createPatient" value="Create Patient" href="${createPatientURL}"/>

<div>
	<table id="example" class="display" cellspacing="0" width="100%">
		<thead>
            <tr>
                <th>FirstName</th>
                <th>LastName</th>
				<th>Procedure</th>
                <th>Phone No</th>
				
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${patientBeanList }" var="patientBean">
            <tr>
                <td>${patientBean.firstName }</td>
                <td>${patientBean.lastName }</td>
                <td>
                	<ul>
                	<c:forEach items="${patientBean.resourceBeanList }" var="resourceBean">
                		<li>
                		 ${resourceBean.resourceName }(${ resourceBean.specificationName})
                		</li>
                	</c:forEach>
                	</ul>
                </td>
                <td>${patientBean.phoneNo }</td>
            </tr>
           </c:forEach>
	</table>
</div>


<script type="text/javascript">
        jQuery.noConflict();
        (function($) {
            $(function() {  
            	 $('#example').DataTable();
            	//console.log("example->" + $("#example").val());
            });
        })(jQuery);
    </script>