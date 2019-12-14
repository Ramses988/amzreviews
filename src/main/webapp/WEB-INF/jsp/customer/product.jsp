<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage>
    <jsp:attribute name="title">${product.name}</jsp:attribute>
    <jsp:attribute name="styles">
        <link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
        <link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">
    </jsp:attribute>
    <jsp:attribute name="scripts">
        <script src="/resources/js/owl.carousel.min.js"></script>
        <script src="/resources/js/noty.min.js"></script>
        <script src="/resources/js/noty.valid.js"></script>
    </jsp:attribute>
    <jsp:body>
        <div class="container">
        <section class="section section-50 bg-lighter novi-background">
            <jsp:useBean id="product" scope="request" type="com.amz.reviews.model.Product" />

            <div class="owl-carousel slider-product owl-theme">
                <div><img src="${product.image}" class="width-min-65p" alt="" /></div>
                <c:forEach items="${product.images}" var="image">
                    <div><img src="${image.getUrl()}" class="width-min-65p" alt="" /></div>
                </c:forEach>
            </div>

                <h2 class="text-left">${product.title}</h2>
                <div>
                    <div class="row row-65 row-fix">
                        <div class="col-lg-7 col-xl-8">
                            <div class="text-md-left offset-top-50">
                                <h5 class="font-weight-bold"><spring:message code="product.description"/></h5>
                                <ul>
                                        ${product.description}
                                </ul>
                            </div>
                            <div class="offset-top-30">
                                <!-- Bootstrap Table-->

                            </div>
                        </div>
                        <div class="col-lg-5 col-xl-4 text-lg-left inset-lg-left-30">
                            <div class="row row-50-new">
                                <div class="col-sm-12">
                                    <div class="offset-top-20 text-gr">
                                <%--${product.reviewEnable ? "Выкуп с отзывом" : "Выкуп без отзыва"}--%>
                                        <c:choose>
                                            <c:when test="${product.reviewEnable}">
                                                <spring:message code="catalog.with-feedback"/>
                                            </c:when>
                                        <c:otherwise>
                                                <spring:message code="catalog.without-feedback"/>
                                        </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="offset-top-20">
                                        <h5 class="font-weight-bold price"><spring:message code="product.price"/>: <span class="price-red">&#36;${product.price}</span></h5>
                                    </div>
                                </div>
                                <div class="col-sm-12">

                                    <form id="reserveProduct">
                                        <input type="hidden" id="id" name="id" value="${product.id}">
                                    </form>
                                    <button type="button" class="btn btn-primary-orange btn-reserveProduct"><spring:message code="btn.buy"/></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        </div>

    </jsp:body>
</reviews:genericPage>