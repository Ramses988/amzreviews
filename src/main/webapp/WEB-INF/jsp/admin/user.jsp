<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/WEB-INF/jsp/admin/_head.jsp" />

<main role="main">

    <div class="jumbotron">
        <div class="container">
            <h1 class="display-4">Пользователь ${user.name}</h1>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                        <div class="login-panel panel panel-default">
                            <div class="panel-heading">
                                <h6 class="panel-title">Профиль: <b>${user.name}</b></h6>
                                <div class="panel-body">
                                    <hr>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Номер</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" id="id" name="id"  readonly="True"  type="text" value="${user.id}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Имя</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" id="name" name="name" type="text" value="${user.name}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Email</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" id="email" name="email"  readonly="True"  type="text" value="${user.email}">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Баланс</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" id="balance" name="balance" type="text" value="${user.balance}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Страна</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" id="country" name="country" type="text" value="${user.country}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">PayPal</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" id="payPal" name="payPal" type="text" value="${user.payPal}">
                                        </div>
                                    </div>
                                    <hr>
                                    <input class="btn btn-primary" type="submit" value="Обновить">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <br/>
                <h4>Список продуктов</h4>
                <div class="row">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Название</th>
                            <th scope="col">ASIN</th>
                            <th scope="col">Цена</th>
                            <th scope="col">В очереде</th>
                            <th scope="col">Активные</th>
                            <th scope="col">Завершенные</th>
                            <th scope="col"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${user.products}" var="product">
                            <jsp:useBean id="product" scope="page" type="com.amz.reviews.model.Product"/>
                            <tr>
                                <td>${product.id}</td>
                                <td>${product.name}</td>
                                <td>${product.asin}</td>
                                <td>${product.price}</td>
                                <td>${product.countOrders}</td>
                                <td>${product.activeOrders}</td>
                                <td>${product.completedOrders}</td>
                                <td><a href="/admin/product/${product.id}">View</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <hr>
            </div>
            <div class="container">
                <br/>
                <h4>Список заказов</h4>
                <div class="row">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Дата</th>
                            <th scope="col">Имя</th>
                            <th scope="col">Цена</th>
                            <th scope="col">Статус</th>
                            <th scope="col">Возврат</th>
                            <th scope="col">Продукт</th>
                            <th scope="col"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${user.orders}" var="order">
                            <jsp:useBean id="order" scope="page" type="com.amz.reviews.model.Order"/>
                            <tr>
                                <td>${order.id}</td>
                                <td>${order.date}</td>
                                <td>${order.name}</td>
                                <td>${order.price}</td>
                                <td>${order.status}</td>
                                <td><input type="checkbox"
                                           <c:if test="${order.refund}">checked</c:if> /></td>
                                <td>${order.product.id}</td>
                                <td><a href="/admin/order/${order.id}">View</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <hr>
            </div>
        </div>
        <hr>
    </div>

</main>

<jsp:include page="/WEB-INF/jsp/admin/_footer.jsp" />