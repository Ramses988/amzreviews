<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage menu="index">
    <jsp:attribute name="title">AmzReviews - Надежный инструмент для обмена</jsp:attribute>
    <jsp:body>
        <section class="section section-bottom-98 section-top-34">
            <p><a href="/customer" class="btn btn-primary-orange">Покупатель</a></p>
            <p><a href="/seller" class="btn btn-primary-orange">Продавец</a></p>
        </section>
    </jsp:body>
</reviews:genericPage>