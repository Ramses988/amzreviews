<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage>
    <jsp:attribute name="title">${article.headline}</jsp:attribute>
    <jsp:body>
        <section class="section-top-50">
            <div class="container">
                <div class="row row-65 row-fix">
                    <div class="col-lg-9">
                        <h2>${article.headline}</h2>
                        <hr class="divider bg-saffron">
                        <div class="text-align-left">
                                ${article.text}
                            <p>
                                    <ul class="list-inline list-inline-dashed p text-light breadcrumb-modern offset-top-10 offset-md-top-66">
                                        <li class="list-inline-item"><a href="/">Главная</a></li>
                                        <li class="list-inline-item"><a href="/articles">Статьи</a></li>
                                        <li class="list-inline-item">${article.headline}</li>
                                    </ul>
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-3-new">
                        <div class="articles">
                            <div class="articles-inner">
                                <p id="thems">Темы:</p>
                                <hr>
                                <p><b><a href="#" class="blue-text">Топ-10 частых ошибок продовцов на Amazone</a></b></p>
                                <p><b><a href="#" class="blue-text">С чего начать бизнес на Amazon, лучшие советы</a></b></p>
                                <p><b><a href="#" class="blue-text">Не продается товар, залежался на складе ?</a></b></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </jsp:body>
</reviews:genericPage>