<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage>
    <jsp:attribute name="title">Вы зарегистрированы</jsp:attribute>
    <jsp:body>
        <section class="section section-34 section-bottom-66 bg-default novi-background">
            <div class="container">
                <diV class="col-sm-8 col-center">
                    <h3><img id="Success" src="/resources/images/ok.png" alt="OK"/>Регистрация звершена.</h3>
                    <h5 class="font-weight-bold">На вашу почту отправлено подтверждение</h5>
                    <div>
                        <div class="responsive-tabs-classic modal-body">
                            <p>На Ваш почтовый ящик отправлено сообщение, содержащее ссылку для подтверждения правильности e-mail адреса. Пожалуйста, перейдите по ссылке для завершения
                                подписки.</p>
                            <p>Если письмо не пришло в течение 15 минут, проверьте папку «Спам». Если письмо вдруг попало в эту папку, откройте письмо, нажмите кнопку «Не спам» и
                                перейдите по ссылке подтверждения. Если же письма нет и в папке «Спам», напишите нам через форму обратной связи в разделе «Контакты».</p>
                        </div>
                    </div>
                </diV>
            </div>
        </section>
    </jsp:body>
</reviews:genericPage>