<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/WEB-INF/jsp/admin/_head.jsp" />

<main role="main">

    <div class="jumbotron">
        <div class="container">
            <h1 class="display-4">Список пользователей</h1>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Дата</th>
                    <th scope="col">Имя</th>
                    <th scope="col">Email</th>
                    <th scope="col">Статус</th>
                    <th scope="col">Страна</th>
                    <th scope="col">Баланс</th>
                    <th scope="col"></th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach items="${users}" var="user">
                        <jsp:useBean id="user" scope="page" type="com.amz.reviews.model.User"/>
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.date}</td>
                            <td>${user.name}</td>
                            <td>${user.email}</td>
                            <td><input type="checkbox"
                                       <c:if test="${user.enabled}">checked</c:if> /></td>
                            <td>${user.country}</td>
                            <td>${user.balance}</td>
                            <td><a href="/admin/user/${user.id}">View</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <hr>

    </div>

</main>

<jsp:include page="/WEB-INF/jsp/admin/_footer.jsp" />