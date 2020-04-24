<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage menu="index">
    <jsp:attribute name="title">Receive free products in exchange for a quality reviews - AmzReviews</jsp:attribute>
    <jsp:attribute name="description">Get Free Products For Review, Or Get Amazon Reviews For Your Products - Reviewers Get Free Products  - Sellers Get Amazon Reviews</jsp:attribute>
    <jsp:attribute name="keywords">free products, Amazon, incredible discounts, increasing the sales, quality reviews, sales, free, coupons, promo codes</jsp:attribute>
    <jsp:attribute name="styles">
        <link rel="stylesheet" href="/resources/css/owl-main-page.css">
    </jsp:attribute>
    <jsp:attribute name="scripts">
        <script src="/resources/js/owl.carousel.min.js"></script>
    </jsp:attribute>
    <jsp:body>
        <section>
            <div class="image-main">
                <h1 class="slider-text"><b><spring:message code="index.reliable"/></b></h1>
                <div id="services-list">
                    <a href="#Services"><spring:message code="index.services"/></a>
                </div>
            </div>
        </section>

        <section id="Services" class="section top-5 bg-default novi-background">
            <div class="container line-bot">
                <h2><spring:message code="index.our_services"/></h2>
                <hr class="divider bg-saffron">
                <div class="row">
                    <div class="col-md-6 col-lg-4">
                        <picture>
                            <source srcset="/resources/images/five.webp" type="image/webp">
                            <source srcset="/resources/images/five.png" type="image/png">
                            <img class="img-fluid d-inline-block" src="/resources/images/five.png" alt="">
                        </picture>
                        <div class="text-md-left offset-top-24">
                            <div>
                                <h5 class="font-weight-bold orange-text"><spring:message code="index.verified"/></h5>
                            </div>
                            <div class="list">
                                <p>
                                <ul>
                                    <li>&#9913; <spring:message code="index.from1-100"/></li>
                                    <li>&#9913; <spring:message code="index.database"/></li>
                                    <li>&#9913; <spring:message code="index.price5"/></li>
                                </ul>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <picture>
                            <source srcset="/resources/images/reviews.webp" type="image/webp">
                            <source srcset="/resources/images/reviews.png" type="image/png">
                            <img class="img-fluid d-inline-block" src="/resources/images/reviews.png" alt="">
                        </picture>
                        <div class="text-md-left offset-top-24">
                            <div>
                                <h5 class="font-weight-bold orange-text"><spring:message code="index.buyout_goods"/></h5>
                            </div>
                            <div class="list">
                                <p>
                                <ul>
                                    <li>&#9913; <spring:message code="index.keywords"/></li>
                                    <li>&#9913; <spring:message code="index.from1-100"/></li>
                                    <li>&#9913; <spring:message code="index.price3"/></li>
                                </ul>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <picture>
                            <source srcset="/resources/images/guarantee.webp" type="image/webp">
                            <source srcset="/resources/images/guarantee.png" type="image/png">
                            <img class="img-fluid d-inline-block" src="/resources/images/guarantee.png" alt="">
                        </picture>
                        <div class="text-md-left offset-top-24">
                            <div>
                                <h5 class="font-weight-bold orange-text"><spring:message code="index.transaction"/></h5>
                            </div>
                            <div class="list">
                                <p>
                                <ul>
                                    <li> </li>
                                    <li>&#9913; <spring:message code="index.control"/></li>
                                    <li>&#9913; <spring:message code="index.database"/></li>
                                    <li>&#9913; <spring:message code="index.protection"/></li>
                                </ul>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

