<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage>
    <jsp:attribute name="title"><spring:message code="hystory.orders"/></jsp:attribute>
    <jsp:attribute name="styles">
        <link rel="stylesheet" href="/resources/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="/resources/css/jquery.dataTables.min.css">
    </jsp:attribute>
    <jsp:attribute name="scripts">
        <script src="/resources/js/jquery.dataTables.min.js"></script>
        <script src="/resources/js/seller.js"></script>
    </jsp:attribute>
    <jsp:body>
        <section>
            <div class="container">
                <h2><spring:message code="hystory.orders"/></h2>
                <hr class="divider bg-saffron" >

                <input type="hidden" id="id" name="id" value="${id}">

                <div calss="offset-md-top-66">

                    <div class="tabs">
                        <input type="radio" name="inset" value="" id="tab_1" checked>
                        <label for="tab_1"><spring:message code="hystory.active"/></label>

                        <input type="radio" name="inset" value="" id="tab_2">
                        <label for="tab_2"><spring:message code="hystory.completed"/></label>

                        <div id="txt_1">
                            <table id="datatable" class="cell-border compact" style="width:100%">
                                <thead>
                                <tr>
                                    <th><spring:message code="hystory.date"/></th>
                                    <th><spring:message code="hystory.name"/></th>
                                    <th><spring:message code="product.enter-keyword"/></th>
                                    <th><spring:message code="product.price"/></th>
                                    <th><spring:message code="hystory.orderid"/></th>
                                    <th><spring:message code="hystory.review"/></th>
                                    <th><spring:message code="hystory.status"/></th>
                                    <th><spring:message code="hystory.payment"/></th>
                                </tr>
                                </thead>
                            </table>
                        </div>

                        <div id="txt_2">
                            <table id="datatable1" class="cell-border compact" style="width:100%">
                                <thead>
                                <tr>
                                    <th><spring:message code="hystory.date"/></th>
                                    <th><spring:message code="hystory.name"/></th>
                                    <th><spring:message code="product.enter-keyword"/></th>
                                    <th><spring:message code="product.price"/></th>
                                    <th><spring:message code="hystory.orderid"/></th>
                                    <th><spring:message code="hystory.review"/></th>
                                    <th><spring:message code="hystory.status"/></th>
                                    <th><spring:message code="hystory.payment"/></th>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </jsp:body>
</reviews:genericPage>