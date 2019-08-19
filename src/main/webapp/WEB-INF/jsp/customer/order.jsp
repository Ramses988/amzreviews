<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../fragments/_header.jsp" />
<jsp:include page="../fragments/_menu.jsp" />

<script src="/resources/js/owl.carousel.min.js"></script>


<section class="section section-50 bg-lighter novi-background">
    <jsp:useBean id="order" scope="request" type="com.amz.reviews.model.Order" />

    <div class="owl-carousel owl-theme">
        <div><img src="${order.product.image}" alt="" /></div>
        <c:forEach items="${order.product.images}" var="image">
            <div><img src="${image.getUrl()}" alt="" /></div>
        </c:forEach>
    </div>

    <div class="container">
        <h2 class="text-left">${order.product.title}</h2>
        <div>
            <div class="row row-65 row-fix">
                <div class="col-lg-7 col-xl-8">
                    <div class="text-md-left offset-top-50">
                        <h5 class="font-weight-bold">Описание</h5>
                        <ul>
                            ${order.product.description}
                        </ul>
                    </div>
                    <div class="offset-top-30">
                        <!-- Bootstrap Table-->

                    </div>
                </div>
                <div class="col-lg-5 col-xl-4 text-lg-left inset-lg-left-30">
                    <div class="row row-50-new">
                        <div class="col-sm-12">
                            <div class="offset-top-20">
                                ASIN: ${order.product.asin}
                            </div>
                            <div class="offset-top-20 text-gr">
                                Ключ для выкупа: "${order.key}"
                            </div>
                            <div class="offset-top-20 text-gr">
                                ${order.product.reviewEnable ? "Выкуп с отзывом" : "Выкуп без отзыва"}
                            </div>
                            <div class="offset-top-20">
                                <h5 class="font-weight-bold price">Цена: <span class="price-red">&#36;${order.price}</span></h5>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <form method="POST" action="/customer/cancel">
                                <input type="hidden" id="id" name="id" value="${order.id}">
                                <button type="submit" class="btn btn-md btn-primary-orange">Отказатся</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</section>

<jsp:include page="../fragments/_footer.jsp" />