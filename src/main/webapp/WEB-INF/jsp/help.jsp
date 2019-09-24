<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage menu="help">
    <jsp:attribute name="title">Инструкции и частые вопросы</jsp:attribute>
    <jsp:body>
        <section class="section context-dark">
            <div class="parallax-container">
                <div class="material-parallax parallax">
                    <img src="/resources/images/bg-header.jpg" alt="" style="display: block; transform: translate3d(-50%, 63px, 0px);"></div>
                <div class="parallax-content">
                    <div class="container section-top-34 section-md-top-98 section-bottom-34">
                        <div>
                            <h1 class="font-weight-bold">Частые вопросы</h1>
                        </div>
                        <ul class="list-inline list-inline-dashed p text-light breadcrumb-modern offset-top-10 offset-md-top-66">
                            <li class="list-inline-item"><a href="/">Главная</a></li>
                            <li class="list-inline-item">FAQ</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section class="section-top-50">
            <div class="container">
                <div class="row row-65 row-fix">
                    <div class="col-lg-9">
                        <div class="faq_item" id="ques1">
                            <div class="faq_ans">
                                <p>
                                    Как я могу воспользоватся сайтом ?
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p>Для того чтобы воспользоватся сайтом, необходимо зарегистрироваться в качестве продавца или покупателя. Продавцы могут выставлять свой продукт на выкуп, а
                                    покупаетли выкупают товар. Для регистрации перейдите по <a href="/register">ссылке</a>.</p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="faq_item" id="ques2">
                            <div class="faq_ans">
                                <p>
                                    Сколько стоит регистрация на сайте ?
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p>Регистрация на сайте бесплатная. Плата берется только с продавцов, за каждый выкуп. Стоимость выкупа для продавцов, стоит от $3-$5 + стоимость товара,
                                    в зависимости от выбранной услуги.</p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="faq_item" id="ques3">
                            <div class="faq_ans">
                                <p>
                                    Я хочу зарегистрироваться в качестве покупателя, что для этого надо ?
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p>Для регистрации в качестве покупателя, необходимо проживать на територии США или Канады. Иметь активный аккаунт на Amazon и PayPal.</p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="faq_item" id="ques4">
                            <div class="faq_ans">
                                <p>
                                    Сколько времени нужно чтобы получить верифай отзывы ?
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p>Все зависит от Вашего товара, если товар популярный, то выкуп происходит быстро. После выкупа товара, ревьювер обычно пишет отзыв через 10-25 дней.</p>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="col-lg-3-new">
                        <h6>ТЕМЫ:</h6>
                        <hr>
                        <p><b><a href="#ques1" class="blue-text">Как воспользоватся сайтом</a></b></p>
                        <p><b><a href="#ques2" class="blue-text">Сколько стоит регистрация</a></b></p>
                        <p><b><a href="#ques3" class="blue-text">Регистрация как Покупатель</a></b></p>
                        <p><b><a href="#ques4" class="blue-text">Через сколько появится отзыв</a></b></p>
                    </div>
                </div>
            </div>
        </section>

        <script type="text/javascript">
            $(function(){
                $("a[href^='#']").click(function(){
                    var _href = $(this).attr("href");
                    $("html, body").animate({scrollTop: $(_href).offset().top+"px"});
                    return false;
                });
            });
        </script>
    </jsp:body>
</reviews:genericPage>