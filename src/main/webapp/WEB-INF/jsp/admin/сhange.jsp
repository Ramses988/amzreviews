<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/WEB-INF/jsp/admin/_head.jsp" />

<main role="main">

    <div class="jumbotron">
        <div class="container">
            <h1 class="display-4">Сменить владельца</h1>
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
                                    <form method="POST" action="/admin/сhange-owner">
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Продукт</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" id="product" name="product" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Владелец</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" id="user" name="user" type="text">
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