<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage>
    <jsp:attribute name="title">${article.headline}</jsp:attribute>
    <jsp:attribute name="description">${article.description}</jsp:attribute>
    <jsp:attribute name="keywords">${article.keywords}</jsp:attribute>
    <jsp:body>
        <section class="section-top-50">
            <div class="container">
                <div class="row row-65 row-fix">
                    <div class="col-lg-9">
                        <h2 class="article-title">${article.headline}</h2>
                        <hr class="divider bg-saffron">
                        <div class="article">
                                ${article.text}
                        </div>
                    </div>
                    <div class="col-lg-3-new">
                        <div class="articles">
                            <div class="articles-inner">
                                <p id="thems"><spring:message code="help.topics"/>:</p>
                                <hr>
                                <p><b><a href="<spring:message code="post.link1"/>" class="blue-text"><spring:message code="post.topic1"/></a></b></p>
                                <p><b><a href="<spring:message code="post.link2"/>" class="blue-text"><spring:message code="post.topic2"/></a></b></p>
                                <p><b><a href="/article/en-us/how_to_optimize_your_amazon_product_listings" class="blue-text">Optimize your amazon product listings</a></b></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </jsp:body>
</reviews:genericPage>