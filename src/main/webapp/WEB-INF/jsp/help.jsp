<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage menu="help">
    <jsp:attribute name="title"><spring:message code="help.faq"/></jsp:attribute>
    <jsp:body>
        <section class="section context-dark">
            <div class="parallax-container">
                <div class="material-parallax parallax">
                    <img src="/resources/images/bg-header.jpg" alt="" style="display: block; transform: translate3d(-50%, 63px, 0px);"></div>
                <div class="parallax-content">
                    <div class="container section-top-34 section-md-top-98 section-bottom-34">
                        <div>
                            <h1 class="font-weight-bold"><spring:message code="help.faq"/></h1>
                        </div>
                        <ul class="list-inline list-inline-dashed p text-light breadcrumb-modern offset-top-10 offset-md-top-66">
                            <li class="list-inline-item"><a href="/"><spring:message code="menu.home"/></a></li>
                            <li class="list-inline-item">FAQ</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section class="section-top-50">
            <div class="container">
                <div class="row row-65 row-fix">
                    <div class="col-lg-9">
                        <div class="faq_item" id="ques1">
                            <div class="faq_ans">
                                <p>
                                    <spring:message code="help.q1"/>
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p><spring:message code="help.a1"/></p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="faq_item" id="ques2">
                            <div class="faq_ans">
                                <p>
                                    <spring:message code="help.q2"/>
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p><spring:message code="help.a2"/></p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="faq_item" id="ques3">
                            <div class="faq_ans">
                                <p>
                                    <spring:message code="help.q3"/>
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p><spring:message code="help.a3"/></p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="faq_item" id="ques4">
                            <div class="faq_ans">
                                <p>
                                    <spring:message code="help.q4"/>
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p><spring:message code="help.a4"/></p>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="col-lg-3-new">
                        <h6><spring:message code="help.topics"/>:</h6>
                        <hr>
                        <p><b><a href="#ques1" class="blue-text"><spring:message code="help.t1"/></a></b></p>
                        <p><b><a href="#ques2" class="blue-text"><spring:message code="help.t2"/></a></b></p>
                        <p><b><a href="#ques3" class="blue-text"><spring:message code="help.t3"/></a></b></p>
                        <p><b><a href="#ques4" class="blue-text"><spring:message code="help.t4"/></a></b></p>
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