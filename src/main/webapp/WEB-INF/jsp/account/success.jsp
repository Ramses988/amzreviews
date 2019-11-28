<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage>
    <jsp:attribute name="title"><spring:message code="success.register"/></jsp:attribute>
    <jsp:body>
        <section class="section section-34 section-bottom-66 bg-default novi-background">
            <div class="container">
                <diV class="col-sm-8 col-center">
                    <h3><img id="Success" src="/resources/images/ok.png" alt="OK"/><spring:message code="success.register"/></h3>
                    <h5 class="font-weight-bold"><spring:message code="success.send"/></h5>
                    <div>
                        <div class="responsive-tabs-classic modal-body">
                            <p><spring:message code="success.confirm"/></p>
                            <p><spring:message code="success.spam"/></p>
                        </div>
                    </div>
                </diV>
            </div>
        </section>
    </jsp:body>
</reviews:genericPage>