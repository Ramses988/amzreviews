<%@tag description="Page tamplate" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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

    <link rel="icon" href="https://amzreviews.biz/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CLato:400,700">
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
        <li ${menu == 'index' ? "class='active'" : ""}><a href="/"><span><spring:message code="menu.home"/></span></a></li>
        <sec:authorize access="isAnonymous()">
            <li ${menu == 'articles' ? "class='active'" : ""}><a href="/articles"><span><spring:message code="menu.articles"/></span></a></li>
            <li ${menu == 'help' ? "class='active'" : ""}><a href="/help"><span>FAQ</span></a></li>
        </sec:authorize>

        <sec:authorize access="hasRole('ROLE_SELLER')">
            <li ${menu == 'products' ? "class='active'" : ""}><a href="/seller"><span><spring:message code="menu.products"/></span></a></li>
            <li ${menu == 'help' ? "class='active'" : ""}><a href="/seller/help"><span>FAQ</span></a></li>
            <li ${menu == 'profile' ? "class='active'" : ""}><a href="/profile"><span><spring:message code="menu.profile"/></span></a></li>
        </sec:authorize>

        <sec:authorize access="hasRole('ROLE_CUSTOMER')">
            <li ${menu == 'catalog' ? "class='active'" : ""}><a href="/customer"><span><spring:message code="menu.catalog"/></span></a></li>
            <li ${menu == 'history' ? "class='active'" : ""}><a href="/customer/history"><span><spring:message code="menu.history"/></span></a></li>
            <li ${menu == 'help' ? "class='active'" : ""}><a href="/customer/help"><span>FAQ</span></a></li>
            <li ${menu == 'profile' ? "class='active'" : ""}><a href="/profile"><span><spring:message code="menu.profile"/></span></a></li>
        </sec:authorize>
        <li ${menu == 'contacts' ? "class='active'" : ""}><a href="/contacts"><span><spring:message code="menu.contacts"/></span></a></li>

    </ul>
</div></div></div></div></div></nav></div>
</header>

<jsp:doBody/>

<jsp:include page="/WEB-INF/jsp/fragments/_footer.jsp" />