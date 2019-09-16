<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage>
    <jsp:attribute name="title">404 Страница не найдена</jsp:attribute>
    <jsp:body>
        <section class="section section-34 section-bottom-66 bg-default novi-background">
            <div class="container">
                <h3>${typeMessage}</h3>
                <div>
                    <div class="responsive-tabs responsive-tabs-classic">
                        <p>${message}</p>
                    </div>
                </div>
            </div>
        </section>
    </jsp:body>
</reviews:genericPage>