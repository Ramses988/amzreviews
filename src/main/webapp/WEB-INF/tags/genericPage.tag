<%@tag description="Page tamplate" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@attribute name="title" fragment="true" %>
<%@attribute name="styles" fragment="true" %>
<%@attribute name="scripts" fragment="true" %>

<%@attribute name="menu" required="false" description="Generic menu" %>

<!DOCTYPE html>
<html class="wow-animation" lang="ru">
<head>
    <title><jsp:invoke fragment="title"/></title>

    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">

    <link rel="icon" href="/resources/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Montserrat:400,700%7CLato:400,700">
    <jsp:invoke fragment="styles"/>
    <link rel="stylesheet" href="/resources/css/style.css">

    <script src="/resources/js/jquery-3.4.1.min.js"></script>
    <jsp:invoke fragment="scripts"/>

</head>
<body>
<div class="page text-center">

<jsp:include page="/WEB-INF/jsp/fragments/_menu.jsp" />

    <!-- RD Navbar Nav-->
    <ul class="rd-navbar-nav">
        <li ${menu == 'index' ? "class='active'" : ""}><a href="/"><span>Главная</span></a></li>
        <sec:authorize access="isAnonymous()">
            <li ${menu == 'help' ? "class='active'" : ""}><a href="/help"><span>FAQ</span></a></li>
            <li ${menu == 'news' ? "class='active'" : ""}><a href="/news"><span>Новости</span></a></li>
        </sec:authorize>

        <sec:authorize access="hasRole('ROLE_SELLER')">
            <li ${menu == 'products' ? "class='active'" : ""}><a href="/seller"><span>Продукты</span></a></li>
            <li ${menu == 'help' ? "class='active'" : ""}><a href="/seller/help"><span>FAQ</span></a></li>
            <li ${menu == 'profile' ? "class='active'" : ""}><a href="/profile"><span>Профиль</span></a></li>
        </sec:authorize>

        <sec:authorize access="hasRole('ROLE_CUSTOMER')">
            <li ${menu == 'catalog' ? "class='active'" : ""}><a href="/customer"><span>Каталог</span></a></li>
            <li ${menu == 'history' ? "class='active'" : ""}><a href="/customer/history"><span>История</span></a></li>
            <li ${menu == 'help' ? "class='active'" : ""}><a href="/customer/help"><span>FAQ</span></a></li>
            <li ${menu == 'profile' ? "class='active'" : ""}><a href="/profile"><span>Профиль</span></a></li>
        </sec:authorize>
        <li ${menu == 'contacts' ? "class='active'" : ""}><a href="/contacts"><span>Контакты</span></a></li>

    </ul>
</div></div></div></div></div></nav></div>
</header>

<jsp:doBody/>

<jsp:include page="/WEB-INF/jsp/fragments/_footer.jsp" />