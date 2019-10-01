<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage>
    <jsp:attribute name="title">${title}</jsp:attribute>
    <jsp:body>
        <section class="section section-34 section-bottom-66 bg-default novi-background">
            <div class="container">
                <diV class="col-sm-8 col-center">
                    <h3><img id="Success" src="/resources/images/ok.png" alt="OK"/>${title}</h3>
                    <h5 class="font-weight-bold">${headline}</h5>
                    <div>
                        <div class="responsive-tabs-classic modal-body">
                            <p>${text}</p>
                        </div>
                    </div>
                </diV>
            </div>
        </section>
    </jsp:body>
</reviews:genericPage>