<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../fragments/_header.jsp" />
<jsp:include page="../fragments/_menu.jsp" />


<section class="section section-99 section-lg-111 bg-default">
    <div class="container">
        <div class="col-add">
            <h2>Список продуктов</h2>
            <hr class="divider bg-saffron">
        </div>
        <div id="col-add">
            <button class="btn btn-info popup-open">Добавить продкут</button>
        </div>

        <c:forEach items="${products}" var="product">
            <jsp:useBean id="product" scope="page" type="com.amz.reviews.model.Product" />

            <div class="row col-lg-borders">
                <div class="col-lg-4">
                    <img src="${product.image}" alt="" width="300" height="250" />
                </div>
                <div class="col-lg-4 text-lg-left">
                    <p>${product.name}...</p>
                    <div class="table-responsive clearfix">
                        <table class="table table-striped">
                            <tbody>
                            <tr>
                                <th>ASIN</th>
                                <th>${product.asin}</th>
                            </tr>
                            <tr>
                                <th>Цена</th>
                                <td><span id="price-red">&#36;${product.price}</span></td>
                            </tr>
                            <tr>
                                <th>Активные заказы</th>
                                <td>${product.activeOrders}</td>
                            </tr>
                            <tr>
                                <th>Завершенные заказы</th>
                                <td>${product.completedOrders}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-lg-2">
                    <p><a href="#" class="btn btn-primary-orange">Добавить выкупы</a></p>
                    <p><a href="#" class="btn btn-primary-grey">История выкупов</a></p>
                    <p>Выкупов в очереди: ${product.countOrders}</p>
                </div>
            </div>

        </c:forEach>
    </div>
</section>

<!-- Modal Windows -->

<div class="popup-fade">
    <div class="popup">
        <div class="modal-header">
            <h4 class="modal-title" id="modalTitle">Добавить продукт</h4>
            <button type="button" class="close popup-close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <form id="detailsForm">
                <label class="col-form-label">Укажите ASIN продукта</label>
                <input id="asin" name="asin" class="form-control" placeholder="Введите ASIN" autocomplete="off" type="text">
            </form>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn-small btn-primary-orange btn-add">Добавить</button>
            <button class="btn-small btn-primary-grey btn-cancel">Отменить</button>
        </div>
    </div>
</div>

<jsp:include page="../fragments/_footer.jsp" />