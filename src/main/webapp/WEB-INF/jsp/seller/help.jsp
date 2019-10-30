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
                                <p>
                                    Как добавить продукт ?
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p>На странице <a class="original" href="/seller">Продукты</a>, необходимо нажать кнопу &laquo;Добавить продукт&raquo; и в открывшемся окне указать ASIN Вашего продукта. После добавления ASIN, запрос
                                    поступит в очередь на добавление. Обычно процесс добавления занимает не более 30 минут.</p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="faq_item" id="ques2">
                            <div class="faq_ans">
                                <p>
                                    Как пополнить баланс ?
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p>Для пополнения своего баланса, Вам необходимо перевести деньги на наш PayPal или Payoneer, после чего прислать скрин платежа и свой логин от сервиса на
                                    адрес – payment@dmain.com.<br /> Наш PayPal: 3333333 и Payoneer: Azcdc@gmail.com</p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="faq_item" id="ques3">
                            <div class="faq_ans">
                                <p>
                                    Что значит заказ в очереди ?
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p>Когда Вы создаете заказ на выкуп, он помещается в очередь, пока на него не найдется покупатель. Когда покупатель решит выкупить продукт, заказ перейдет в
                                    статус активный и со счета спишутся деньги.</p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="faq_item" id="ques4">
                            <div class="faq_ans">
                                <p>
                                    Не могу удалить продукт ?
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p>Продукт можно удалить если отсутствуют активные заказы на выкуп. Если есть активные заказа, нужно подождать, когда они завершаться и удалить продукт.</p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="faq_item" id="ques5">
                            <div class="faq_ans">
                                <p>
                                    Как я могу поменять цену на продукт ?
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p>Цену продукта можно менять если нет активных выкупов. Если поменять цену во время выкупов, то цена будет отличаться, что запрещено правилами сервиса. Если нет
                                    активных заказов, то Вы можете нажать на кнопку &laquo;Обновить&raquo; в описании продукта, после чего цена и описание обновятся.</p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="faq_item" id="ques6">
                            <div class="faq_ans">
                                <p>
                                    Как узнать, что продукт выкупили ?
                                </p>
                                <img src="/resources/images/faq_gues.png" />
                            </div>
                            <div class="clear"></div>
                            <div class="faq_ques">
                                <img src="/resources/images/faq_ans.png" />
                                <p>Когда продукт выкуплен, Вы увидите Order ID, такой же Order ID должен появится в личном кабинете Amazon. Также статус поменяется на Bought.</p>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="col-lg-3-new">
                        <h6>ТЕМЫ:</h6>
                        <hr>
                        <p><b><a href="#ques1" class="blue-text">Как добавить продукт?</a></b></p>
                        <p><b><a href="#ques2" class="blue-text">Как пополнить баланс?</a></b></p>
                        <p><b><a href="#ques3" class="blue-text">Что значит заказ в очереди?</a></b></p>
                        <p><b><a href="#ques4" class="blue-text">Не могу удалить продукт?</a></b></p>
                        <p><b><a href="#ques5" class="blue-text">Как я могу поменять цену?</a></b></p>
                        <p><b><a href="#ques6" class="blue-text">Как узнать, что продукт выкупили?</a></b></p>
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