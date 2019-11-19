<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage menu="help">
    <jsp:attribute name="title"><spring:message code="help.faq"/></jsp:attribute>
    <jsp:body>
        <section class="section-top-50">
            <div class="container">
                <div class="row row-65 row-fix">
                    <div class="col-lg-9">
                        <h2><spring:message code="help.faq"/></h2>
                        <hr class="divider bg-saffron">
                        <div class="faq_item" id="ques1">
                            <div class="faq_ans">
                                <p>
                                    <spring:message code="seller.q1"/>
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p><spring:message code="seller.a1"/></p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="faq_item" id="ques2">
                            <div class="faq_ans">
                                <p>
                                    <spring:message code="seller.q2"/>
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p><spring:message code="seller.a2"/></p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="faq_item" id="ques3">
                            <div class="faq_ans">
                                <p>
                                    <spring:message code="seller.q3"/>
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p><spring:message code="seller.a3"/></p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="faq_item" id="ques4">
                            <div class="faq_ans">
                                <p>
                                    <spring:message code="seller.q4"/>
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p><spring:message code="seller.a4"/></p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="faq_item" id="ques5">
                            <div class="faq_ans">
                                <p>
                                    <spring:message code="seller.q5"/>
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p><spring:message code="seller.a5"/></p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="faq_item" id="ques6">
                            <div class="faq_ans">
                                <p>
                                    <spring:message code="seller.q6"/>
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p><spring:message code="seller.a6"/></p>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="col-lg-3-new">
                        <h6><spring:message code="help.topics"/>:</h6>
                        <hr>
                        <p><b><a href="#ques1" class="blue-text"><spring:message code="seller.q1"/></a></b></p>
                        <p><b><a href="#ques2" class="blue-text"><spring:message code="seller.q2"/></a></b></p>
                        <p><b><a href="#ques3" class="blue-text"><spring:message code="seller.q3"/></a></b></p>
                        <p><b><a href="#ques4" class="blue-text"><spring:message code="seller.q4"/></a></b></p>
                        <p><b><a href="#ques5" class="blue-text"><spring:message code="seller.q5"/></a></b></p>
                        <p><b><a href="#ques6" class="blue-text"><spring:message code="seller.q6"/></a></b></p>
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