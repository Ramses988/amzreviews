<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../fragments/_header.jsp" />
<jsp:include page="../fragments/_menu.jsp" />


<section class="section section-bottom-98 section-top-34 section-lg-bottom-110 section-lg-top-66 bg-default novi-background">
    <div class="container">
        <h2>Каталог продуктов</h2>
        <hr class="divider bg-saffron">
        <div class="row row-65-new">

            <c:forEach items="${products}" var="product">
                <jsp:useBean id="product" scope="page" type="com.amz.reviews.model.Product" />
                <div class="col-md-6-new col-lg-4-new">
                    <a href="/customer/product/${product.id}"><img class="img-fluid d-inline-block" src="${product.image}" alt=""></a>
                    <div class="text-md-center offset-top-24">
                        <div class="fixed-md-title">
                            <p><a class="a-orange-un" href="/customer/product/${product.id}">${product.name}...</a></p>
                        </div>
                        <h6 class="offset-top-10">&#36;${product.price}</h6>
                    </div>
                    <div>
                        <a class="btn btn-primary-catalog" href="/customer/product/${product.id}">View Product</a>
                    </div>
                </div>

            </c:forEach>

        </div>

        <div class="offset-top-66 text-center">
            <!-- Classic Pagination-->
            <nav>
                <ul class="pagination-classic">
                    <li><a href="#">Prev</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <%--<li><a href="#">2</a></li>--%>
                    <%--<li><a href="#">3</a></li>--%>
                    <%--<li><a href="#">4</a></li>--%>
                    <li><a href="#">Next</a></li>
                </ul>
            </nav>
        </div>

</section>

<jsp:include page="../fragments/_footer.jsp" />