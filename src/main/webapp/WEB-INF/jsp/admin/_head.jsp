<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
    <title>Админка</title>

    <link rel="stylesheet" href="/resources/css/admin.css">

</head>
<body>

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="/admin">Navbar</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/admin">Главная <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="users" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Пользователи</a>
                <div class="dropdown-menu" aria-labelledby="users">
                    <a class="dropdown-item" href="/admin/users">Все пользователи</a>
                    <a class="dropdown-item" href="/admin/users-enabled">Включенные</a>
                    <a class="dropdown-item" href="/admin/users-disabled">Выключенные</a>
                    <a class="dropdown-item" href="/admin/user-search">Поиск</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="products" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Продукты</a>
                <div class="dropdown-menu" aria-labelledby="products">
                    <a class="dropdown-item" href="/admin/product-add">Добавить продукт</a>
                    <a class="dropdown-item" href="/admin/сhange-owner">Поменять владельца</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="orders" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Заказы</a>
                <div class="dropdown-menu" aria-labelledby="orders">
<%--                    <a class="dropdown-item" href="#">Все заказы</a>--%>
<%--                    <a class="dropdown-item" href="#">Заказы требующие подтверждения</a>--%>
                </div>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <span id="admin-name">Привет, <sec:authentication property="principal.name" /></span>
            <a class="btn btn-outline-success my-2 my-sm-0" href="/logout">Выйти</a>
        </form>
    </div>
</nav>