<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!-- Page Head-->
<header class="section page-head">
    <!-- RD Navbar Transparent-->
    <div class="rd-navbar-wrap">
        <nav class="rd-navbar rd-navbar-top-panel novi-background rd-navbar-light" data-lg-stick-up-offset="79px" data-md-device-layout="rd-navbar-fixed" data-lg-device-layout="rd-navbar-static" data-lg-auto-height="true" data-md-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-stick-up="true">
            <div class="container">
                <div class="rd-navbar-inner">
                    <div class="rd-navbar-top-panel">
                        <div class="right-side">
                            <ul class="rd-navbar-top-links list-unstyled">

                                <sec:authorize access="isAnonymous()">
                                    <li><span class="icon novi-icon mdi mdi-account"></span>
                                        <a class="text-uppercase text-ubold" href="/login"><small><spring:message code="user.login"/></small></a></li>
                                    <li><span class="icon novi-icon mdi mdi-key"></span>
                                        <a class="text-uppercase text-ubold" href="/register"><small><spring:message code="user.register"/></small></a></li>
                                </sec:authorize>

                                <sec:authorize access="isAuthenticated()">
                                    <li><span class="icon novi-icon mdi mdi-account"></span>
                                        <small><spring:message code="user.hello"/>, <sec:authentication property="principal.name" /></small>
                                    </li>
                                    <sec:authorize access="hasRole('ROLE_SELLER')">
                                        <li>
                                            <spring:message code="user.balance"/>: <small class="balance"></small>
                                        </li>
                                    </sec:authorize>
                                    <li>
                                        <%--<form:form method="POST" action="/logout">--%>
                                            <%--<button class="btn-exit"><span class="icon novi-icon mdi"></span></button>--%>
                                        <%--</form:form>--%>
                                        <div>
                                            <small><a href="/logout"><spring:message code="user.logout"/></a></small>
                                        </div>
                                    </li>
                                    <%--<li><span class="icon novi-icon mdi mdi-wallet"></span>--%>
                                        <%--<small>Баланс: 0$</small></li>--%>
                                </sec:authorize>

                            </ul>
                        </div>
                        <div class="left-side">
                            <address class="contact-info text-left">
                                <div class="p">
                                    <span class="icon novi-icon mdi mdi-email-open"></span>
                                    <a id="inf-small" href="mailto:info@amzreviews.biz">info@amzreviews.biz</a>
                                ${(pageContext.response.locale == "en") ? "<img id='language' src='/resources/images/us.png'/><a id='language-a' href='?lang=ru'>ENG</a>" :
                                    "<img id='language' src='/resources/images/ru.png'/><a id='language-a' href='?lang=en'>RUS</a>"}
                                </div>
                            </address>
                        </div>
                    </div>
                    <!-- RD Navbar Panel-->
                    <div class="rd-navbar-panel">
                        <!-- RD Navbar Toggle-->
                        <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar, .rd-navbar-nav-wrap"><span></span></button>
                        <!-- RD Navbar Top Panel Toggle-->
                        <button class="rd-navbar-top-panel-toggle" data-rd-navbar-toggle=".rd-navbar, .rd-navbar-top-panel"><span></span></button>
                        <!--Navbar Brand-->
                        <div class="rd-navbar-brand">
                            <a href="/">
                                <picture>
                                    <source srcset="/resources/images/logo-dark.webp" type="image/webp">
                                    <source srcset="/resources/images/logo-dark.png" type="image/png">
                                    <img width='170' height='36' src='/resources/images/logo-dark.png' alt=''/>
                                </picture>
                        </a>
                        </div>
                    </div>
                    <div class="rd-navbar-menu-wrap">
                        <div class="rd-navbar-nav-wrap">
                            <div class="rd-navbar-mobile-scroll">
                                <!--Navbar Brand Mobile-->
                                <div class="rd-navbar-mobile-brand"><a href="/">
                                    <picture>
                                        <source srcset="/resources/images/logo-dark.webp" type="image/webp">
                                        <source srcset="/resources/images/logo-dark.png" type="image/png">
                                        <img width='170' height='36' src='/resources/images/logo-dark.png' alt=''/>
                                    </picture>
                                </a></div>
