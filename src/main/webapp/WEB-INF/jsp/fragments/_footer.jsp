<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Page Footer-->
<!-- Default footer-->
<footer class="section section-relative section-top-66 section-bottom-34 page-footer bg-gray-base context-dark novi-background" data-preset='{"title":"Footer","category":"main","reload":true,"id":"footer"}'>
    <div class="container">
        <div class="row row-fix justify-content-md-center text-xl-left">
            <div class="col-md-8 col-lg-12">
                <div class="row row-50 justify-content-sm-center">
                    <div class="col-sm-12 col-xl-3">
                        <!-- Footer brand-->
                        <div class="footer-brand"><a href="index.html"><img width='170' height='30' src='/resources/images/logo-light.png' alt=''/></a></div>
                        <p class="text-darker offset-top-4 inset-right-15 inset-xl-right-0 inset-xl-left-15">Real Estate</p>
                        <ul class="list-inline">
                            <li class="list-inline-item"><a class="icon novi-icon fa fa-facebook icon-xxs icon-circle icon-darkest-filled" href="#"></a></li>
                            <li class="list-inline-item"><a class="icon novi-icon fa fa-twitter icon-xxs icon-circle icon-darkest-filled" href="#"></a></li>
                            <li class="list-inline-item"><a class="icon novi-icon fa fa-google-plus icon-xxs icon-circle icon-darkest-filled" href="#"></a></li>
                            <li class="list-inline-item"><a class="icon novi-icon fa fa-linkedin icon-xxs icon-circle icon-darkest-filled" href="#"></a></li>
                        </ul>
                    </div>
                    <div class="col-sm-12 col-lg-5 text-lg-left col-xl-4">
                        <h6 class="text-uppercase text-spacing-60">Подпишись на рассылку</h6>
                        <p>Будьте в курсе последних новостей и событий компании. Введите свой адрес электронной почты и подпишитесь на нашу рассылку.</p>
                        <div class="offset-top-30">
                            <form class="rd-mailform rd-form" data-form-output="form-subscribe-footer" data-form-type="subscribe" method="post" action="bat/rd-mailform.php">
                                <div class="form-output" id="form-subscribe-footer"></div>
                                <div class="form-group">
                                    <div class="input-group input-group-sm"><span class="input-group-prepend"><span class="input-group-text input-group-icon"><span class="form-icon mdi mdi-email novi-icon"></span></span></span>
                                        <input class="form-control" placeholder="Введите свой E-Mail" type="email" name="email" data-constraints="@Required @Email"><span class="input-group-append">
                                  <button class="btn btn-sm btn-primary" type="submit">Отправить</button></span>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-sm-5 text-sm-left col-lg-3 col-xl-2 col-menu">
                        <h6 class="text-uppercase text-spacing-60">Меню</h6>
                        <div class="d-block">
                            <div class="d-inline-block">
                                <ul class="list list-marked">
                                    <li><a href="/">Гавная</a></li>
                                    <li><a href="/articles">Статьи</a></li>
                                    <li><a href="/contacts">Контакты</a></li>
                                    <li><a href="/profile">Профиль</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-7 text-sm-left col-lg-4 col-xl-3">
                        <h6 class="text-uppercase text-spacing-60">Новости</h6>
                        <div class="widget-post-wrap">
                            <!-- Post Widget-->
                            <article class="post widget-post text-left"><a href="#">
                                <div class="unit flex-row unit-spacing-xs align-items-center">
                                    <div class="unit-body">
                                        <div class="post-meta"><span class="icon-xxs novi-icon text-primary mdi mdi-arrow-right"></span>
                                            <time class="text-dark" datetime="2018-01-01">05.07.2018</time>
                                        </div>
                                        <div class="post-title">
                                            <h6 class="text-regular">10 лучших аппартоментов</h6>
                                        </div>
                                    </div>
                                </div></a></article>
                            <!-- Post Widget-->
                            <article class="post widget-post text-left"><a href="#">
                                <div class="unit flex-row unit-spacing-xs align-items-center">
                                    <div class="unit-body">
                                        <div class="post-meta"><span class="icon-xxs novi-icon text-primary mdi mdi-arrow-right"></span>
                                            <time class="text-dark" datetime="2018-01-01">05.05.2018</time>
                                        </div>
                                        <div class="post-title">
                                            <h6 class="text-regular">Как правильно выбрать недвижимость</h6>
                                        </div>
                                    </div>
                                </div></a></article>
                            <!-- Post Widget-->
                            <article class="post widget-post text-left"><a href="#">
                                <div class="unit flex-row unit-spacing-xs align-items-center">
                                    <div class="unit-body">
                                        <div class="post-meta"><span class="icon-xxs novi-icon text-primary mdi mdi-arrow-right"></span>
                                            <time class="text-dark" datetime="2018-01-01">01.07.2018</time>
                                        </div>
                                        <div class="post-title">
                                            <h6 class="text-regular">Особенности ипотечных кредитов</h6>
                                        </div>
                                    </div>
                                </div></a></article>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container offset-top-50">
        <p class="small text-darker">Intense Real Estate &copy; <span id="copyright-year"></span> . <a href="privacy.html">Privacy Policy</a></p>
    </div>
</footer>
<!-- Global Mailform Output-->
<div class="snackbars" id="form-output-global"></div>
<!-- Java script-->
    <script src="/resources/js/core.min.js"></script>
    <script src="/resources/js/script.js"></script>
    <%--<script src="/resources/js/amz.reviews.min.js"></script>--%>
</div>
</body>
</html>