<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/WEB-INF/jsp/admin/_head.jsp" />

<main role="main">

    <div class="jumbotron">
        <div class="container">
            <h1 class="display-4">Поиск пользователя</h1>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <form method="POST" action="/admin/user-search">
                <div id="custom-search-input">
                    <div class="input-group col-md-12">
                            <input autocomplete="off" class="form-control input-sm" id="find" name="find" placeholder= "id или почта" type="text" value="">
                            <span class="input-group-btn">
                            <button class="btn btn-primary btn-lg disabled" type="submit">
                                Поиск
                            </button>
                        </span>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <hr>
    </div>

</main>

<jsp:include page="/WEB-INF/jsp/admin/_footer.jsp" />