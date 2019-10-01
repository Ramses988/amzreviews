<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage>
    <jsp:attribute name="title">Регистрация</jsp:attribute>
    <jsp:attribute name="scripts">
        <script src="/resources/js/noty.min.js"></script>
        <script src="/resources/js/noty.valid.js"></script>
        <script src="/resources/js/bootstrap.bundle.min.js"></script>
    </jsp:attribute>
    <jsp:body>

        <section class="section section-34 section-bottom-66 bg-default novi-background">
            <div class="container">
                <h3>Регистрация</h3>
                <hr class="divider bg-saffron">
                <div>
                    <div class="row row-fix justify-content-sm-center">
                        <div class="col-sm-8 col-md-6 col-lg-4">
                            <!-- RD Mailform-->
                            <form:form class="rd-form text-left" id="userRegister">
                                <div class="form-group">
                                    <label class="form-label form-label-outside" for="name">Имя:</label>
                                    <input class="form-control bg-white required lenth" id="name" type="text" name="name" autocomplete="off">
                                    <span class="form-validation"></span>
                                </div>
                                <div class="form-group">
                                    <label class="form-label form-label-outside" for="email">Email:</label>
                                    <input class="form-control bg-white required lenth email" id="email" type="text" name="email" autocomplete="off">
                                    <span class="form-validation"></span>
                                </div>
                                <div class="form-group">
                                    <label class="form-label form-label-outside" for="password">Пароль:</label>
                                    <input class="form-control bg-white required password" id="password" type="password" name="password">
                                    <span class="form-validation"></span>
                                </div>
                                <div class="form-group">
                                    <label class="form-label form-label-outside" for="confirmPassword">Подтвердите пароль:</label>
                                    <input class="form-control bg-white required password" id="confirmPassword" type="password" name="confirmPassword">
                                    <span class="form-validation"></span>
                                </div>
                                <div class="form-group offset-top-24">
                                    <label class="form-label-outside registr">Выберите Роль:
                                        <span id="help-role" class="icon novi-icon mdi mdi-help-circle-outline" title="Выберите роль Продавец, если будете продавать продукт. Роль Покупатель, если будете покупать продукт."></span>
                                    </label>
                                    <select name="roles">
                                        <option value="shopper">Покупатель</option>
                                        <option value="seller">Продавец</option>
                                    </select>
                                </div>
                                <div class="form-group offset-top-24">
                                    <label class="form-label-outside registr">Страна:</label>
                                    <select name="country">
                                        <option value="US">United States</option>
                                        <option value="UK">United Kingdom</option>
                                        <option value="BR">Brazil</option>
                                        <option value="CN">Canada</option>
                                        <option value="FR">France</option>
                                        <option value="GM">Germany</option>
                                        <option value="IT">Italy</option>
                                        <option value="JP">Japan</option>
                                        <option value="MX">Mexico</option>
                                        <option value="SP">Spain</option>
                                        <option value="RU">Russia</option>
                                        <option value="UK">Ukraine</option>
                                        <option value="OT">Other</option>
                                    </select>
                                </div>
                                <div class="offset-top-24">
                                    <button class="btn btn-primary-orange btn-block btn-register" type="button">Создать</button>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script>
            $('#help-role').tooltip();
        </script>
    </jsp:body>
</reviews:genericPage>