<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage menu="help">
    <jsp:attribute name="title">Инструкции и частые вопросы</jsp:attribute>
    <jsp:body>
        <section class="section-top-50">
            <div class="container">
                <div class="row row-65 row-fix">
                    <div class="col-lg-9">
                        <h2>Частые вопросы</h2>
                        <hr class="divider bg-saffron">
                        <div class="faq_item" id="ques1">
                            <div class="faq_ans">
                                <p>Как выкупить продукт?</p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p>
                                    ...
                                </p>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="col-lg-3-new">
                        <h6>ТЕМЫ:</h6>
                        <hr>
                        <p><b><a href="#ques1" class="blue-text">Как выкупить продукт?</a></b></p>
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