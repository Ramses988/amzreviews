<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/WEB-INF/jsp/admin/_head.jsp" />

<main role="main">

    <div class="jumbotron">
        <div class="container">
            <h1 class="display-4">${product.id == null ? 'Добавить новый продукт' : 'Редактировать продукт'}</h1>
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
                                <div class="panel-body">
                                    <form method="POST" action="/admin/product-add">
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Заголовок</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" id="title" name="title" type="text" value="${product.title}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">ASIN</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" id="asin" name="asin" type="text" value="${product.asin}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Изображение</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" id="image" name="image" type="text" value="${product.image}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Изображения</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" id="images" name="images" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Цена</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" id="price" name="price" value="${product.price}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Описание</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" id="description" name="description" type="text" value="${product.description}"></textarea>
                                            </div>
                                        </div>
                                        <hr>
                                        <button class="btn btn-primary" type="submit">Сохранить</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr>
    </div>

</main>

<jsp:include page="/WEB-INF/jsp/admin/_footer.jsp" />