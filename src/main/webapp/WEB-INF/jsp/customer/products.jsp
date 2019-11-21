<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage menu="catalog">
    <jsp:attribute name="title"><spring:message code="catalog.title"/></jsp:attribute>
    <jsp:body>
        <section class="section section-bottom-98 section-top-34 section-lg-bottom-110 section-lg-top-66 bg-default novi-background">
            <div class="container">
                <h2><spring:message code="catalog.title"/></h2>
                <hr class="divider bg-saffron">
                <div class="row row-65-new">

                    <c:forEach items="${products}" var="product">
                        <jsp:useBean id="product" scope="page" type="com.amz.reviews.model.Product" />
                        <div class="col-md-6-new col-lg-4-new">
                            <a href="/customer/product/${product.id}"><img class="img-fluid d-inline-block" src="${product.image}" alt=""></a>
                            <div class="text-md-center offset-top-24">
                                <div class="fixed-md-title">
                                    <a class="a-orange-un" href="/customer/product/${product.id}">${product.name}...</a><br>
                                    <h6 class="offset-top-10 oxegen-text">
                                        <c:choose>
                                            <c:when test="${product.reviewEnable}">
                                                <spring:message code="catalog.with-feedback"/>
                                            </c:when>
                                            <c:otherwise>
                                                <spring:message code="catalog.without-feedback"/>
                                            </c:otherwise>
                                        </c:choose>
                                    </h6>
                                </div>
                                <h6 class="offset-top-10">&#36;${product.price}</h6>
                            </div>
                            <div>
                                <a class="btn btn-primary-catalog" href="/customer/product/${product.id}"><spring:message code="btn.read"/></a>
                            </div>
                        </div>
                    </c:forEach>

                </div>

                <div class="offset-top-66 text-center">
                    <!-- Classic Pagination-->
                    <nav>
                        <ul class="pagination-classic">
                            <li><a href="#"><spring:message code="page.previous"/></a></li>
                            <li class="active"><a href="#">1</a></li>
                                <%--<li><a href="#">2</a></li>--%>
                                <%--<li><a href="#">3</a></li>--%>
                                <%--<li><a href="#">4</a></li>--%>
                            <li><a href="#"><spring:message code="page.next"/></a></li>
                        </ul>
                    </nav>
                </div>

        </section>
    </jsp:body>
</reviews:genericPage>