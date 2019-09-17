<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage menu="contacts">
    <jsp:attribute name="title">Форма обратной связи</jsp:attribute>
    <jsp:body>
        <section class="section section-bottom-98 section-top-34 section-lg-bottom-110 section-lg-top-66 bg-default novi-background">
            <div class="container">
                <h2>Форма обратной связи</h2>
                <hr class="divider bg-saffron">
                <div class="row row-fix justify-content-sm-center">
                    <div class="col-sm-8 col-md-6 col-lg-4">
                        <div class="form-group">
                            <label class="form-label form-label-outside" for="name">Имя:</label>
                            <input class="form-control bg-white required lenth" id="name" type="text" name="name" autocomplete="off">
                            <span class="form-validation"></span>
                        </div>
                        <div class="form-group">
                            <label class="form-label form-label-outside" for="email">Email:</label>
                            <input class="form-control bg-white required lenth email" id="email" type="text" name="email" autocomplete="off">
                            <span class="form-validation"></span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </jsp:body>
</reviews:genericPage>
