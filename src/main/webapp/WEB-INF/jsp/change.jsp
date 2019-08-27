<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Смена пароля</title>

    <link rel="stylesheet" href="/resources/css/style.css">

</head>
<body>

<section class="section section-34 section-bottom-66 bg-default novi-background">
    <div class="container">
        <h3 style="text-align: center">Смена пароля</h3>
        <hr class="divider bg-saffron">
        <div>
            <div class="responsive-tabs responsive-tabs-classic">
                <div class="resp-tabs-container tabs-group-default">
                    <div>
                        <div class="row row-fix justify-content-sm-center">
                            <div class="col-sm-8 col-md-6 col-lg-4">

                                <form:form class="rd-form text-left" method="POST" action="/reset-password">
                                    <input type="hidden" name="token" value="${token}">
                                    <div class="form-group">
                                        <label class="form-label form-label-outside">Пароль:</label>
                                        <input class="form-control bg-white"type="password" name="password" data-constraints="@Required">
                                    </div>
                                    <div class="form-group offset-top-24">
                                        <label class="form-label form-label-outside">Подтвердите пароль:</label>
                                        <input class="form-control bg-white"type="password" name="confirmPassword" data-constraints="@Required">
                                    </div>
                                    <div class="offset-top-24">
                                        <button class="btn btn-primary-orange btn-block" type="submit">Изменить</button>
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

</body>
</html>