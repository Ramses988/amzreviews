<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage menu="history">
    <jsp:attribute name="title"><spring:message code="hystory.orders"/></jsp:attribute>
    <jsp:attribute name="styles">
        <link rel="stylesheet" href="/resources/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="/resources/css/jquery.dataTables.min.css">
    </jsp:attribute>
    <jsp:attribute name="scripts">
        <script src="/resources/js/bootstrap.bundle.min.js"></script>
        <script src="/resources/js/jquery.dataTables.min.js"></script>
        <script src="/resources/js/customer.js"></script>
        <script src="/resources/js/noty.min.js"></script>
        <script src="/resources/js/noty.valid.js"></script>
    </jsp:attribute>
    <jsp:body>
        <section class="section section-top-34">
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
                                    <th><spring:message code="hystory.refund"/></th>
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
                                    <th><spring:message code="hystory.refund"/></th>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- Modal Windows -->

        <div class="modal orderid-modal">
            <div class="modal-container">
                <div class="modal-header">
                    <h4 class="modal-title modalTitle"><spring:message code="order.orderid"/></h4>
                    <button type="button" class="close popup-close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form id="detailsFormOrderId">
                        <div class="form-group">
                            <input type="hidden" id="number" name="id">
                            <label class="col-form-label"><spring:message code="order.enter-orderid"/>:<span id="help-orderid" class="icon novi-icon mdi mdi-help-circle-outline" title='<spring:message code="order.orderid-help"/>'></span></label>
                            <input class="form-control required" id="orderId" name="orderId" placeholder='<spring:message code="order.order"/>' autocomplete="off" type="text">
                            <span class="form-validation"></span>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-small btn-primary-orange btn-orderid"><spring:message code="btn.save"/></button>
                    <button class="btn-small btn-primary-grey btn-cancel"><spring:message code="btn.cancel"/></button>
                </div>
            </div>
        </div>

        <div class="modal reviews-modal">
            <div class="modal-container">
                <div class="modal-header">
                    <h4 class="modal-title modalTitle"><spring:message code="order.link"/></h4>
                    <button type="button" class="close popup-close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form id="detailsFormReviews">
                        <div class="form-group">
                            <input type="hidden" id="reviews1" name="id">
                            <label class="col-form-label"><spring:message code="order.enter-link"/>:<span id="help-reviews" class="icon novi-icon mdi mdi-help-circle-outline" title='<spring:message code="order.url"/>'></span></label>
                            <input class="form-control required" id="reviews" name="reviews" placeholder="URL" autocomplete="off" type="text">
                            <span class="form-validation"></span>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-small btn-primary-orange btn-reviews"><spring:message code="btn.save"/></button>
                    <button class="btn-small btn-primary-grey btn-cancel"><spring:message code="btn.cancel"/></button>
                </div>
            </div>
        </div>
        <script>
            $('#help-orderid').tooltip();
            $('#help-reviews').tooltip();
        </script>
    </jsp:body>
</reviews:genericPage>