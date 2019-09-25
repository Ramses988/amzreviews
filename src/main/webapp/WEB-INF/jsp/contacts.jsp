<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage menu="contacts">
    <jsp:attribute name="title">Форма обратной связи</jsp:attribute>
    <jsp:attribute name="scripts">
        <script src="/resources/js/noty.min.js"></script>
        <script src="/resources/js/noty.valid.js"></script>
    </jsp:attribute>
    <jsp:body>

        <section class="section context-dark">
            <div class="parallax-container">
                <div class="material-parallax parallax">
                    <img src="/resources/images/bg-header.jpg" alt="" style="display: block; transform: translate3d(-50%, 63px, 0px);"></div>
                <div class="parallax-content">
                    <div class="container section-top-34 section-md-top-98 section-bottom-34">
                        <div>
                            <h1 class="font-weight-bold">Форма обратной связи</h1>
                        </div>
                        <ul class="list-inline list-inline-dashed p text-light breadcrumb-modern offset-top-10 offset-md-top-66">
                            <li class="list-inline-item"><a href="/">Главная</a></li>
                            <li class="list-inline-item">Обратная связь</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section class="section section-99 section-lg-111 section-top-34 bg-default">
            <div class="container">
                <div id="getAllController">
                    <div class="row col-lg-borders">
                        <div class="col-lg-4 modal-body">
                            <p>Мы будем рады ответить на вопросы и получить обратную связь о нашей работе.
                                Вы можете задать вопрос или описать проблему.</p>
                            <p><b>Благодаря вашим отзывам мы улучшаем качество нашей работы!</b></p>
                            <p>
                                <img src="/resources/images/feedback/facebook.png" alt="" width="23px" height="23px" />
                                <a class="facebook-a" href="">Facebook</a>
                            </p>
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
