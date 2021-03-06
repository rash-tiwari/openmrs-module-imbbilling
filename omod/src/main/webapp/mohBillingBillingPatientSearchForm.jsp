<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ taglib prefix="mohbilling_tag" tagdir="/WEB-INF/tags/module/mohbilling" %>

<%@ include file="templates/mohBillingLocalHeader.jsp"%>
<openmrs:require privilege="Check Patient Bill Payment" otherwise="/login.htm" redirect="/module/mohbilling/checkPatientBillPayment.form" />
<h2><spring:message code="mohbilling.billing" /></h2>

<div id="search_policy">
	<mohbilling_tag:insurancePolicySearchByInsuranceCardNumber redirectUrl="billing.form" />
</div>

<br/>
<!--   
<b class="boxHeader">Search by name </b>
<div class="box">
<form action="patientSearchBill.form" method="get">
		<table>
			<tr>
				<td>Patient Name</td>
				<td><openmrs_tag:patientField formFieldName="patientId" initialValue="${param.patientId}"/></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="submit"/></td>
				<td></td>
			</tr>
		</table>
</form>
</div>
 -->
<%@ include file="/WEB-INF/template/footer.jsp"%>
