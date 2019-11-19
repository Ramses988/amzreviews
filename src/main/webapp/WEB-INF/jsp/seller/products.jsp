<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage menu="products">
    <jsp:attribute name="title"><spring:message code="product.list"/></jsp:attribute>

    <jsp:body>
        <!-- Start Preload -->
        <div id="p_prldr">
            <div class="contpre">
                <span class="svg_anm"></span>
            </div>
        </div>

        <script>
            $(window).on('load', function () {
                var $preloader = $('#p_prldr'),
                    $svg_anm   = $preloader.find('.svg_anm');
                $svg_anm.fadeOut();
                $preloader.delay(500).fadeOut('slow');
            });
        </script>
        <!-- Finished Preload -->

        <script src="/resources/js/angular.min.js"></script>
        <script src="/resources/js/products.js"></script>
        <script src="/resources/js/noty.min.js"></script>
        <script src="/resources/js/noty.valid.js"></script>
        <script src="/resources/js/bootstrap.bundle.min.js"></script>

        <section class="section section-99 section-lg-111 section-top-34 bg-default">
            <div class="container">
                <div class="col-add">
                    <h2><spring:message code="product.list"/></h2>
                    <hr class="divider bg-saffron">
                </div>
                <div id="col-add">
                    <button class="btn btn-info open-product"><spring:message code="product.add"/></button>
                </div>
                <div id="getAllController" ng-app="sellerApp" ng-controller="getAllController">
                    <div class="row col-lg-borders" ng-repeat="product in products">
                        <div class="col-lg-4">
                            <img ng-src="{{product.image}}" alt="" width="270" height="250" />
                        </div>

                        <div class="col-lg-4 text-lg-left">
                            <p><a class="a-orange" href="/seller/product/{{product.id}}">{{product.name}}...</a></p>
                            <div class="table-responsive clearfix">
                                <table class="table table-striped">
                                    <tbody>
                                    <tr>
                                        <th>ASIN</th>
                                        <th>{{product.asin}}</th>
                                    </tr>
                                    <tr>
                                        <th><spring:message code="product.price"/></th>
                                        <td><span class="price-red">&#36;{{product.price}}</span></td>
                                    </tr>
                                    <tr>
                                        <th><spring:message code="product.active"/></th>
                                        <td>{{product.activeOrders}}</td>
                                    </tr>
                                    <tr>
                                        <th><spring:message code="product.completed"/></th>
                                        <td>{{product.completedOrders}}</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="col-lg-2">
                            <p>
                                <button class="btn btn-primary-orange" ng-click="orderAdd(product.id, product.price)"><spring:message code="product.offer"/></button>
                            </p>
                            <p>
                                <a href="/seller/history/{{product.id}}" class="btn btn-primary-grey"><spring:message code="product.hystory"/></a>
                            </p>
                            <p>
                                Заявки на выкуп: {{product.countOrders}}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Modal Windows -->

        <div class="modal product-modal">
            <div class="modal-container">
                <div class="modal-header">
                    <h4 class="modal-title modalTitle"><spring:message code="product.add"/></h4>
                    <button type="button" class="close popup-close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form id="detailsFormProduct">
                        <div class="form-group">
                            <label class="col-form-label"><spring:message code="product.enter-asin"/><span id="help-asin" class="icon novi-icon mdi mdi-help-circle-outline" title='<spring:message code="product.find-asin"/>'></span></label>
                            <input id="asin" type="text" name="asin" class="form-control required lenth" placeholder='<spring:message code="product.asin"/>' autocomplete="off">
                            <span class="form-validation"></span>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-small btn-primary-orange btn-add"><spring:message code="btn.add"/></button>
                    <button class="btn-small btn-primary-grey btn-cancel"><spring:message code="btn.cancel"/></button>
                </div>
            </div>
        </div>

        <div class="modal order-modal">
            <div class="modal-container">
                <div class="modal-header">
                    <h4 class="modal-title modalTitle"><spring:message code="product.create-offer"/></h4>
                    <button type="button" class="close popup-close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form id="detailsFormOrder">
                        <div class="form-group">
                            <input type="hidden" id="id" name="id" value="">
                            <input type="hidden" id="price" name="price" value="">
                            <label class="col-form-label"><spring:message code="product.keyword"/><span id="help-key" class="icon novi-icon mdi mdi-help-circle-outline" title='<spring:message code="product.des-keyword"/>'></span></label>
                            <input id="key" name="key" class="form-control required lenth" placeholder='<spring:message code="product.enter-keyword"/>' autocomplete="off" type="text">
                            <span class="form-validation"></span>
                        </div>

                        <div class="form-group">
                            <div class="form-check">
                                <label>
                                    <input type="radio" name="review" id="review1" value="1">
                                    <span class="label-text"><spring:message code="product.with-feedback"/></span>
                                </label>
                            </div>
                            <div class="form-check">
                                <label>
                                    <input type="radio" name="review" id="review2" value="0" checked>
                                    <span class="label-text"><spring:message code="product.without-feedback"/></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-form-label"><spring:message code="product.number-buy"/><span id="help-count" class="icon novi-icon mdi mdi-help-circle-outline" title='<spring:message code="product.made"/>'></span></label>
                            <input id="count" name="count" class="form-control required number range" placeholder="0" autocomplete="off" type="text">
                            <span class="form-validation"></span>
                        </div>
                        <div class="form-group">
                            <div id="label-hide" style="display: none">
                                <p>
                                    <span id="small-price"></span><br/>
                                    <span id="small-fees"></span><br/>
                                    <span id="small-percent"></span>
                                </p>
                            </div>
                            <label class="col-form-label"><spring:message code="product.total"/>: <b><span class="price-red"></span></b></label>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-small btn-primary-orange btn-order"><spring:message code="btn.create"/></button>
                    <button class="btn-small btn-primary-grey btn-cancel"><spring:message code="btn.cancel"/></button>
                </div>
            </div>
        </div>

        <div class="modal info-modal">
            <div class="modal-container">
                <div class="modal-header">
                    <h4 class="modal-title modalTitle"><img id="Success" src="/resources/images/ok.png" alt="OK"/>
                        <spring:message code="customer.received"/></h4>
                    <button type="button" class="close popup-close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <p><spring:message code="product.request"/></p>
                </div>
                <div class="modal-footer">
                    <button class="btn-small btn-primary-orange btn-cancel">Ok</button>
                </div>
            </div>
        </div>

        <!-- End Modal Windows -->

        <script>
            $('#help-asin').tooltip();
            $('#help-key').tooltip();
            $('#help-count').tooltip();
        </script>
    </jsp:body>

</reviews:genericPage>