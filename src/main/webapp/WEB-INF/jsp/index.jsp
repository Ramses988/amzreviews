<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage menu="index">
    <jsp:attribute name="title">AmzReviews - Надежный инструмент для обмена</jsp:attribute>
    <jsp:body>
        <section>
            <div class="image-main">
                <h1 class="slider-text"><b>Надежный сервис для твоего бизнеса</b></h1>
                <div id="services-list">
                    <a href="#Services">СПИСОК УСЛУГ</a>
                </div>
            </div>
        </section>

        <section id="Services" class="section section-bottom-98 section-lg-bottom-110 top-5 bg-default novi-background">
            <div class="container">
                <h2>НАШИ УСЛУГИ</h2>
                <hr class="divider bg-saffron">
                <div class="row row-65">
                    <div class="col-md-6 col-lg-4"><img class="img-fluid d-inline-block" src="/resources/images/five.png" alt="">
                        <div class="text-md-left offset-top-24">
                            <div>
                                <h5 class="font-weight-bold orange-text">ВЕРИФИЦИРОВАННЫЕ ОТЗЫВЫ</h5>
                            </div>
                            <div class="list">
                                <p>
                                <ul>
                                    <li>&#9913; От 1 до 100 выкупов за раз</li>
                                    <li>&#9913; Своя база проверенных ревюверов</li>
                                    <li>&#9913; Цена $5 + стоимость товара</li>
                                </ul>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4"><img class="img-fluid d-inline-block" src="/resources/images/reviews.png" alt="">
                        <div class="text-md-left offset-top-24">
                            <div>
                                <h5 class="font-weight-bold orange-text">ВЫКУП ТОВАРА НА AMAZON БЕЗ ОТЗЫВОВ</h5>
                            </div>
                            <div class="list">
                                <p>
                                <ul>
                                    <li>&#9913; Выкуп по Вашим ключевым словам</li>
                                    <li>&#9913; От 1 до 100 выкупов за раз</li>
                                    <li>&#9913; Цена $3 + стоимость товара</li>
                                </ul>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4"><img class="img-fluid d-inline-block" src="/resources/images/guarantee.png" alt="">
                        <div class="text-md-left offset-top-24">
                            <div>
                                <h5 class="font-weight-bold orange-text">ГАРАНТИЯ СДЕЛОК</h5>
                            </div>
                            <div class="list">
                                <p>
                                <ul>
                                    <li> </li>
                                    <li>&#9913; Контроль каждой сделки</li>
                                    <li>&#9913; Своя база проверенных ревюверов</li>
                                    <li>&#9913; Защита от мошенников</li>
                                </ul>
                                </p>
                            </div>
                        </div>
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