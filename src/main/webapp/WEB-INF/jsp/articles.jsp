<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage menu="articles">
    <jsp:attribute name="title">Список статей</jsp:attribute>
    <jsp:body>

        <section class="section context-dark">
            <div class="parallax-container">
                <div class="material-parallax parallax">
                    <img src="/resources/images/bg-header.jpg" alt="" style="display: block; transform: translate3d(-50%, 63px, 0px);"></div>
                <div class="parallax-content">
                    <div class="container section-top-34 section-md-top-98 section-bottom-34">
                        <div>
                            <h1 class="font-weight-bold">Список статей</h1>
                        </div>
                        <ul class="list-inline list-inline-dashed p text-light breadcrumb-modern offset-top-10 offset-md-top-66">
                            <li class="list-inline-item"><a href="/">Главная</a></li>
                            <li class="list-inline-item">Статьи</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section class="section section-66 section-md-bottom-110 bg-default novi-background" data-preset='{"title":"Properties 3","category":"properties","reload":true,"id":"properties-3"}'>
            <div class="container">
                <div class="row row-65 row-fix justify-content-sm-center">
                    <div class="col-lg-8">
                        <div class="row row-65">
                            <div class="col-md-6"><img class="img-fluid d-inline-block" src="/resources/images/publications/public1_full.png" width="370" height="300" alt="">
                                <div class="text-md-left offset-top-24">
                                    <div>
                                        <h5><a class="oxegen-a" href="#">Топ-10 частых ошибок продовцов на Amazone</a></h5>
                                    </div>
                                    <h6 class="offset-top-10 oxegen-date">20 Сентебря 2019</h6>
                                    <div class="oxegen-text">
                                        <p>
                                            Как продать товар и не совершить ошибки. Тут ответим на частые вопросы и т.д. Как продать и орустошить Тут ответим на частые вопросы...
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6"><img class="img-fluid d-inline-block" src="/resources/images/publications/public1_full.png" width="350" height="300" alt="">
                                <div class="text-md-left offset-top-24">
                                    <div>
                                        <h5><a class="oxegen-a" href="#">С чего начать бизнес на Amazon, лучшие советы</a></h5>
                                    </div>
                                    <h6 class="offset-top-10 oxegen-date">20 Сентебря 2019</h6>
                                    <div>
                                        <p>
                                            Как продать товар и не совершить ошибки. Тут ответим на частые вопросы и т.д. Как продать и орустошить Тут ответим на частые вопросы....
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6"><img class="img-fluid d-inline-block" src="/resources/images/publications/public1_full.png" width="370" height="300" alt="">
                                <div class="text-md-left offset-top-24">
                                    <div>
                                        <h5><a class="oxegen-a" href="#">Не продается товар, залежался на складе ?</a></h5>
                                    </div>
                                    <h6 class="offset-top-10 oxegen-date">20 Сентебря 2019</h6>
                                    <div>
                                        <p>
                                            Как продать товар и не совершить ошибки. Тут ответим на частые вопросы и т.д. Как продать и орустошить Тут ответим на частые вопросы....
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="offset-top-66 text-center">
                            <!-- Classic Pagination-->
                            <nav>
                                <ul class="pagination-classic">
                                    <li><a href="#">Prev</a></li>
                                    <li class="active"><a>1</a></li>
                                    <li><a href="#">Next</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </jsp:body>
</reviews:genericPage>