<%--        <section class="section-bottom-98">--%>
<%--            <div class="container">--%>
<%--                <div class="section-header">--%>
<%--                    <h2 class="section-title text-center wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">Последние публикации</h2>--%>
<%--                    <hr class="divider bg-saffron">--%>
<%--                    <p class="text-align wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">--%>
<%--                        Мы всегда стараемся быть в тренде последних новостей и событий, связанных с торговой площадкой Amazon. Здесь мы делимся с Вами знаниями и опытом. В этих публикациях, вы--%>
<%--                        найдете полезные советы по работе с площадкой.--%>
<%--                    </p>--%>
<%--                </div>--%>
<%--                <div id="container-public">--%>
<%--                    <div class="row1 col-lg-borders">--%>
<%--                        <div class="col-lg-6 top-block wow fadeInLeft animated" data-wow-duration="300ms" data-wow-delay="0ms" style="visibility: visible; animation-duration: 300ms; animation-delay: 0ms; animation-name: fadeInLeft;">--%>
<%--                            <div class="fl-all">--%>
<%--                                <picture>--%>
<%--                                    <source srcset="/resources/images/publications/public1.webp" type="image/webp">--%>
<%--                                    <source srcset="/resources/images/publications/public1.png" type="image/png">--%>
<%--                                    <img id="first-article" src="/resources/images/publications/public1.png" alt="">--%>
<%--                                </picture>--%>
<%--                            </div>--%>
<%--                            <div class="fl-all">--%>
<%--                                <span class="bl">20 Сентебря 2019</span>--%>
<%--                                <h2 class="entry-title">Топ-10 частых ошибок продовцов на Amazone</h2>--%>
<%--                                <p>--%>
<%--                                    Как продать товар и не совершить ошибки. Тут ответим на частые вопросы и т.д. Как продать и орустошить склад, как продавать и все продать и потом продавать--%>
<%--                                    Как продать товар и не совершить ошибки. Тут ответим на частые вопросы и т.д. Как продать и орустошить склад, как продавать...--%>
<%--                                </p>--%>
<%--                                <a href="#">Читать дальше</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                        <div class="col-lg-6 text-lg-left wow fadeInLeft animated" data-wow-duration="300ms" data-wow-delay="100ms" style="visibility: visible; animation-duration: 300ms; animation-delay: 100ms; animation-name: fadeInRight;">--%>
<%--                            <div class="first-block">--%>
<%--                                <picture>--%>
<%--                                    <source srcset="/resources/images/publications/public2.webp" type="image/webp">--%>
<%--                                    <source srcset="/resources/images/publications/public2.png" type="image/png">--%>
<%--                                    <img src="/resources/images/publications/public2.png" alt="">--%>
<%--                                </picture>--%>
<%--                            </div>--%>
<%--                            <div class="first-block text-block">--%>
<%--                                <span class="bl">20 Сентебря 2019</span>--%>
<%--                                <h2 class="entry-title">С чего начать бизнес на Amazon, лучшие советы</h2>--%>
<%--                                <p>--%>
<%--                                    Как продать товар и не совершить ошибки. Тут ответим на частые вопросы и т.д. Как продать и орустошить...--%>
<%--                                </p>--%>
<%--                                <a href="#">Читать дальше</a>--%>
<%--                            </div>--%>
<%--                            <div class="first-block">--%>
<%--                                <picture>--%>
<%--                                    <source srcset="/resources/images/publications/public3.webp" type="image/webp">--%>
<%--                                    <source srcset="/resources/images/publications/public3.png" type="image/png">--%>
<%--                                    <img src="/resources/images/publications/public3.png" alt="">--%>
<%--                                </picture>--%>
<%--                            </div>--%>
<%--                            <div class="first-block text-block">--%>
<%--                                <span class="bl">20 Сентебря 2019</span>--%>
<%--                                <h2 class="entry-title">Не продается товар, залежался на складе ?</h2>--%>
<%--                                <p>--%>
<%--                                    Как продать товар и не совершить ошибки. Тут ответим на частые вопросы и т.д. Как продать и орустошить...--%>
<%--                                </p>--%>
<%--                                <a href="#">Читать дальше</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </section>--%>

