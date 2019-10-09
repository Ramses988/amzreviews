<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage>
    <jsp:attribute name="title">${article.headline}</jsp:attribute>
    <jsp:body>
        <section class="section context-dark">
            <div class="parallax-container">
                <div class="material-parallax parallax">
                    <img src="/resources/images/bg-header.jpg" alt="" style="display: block; transform: translate3d(-50%, 63px, 0px);"></div>
                <div class="parallax-content">
                    <div class="container section-top-34 section-md-top-98 section-bottom-34">
                        <div>
                            <h1 class="font-weight-bold">Делимся опытом</h1>
                        </div>
                        <ul class="list-inline list-inline-dashed p text-light breadcrumb-modern offset-top-10 offset-md-top-66">
                            <li class="list-inline-item"><a href="/">Главная</a></li>
                            <li class="list-inline-item"><a href="/articles">Статьи</a></li>
                            <li class="list-inline-item">${article.headline}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section class="section-top-50">
            <div class="container">
                <div class="row row-65 row-fix">
                    <div class="col-lg-10">
                        <h2>${article.headline}</h2>
                        <hr class="divider bg-saffron">
                        <div class="text-align-left">
                                ${article.text}
                        </div>
                    </div>
                    <div class="col-lg-2-new">
                        <h6>ТЕМЫ:</h6>
                        <hr>
                        <p><b><a href="#" class="blue-text">Топ-10 частых ошибок продовцов на Amazone</a></b></p>
                        <p><b><a href="#" class="blue-text">С чего начать бизнес на Amazon, лучшие советы</a></b></p>
                        <p><b><a href="#" class="blue-text">Не продается товар, залежался на складе ?</a></b></p>
                    </div>
                </div>
            </div>
        </section>
    </jsp:body>
</reviews:genericPage>