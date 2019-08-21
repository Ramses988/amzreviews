<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- IE panel-->
<!-- <div class="ie-panel"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/warning_bar_0000_us.jpg" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div> -->
<!-- Page-->

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
                                        <a class="text-uppercase text-ubold" href="/login"><small>Войти</small></a></li>
                                    <li><span class="icon novi-icon mdi mdi-key"></span>
                                        <a class="text-uppercase text-ubold" href="login.html"><small>Регистрация</small></a></li>
                                </sec:authorize>

                                <sec:authorize access="isAuthenticated()">
                                    <li><span class="icon novi-icon mdi mdi-account"></span>
                                        <small>Привет, <sec:authentication property="principal.name" /></small>
                                    </li>
                                    <li>
                                        <%--<form:form method="POST" action="/logout">--%>
                                            <%--<button class="btn-exit"><span class="icon novi-icon mdi"></span></button>--%>
                                        <%--</form:form>--%>
                                        <div class=".url_exit">
                                            <small><a href="/logout">Выход</a></small>
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
                                    <!-- <a href="/cdn-cgi/l/email-protection#f1d2"><span class="__cf_email__" data-cfemail="7d14131b123d191810121114131653120f1a">[email&#160;protected]</span></a> -->
                                    <a id="inf-small" href="info@amzreviews.com">info@amzreviews.com</a>
                                    <!-- <a href=""> ENG</a>
                                    <a href=""> RUS</a> -->
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
                        <div class="rd-navbar-brand"><a href="#"><img width='217' height='36' src='/resources/images/logo-dark.png' alt=''/></a></div>
                    </div>
                    <div class="rd-navbar-menu-wrap">
                        <div class="rd-navbar-nav-wrap">
                            <div class="rd-navbar-mobile-scroll">
                                <!--Navbar Brand Mobile-->
                                <div class="rd-navbar-mobile-brand"><a href="#"><img width='217' height='36' src='/resources/images/logo-dark.png' alt=''/></a></div>
                                <!-- RD Navbar Nav-->
                                <ul class="rd-navbar-nav">
                                    <li><a href="index.html"><span>Главная</span></a>
                                    </li>
                                    <li class="active"><a href="catalog.html"><span>Каталог</span></a>
                                    </li>
                                    <li><a href="submit-property.html"><span>Свойства</span></a>
                                    </li>
                                    <li><a href="services.html"><span>Служба</span></a>
                                    </li>
                                    <li><a href="about.html"><span>Команда</span></a>
                                    </li>
                                    <li><a href="contacts.html"><span>Контакты</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</header>
