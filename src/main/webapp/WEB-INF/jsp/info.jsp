<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage>
    <jsp:attribute name="title">${title}</jsp:attribute>
    <jsp:body>
        <section class="section section-34 section-bottom-66 bg-default novi-background">
            <div class="container">
                <h3><img id="Success" src="/resources/images/ok.png" alt="OK"/>${headline}.</h3>
                <h5 class="font-weight-bold">На вашу почту отправлено подтверждение</h5>
                <div>
                    <div class="responsive-tabs-classic modal-body">
                        <p>${text}</p>
                    </div>
                </div>
            </div>
        </section>
    </jsp:body>
</reviews:genericPage>