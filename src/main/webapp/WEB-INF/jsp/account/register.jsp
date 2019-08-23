<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="../fragments/_header.jsp" />
<script src="/resources/js/bootstrap.bundle.min.js"></script>
<jsp:include page="../fragments/_logo.jsp" />

<section class="section section-34 section-bottom-66 bg-default novi-background">
    <div class="container">
        <h3>Регистрация</h3>
        <hr class="divider bg-saffron">
                    <div>
                        <div class="row row-fix justify-content-sm-center">
                            <div class="col-sm-8 col-md-6 col-lg-4">
                                <!-- RD Mailform-->
                                <form:form class="rd-form text-left" method="POST" action="/register">
                                    <div class="responsive-tabs-classic">
                                    <div class="form-group">
                                        <label class="form-label form-label-outside" for="form-register-username">Имя:</label>
                                        <input class="form-control bg-white" id="form-register-username" type="text" name="name" data-constraints="@Required">
                                    </div>
                                    <div class="form-group offset-top-24">
                                        <label class="form-label form-label-outside" for="form-register-email">Email:</label>
                                        <input class="form-control bg-white" id="form-register-email" type="text" name="email" data-constraints="@Required @Email">
                                    </div>
                                    <div class="form-group offset-top-24">
                                        <label class="form-label form-label-outside" for="form-register-password">Пароль:</label>
                                        <input class="form-control bg-white" id="form-register-password" type="password" name="password" data-constraints="@Required">
                                    </div>
                                    <div class="form-group offset-top-24">
                                        <label class="form-label form-label-outside" for="form-register-confirm-password">Подтвердите пароль:</label>
                                        <input class="form-control bg-white" id="form-register-confirm-password" type="password" name="confirmPassword" data-constraints="@Required">
                                    </div>
                                    </div>
                                    <div class="form-group offset-top-24">
                                        <label class="orm-label-outside registr">Выбрать Роль:
                                            <span id="help-role" class="icon novi-icon mdi mdi-help-circle-outline" title="Выберите роль Продавец, если будете продавать продукт. Роль Покупатель, если будете покупать продукт."></span></label>
                                    </div>
                                    <div class="form-group-registr">
                                        <div class="form-check">
                                            <label>
                                                <input type="radio" name="roles" id="roles1" value="shopper" checked>
                                                <span class="label-text">Покупатель</span>
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <label>
                                                <input type="radio" name="roles" id="roles2" value="seller">
                                                <span class="label-text">Продавец</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group offset-top-24">
                                        <label class="form-label-outside registr" for="form-register-confirm-password">Страна:</label>
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
                                        <button class="btn btn-primary-orange btn-block" type="submit">Создать</button>
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

<jsp:include page="../fragments/_footer.jsp" />