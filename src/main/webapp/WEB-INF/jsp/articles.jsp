<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage menu="articles">
    <jsp:attribute name="title"><spring:message code="menu.articles"/></jsp:attribute>
    <jsp:attribute name="description"><spring:message code="menu.articles"/></jsp:attribute>
    <jsp:body>

        <section class="section context-dark">
            <div class="parallax-container">
                <div class="material-parallax parallax">
                    <img src="/resources/images/bg-header.jpg" alt="" style="display: block; transform: translate3d(-50%, 63px, 0px);"></div>
                <div class="parallax-content">
                    <div class="container section-top-34 section-md-top-98 section-bottom-34">
                        <div>
                            <h1 class="font-weight-bold"><spring:message code="menu.articles"/></h1>
                        </div>
                        <ul class="list-inline list-inline-dashed p text-light breadcrumb-modern offset-top-10 offset-md-top-66">
                            <li class="list-inline-item"><a href="/"><spring:message code="menu.home"/></a></li>
                            <li class="list-inline-item"><spring:message code="menu.articles"/></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section class="section section-66 section-md-bottom-110 bg-default novi-background">
            <div class="container">
                <div class="row row-65 row-fix justify-content-sm-center">
                    <div class="col-lg-8">
                        <div class="row row-65">
                            <div class="col-md-6-new1">
                                <picture>
                                    <source srcset="/resources/images/publications/7_tips_md.webp" type="image/webp">
                                    <source srcset="/resources/images/publications/7_tips_md.png" type="image/png">
                                    <img class="img-fluid1 d-inline-block" src="/resources/images/publications/7_tips_md.png" alt="">
                                </picture>
                                <div class="text-md-left offset-top-24">
                                    <div>
                                        <b><a class="oxegen-a" href="<spring:message code="post.link1"/>"><spring:message code="post.head1"/></a></b>
                                    </div>
                                    <h6 class="offset-top-10 oxegen-date">15 <spring:message code="post.december"/> 2019</h6>
                                    <div>
                                        <p><spring:message code="post.text1"/></p>
                                        <a class="oxegen-btn" href="<spring:message code="post.link1"/>"><spring:message code="post.read"/></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6-new1">
                                <picture>
                                    <source srcset="/resources/images/publications/how_to_sell_md.webp" type="image/webp">
                                    <source srcset="/resources/images/publications/how_to_sell_md.png" type="image/png">
                                    <img class="img-fluid1 d-inline-block" src="/resources/images/publications/how_to_sell_md.png" alt="">
                                </picture>
                                <div class="text-md-left offset-top-24">
                                    <div>
                                        <b><a class="oxegen-a" href="<spring:message code="post.link2"/>"><spring:message code="post.head2"/></a></b>
                                    </div>
                                    <h6 class="offset-top-10 oxegen-date">23 <spring:message code="post.january"/> 2020</h6>
                                    <div>
                                        <p><spring:message code="post.text2"/></p>
                                        <a class="oxegen-btn" href="<spring:message code="post.link2"/>"><spring:message code="post.read"/></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6-new1">
                                <picture>
                                    <source srcset="/resources/images/publications/how_to_optimize_md.webp" type="image/webp">
                                    <source srcset="/resources/images/publications/how_to_optimize_md.png" type="image/png">
                                    <img class="img-fluid1 d-inline-block" src="/resources/images/publications/how_to_optimize_md.png" alt="">
                                </picture>
                                <div class="text-md-left offset-top-24">
                                    <div>
                                        <b><a class="oxegen-a" href="/article/en-us/how_to_optimize_your_amazon_product_listings">Optimize Your Amazon Product Listings</a></b>
                                    </div>
                                    <h6 class="offset-top-10 oxegen-date">9 <spring:message code="post.february"/> 2020</h6>
                                    <div>
                                        <p>
                                            Want your product to rank higher in the Amazon search results? You can improve the ranking (Amazon SEO, or search engine...
                                        </p>
                                        <a class="oxegen-btn" href="/article/en-us/how_to_optimize_your_amazon_product_listings"><spring:message code="post.read"/></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="offset-top-66 text-center">
                            <!-- Classic Pagination-->
                            <nav>
                                <ul class="pagination-classic">
                                    <li><a href="#"><spring:message code="page.previous"/></a></li>
                                    <li class="active"><a>1</a></li>
                                    <li><a href="#"><spring:message code="page.next"/></a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </jsp:body>
</reviews:genericPage>