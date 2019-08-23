<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="fragments/_header.jsp" />
<jsp:include page="fragments/_logo.jsp" />

<!--Section Sign In-->
<section class="section section-34 section-bottom-66 bg-default novi-background">
    <div class="container">
        <h3>Личный кабинет</h3>
        <hr class="divider bg-saffron">
        <div>
            <div class="responsive-tabs responsive-tabs-classic">
                <div class="resp-tabs-container tabs-group-default">
                    <div>
                        <div class="row row-fix justify-content-sm-center">
                            <div class="col-sm-8 col-md-6 col-lg-4">

                                <form:form class="rd-form text-left" method="POST" action="spring_security_check">
                                    <div class="form-group">
                                        <label class="form-label form-label-outside" for="form-login-username">E-mail:</label>
                                        <input class="form-control bg-white" id="form-login-username" type="text" name="username" data-constraints="@Required">
                                    </div>
                                    <div class="form-group offset-top-24">
                                        <label class="form-label form-label-outside" for="form-login-password">Пароль:</label>
                                        <input class="form-control bg-white" id="form-login-password" type="password" name="password" data-constraints="@Required">
                                    </div>
                                    <div class="offset-top-24">
                                        <button class="btn btn-primary-orange btn-block" type="submit">Вход</button>
                                    </div>
                                </form:form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="fragments/_footer.jsp" />