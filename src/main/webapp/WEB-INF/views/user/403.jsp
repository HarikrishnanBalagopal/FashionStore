<%@ include file="Common-Header.jsp"%>
<div style="text-align: center; height: 400px;">
	<h1 style="line-height: 400px;">HTTP Status 403 - Access Denied</h1>
	<c:if test="${not empty pageContext.request.userPrincipal}">
    	User: <c:out value="${pageContext.request.userPrincipal.name}" />
	</c:if>
</div>
<%@ include file="Common-Footer.jsp"%>