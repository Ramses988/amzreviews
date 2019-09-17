<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage menu="contacts">
    <jsp:attribute name="title">Форма обратной связи</jsp:attribute>
    <jsp:attribute name="scripts">
        <script src="/resources/js/noty.min.js"></script>
        <script src="/resources/js/noty.valid.js"></script>
    </jsp:attribute>
    <jsp:body>
        <section class="section section-99 section-lg-111 section-top-34 bg-default">
            <div class="container">
                <h3>Форма обратной связи</h3>
                <hr class="divider bg-saffron">
                <div id="getAllController">
                    <div class="row col-lg-borders">
                        <div class="col-lg-4 modal-body">
                            <p>Мы будем рады ответить на вопросы и получить обратную связь о нашей работе.
                                Вы можете задать вопрос или описать проблему.</p>
                            <p><b>Благодаря вашим отзывам мы улучшаем качество нашей работы!</b></p>
                        </div>

                        <div class="col-lg-4 text-lg-left">
                            <p>
                        <form class="rd-form text-left" id="fromFeedback">
                            <div class="form-group">
                                <label class="form-label form-label-outside" for="name">Ваше имя:</label>
                                <input class="form-control bg-white required lenth" type="text" id="name" name="name">
                                <span class="form-validation"></span>
                            </div>
                            <div class="form-group offset-top-24">
                                <label class="form-label form-label-outside" for="email">E-mail:</label>
                                <input class="form-control bg-white required lenth email" type="text" id="email" name="email">
                                <span class="form-validation"></span>
                            </div>
                            <div class="form-group offset-top-24">
                                <label class="orm-label-outside registr">Ваше сообщение:</label>
                                <textarea class="form-control bg-white required textarea" placeholder="Текст сообщения" name="text"></textarea>
                                <span class="form-validation"></span>
                            </div>
                            <div class="offset-top-24">
                                <button class="btn btn-primary-orange btn-block btn-feedback" type="button">Отправить</button>
                            </div>
                         </form>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </jsp:body>
</reviews:genericPage>