<%--        <section class="section section-50 section-bottom-98 bg-lighter-new novi-background">--%>
<%--            <div class="container">--%>
<%--                <h2 class="font-weight-bold">Отзывы клиентов</h2>--%>
<%--                <hr class="divider bg-saffron">--%>
<%--                <div class="offset-top-66">--%>
<%--                    <!-- Testimonials Slider v.4-->--%>
<%--                    <div class="slider-main owl-carousel owl-carousel-classic owl-carousel-class-light veil-owl-nav owl-carousel-testimonials-3" data-items="1" data-md-items="2" data-lg-items="3" data-xl-items="3" data-nav="false" data-dots="true" data-margin="50px">--%>
<%--                        <div>--%>
<%--                            <blockquote class="quote quote-slider-4 unit uni-spacing-sm flex-md-row">--%>
<%--                                <div class="unit-left">--%>
<%--                                    <picture>--%>
<%--                                        <source srcset="/resources/images/feedback/facebook.webp" type="image/webp">--%>
<%--                                        <source srcset="/resources/images/feedback/facebook.png" type="image/png">--%>
<%--                                        <img class="quote-img rounded-circle" width="100" height="100" src="/resources/images/feedback/facebook.png" alt="Reviews facebook">--%>
<%--                                    </picture>--%>
<%--                                </div>--%>
<%--                                <div class="unit-body text-left">--%>
<%--                                    <div>--%>
<%--                                        <p>--%>
<%--                                            <q>Thank you for your prompt response and the help that you gave me. You always have a quick solution to any problem. What an excellent level of customer service!</q>--%>
<%--                                        </p>--%>
<%--                                    </div>--%>
<%--                                    <p class="font-weight-bold quote-author offset-top-10 offset-md-top-4">--%>
<%--                                        <cite class="text-normal">Lisa Evans</cite>--%>
<%--                                    </p>--%>
<%--                                </div>--%>
<%--                            </blockquote>--%>
<%--                        </div>--%>
<%--                        <div>--%>
<%--                            <blockquote class="quote quote-slider-4 unit uni-spacing-sm flex-md-row">--%>
<%--                                <div class="unit-left">--%>
<%--                                    <picture>--%>
<%--                                        <source srcset="/resources/images/feedback/facebook.webp" type="image/webp">--%>
<%--                                        <source srcset="/resources/images/feedback/facebook.png" type="image/png">--%>
<%--                                        <img class="quote-img rounded-circle" width="100" height="100" src="/resources/images/feedback/facebook.png" alt="Reviews facebook">--%>
<%--                                    </picture>--%>
<%--                                </div>--%>
<%--                                <div class="unit-body text-left">--%>
<%--                                    <div>--%>
<%--                                        <p>--%>
<%--                                            <q>I just want to thank you for your help. I was so pleased and grateful. Keep up the excellent work. Your site provides the best support I have ever encountered.</q>--%>
<%--                                        </p>--%>
<%--                                    </div>--%>
<%--                                    <p class="font-weight-bold quote-author offset-top-10 offset-md-top-4">--%>
<%--                                        <cite class="text-normal">Nicholas Lane</cite>--%>
<%--                                    </p>--%>
<%--                                </div>--%>
<%--                            </blockquote>--%>
<%--                        </div>--%>
<%--                        <div>--%>
<%--                            <blockquote class="quote quote-slider-4 unit uni-spacing-sm flex-md-row">--%>
<%--                                <div class="unit-left">--%>
<%--                                    <picture>--%>
<%--                                        <source srcset="/resources/images/feedback/instagram.webp" type="image/webp">--%>
<%--                                        <source srcset="/resources/images/feedback/instagram.png" type="image/png">--%>
<%--                                        <img class="quote-img" width="100" height="100" src="/resources/images/feedback/instagram.png" alt="Reviews instagram">--%>
<%--                                    </picture>--%>
<%--                                </div>--%>
<%--                                <div class="unit-body text-left">--%>
<%--                                    <div>--%>
<%--                                        <p>--%>
<%--                                            <q>Thank you very much for your rapid response. It's no doubt that your company is worth admiring! I have experienced the fastest support ever. Thank you a thousand times.</q>--%>
<%--                                        </p>--%>
<%--                                    </div>--%>
<%--                                    <p class="font-weight-bold quote-author offset-top-10 offset-md-top-4">--%>
<%--                                        <cite class="text-normal">Ethan Dean</cite>--%>
<%--                                    </p>--%>
<%--                                </div>--%>
<%--                            </blockquote>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </section>--%>

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