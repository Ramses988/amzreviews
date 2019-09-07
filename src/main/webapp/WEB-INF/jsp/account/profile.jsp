<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage menu="profile">
    <jsp:attribute name="title">Профиль пользователя</jsp:attribute>
    <jsp:attribute name="scripts">
        <script src="/resources/js/noty.min.js"></script>
        <script src="/resources/js/noty.valid.js"></script></jsp:attribute>
    <jsp:body>
        <section>
            <div class="container">
                <h2>Личный профиль</h2>
                <hr class="divider bg-saffron" >

                <div calss="offset-md-top-66">

                    <div class="tabs">
                        <input type="radio" name="inset" value="" id="tab_1" checked>
                        <label for="tab_1">Профиль</label>

                        <input type="radio" name="inset" value="" id="tab_2">
                        <label for="tab_2">Смена пароля</label>

                        <div id="txt_1">
                            <div class="row row-fix justify-content-sm-center">
                                <div class="col-sm-8 col-md-6 col-lg-4">
                                    <jsp:useBean id="user" scope="request" type="com.amz.reviews.model.User" />
                                    <form class="rd-form text-left" id="userProfile">
                                            <div class="form-group">
                                                <label class="form-label form-label-outside" for="name">Имя:</label>
                                                <input class="form-control bg-white required lenth" id="name" type="text" name="name"
                                                       value="${user.name}" autocomplete="off">
                                                <span class="form-validation"></span>
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label form-label-outside" for="email">Email:</label>
                                                <input class="form-control" id="email" type="text" name="email" readonly="true" value="${user.email}" >
                                                <span class="form-validation"></span>
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label form-label-outside" for="pp">PayPal:</label>
                                                <input class="form-control bg-white" id="pp" type="text" name="payPal" autocomplete="off" value="${user.payPal}">
                                                <span class="form-validation"></span>
                                            </div>
                                        <div class="offset-top-24">
                                            <button type="button" class="btn btn-primary-orange btn-block btn-updateProfile">Изменить</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                        <div id="txt_2">
                            <div class="row row-fix justify-content-sm-center">
                                <div class="col-sm-8 col-md-6 col-lg-4">
                                    <form class="rd-form text-left" id="changePassword">
                                        <div class="form-group">
                                            <label class="form-label form-label-outside" for="oldPassword">Старый пароль:</label>
                                            <input class="form-control bg-white required password" id="oldPassword" type="password" name="oldPassword">
                                            <span class="form-validation"></span>
                                        </div>
                                        <div class="form-group offset-top-24">
                                            <label class="form-label form-label-outside" for="newPassword">Новый пароль:</label>
                                            <input class="form-control bg-white required password" id="newPassword" type="password" name="newPassword">
                                            <span class="form-validation"></span>
                                        </div>
                                        <div class="form-group offset-top-24">
                                            <label class="form-label form-label-outside" for="confirmPassword">Повтрите пароль:</label>
                                            <input class="form-control bg-white required password" id="confirmPassword" type="password" name="confirmPassword">
                                            <span class="form-validation"></span>
                                        </div>
                                        <div class="offset-top-24">
                                            <button type="button" class="btn btn-primary-orange btn-block btn-changePassword">Сменить</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </jsp:body>
</reviews:genericPage>