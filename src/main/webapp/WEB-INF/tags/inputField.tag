<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ attribute name="name" required="true" description="Name of corresponding property in bean object" %>
<%@ attribute name="labelCode" required="true" description="Field label" %>
<%@ attribute name="inputType" required="false" description="Input type" %>
<%@ attribute name="valid" required="false" description="Input valid" %>

<spring:bind path="${name}">
    <div class="form-group offset-top-24">
        <label class="form-label form-label-outside" for="${name}">${labelCode}:</label>
        <c:choose>
            <c:when test="${inputType == 'password'}"><form:password path="${name}" class="form-control bg-white" data-constraints="${valid}" required="true"/></c:when>
            <c:otherwise><form:input path="${name}" class="form-control bg-white" data-constraints="${valid}" required="true" autocomplete="off"/></c:otherwise>
        </c:choose>
        <div class="box-comment-body invalid-feedback">${status.errorMessage}</div>
    </div>
</spring:bind>