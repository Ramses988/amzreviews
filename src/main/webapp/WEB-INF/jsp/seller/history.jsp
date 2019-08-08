<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../fragments/_header.jsp" />
<jsp:include page="../fragments/_menu.jsp" />

<section>
    <div class="container">
        <h2>История заказов</h2>
        <hr class="divider bg-saffron" >

        <input type="hidden" id="id" name="id" value="${id}">

        <div calss="offset-md-top-66">

            <div class="tabs">
                <input type="radio" class="inset" name="inset" value="" id="tab_1" checked>
                <label for="tab_1">Активные</label>

                <input type="radio" class="inset" name="inset" value="" id="tab_2">
                <label for="tab_2">Завершенные</label>

                <div id="txt_1">
                    <table id="datatable" class="cell-border compact" style="width:100%">
                        <thead>
                        <tr>
                            <th>Дата</th>
                            <th>Название</th>
                            <th>Цена</th>
                            <th>Номер Заказа</th>
                            <th>Отзыв</th>
                            <th>Статус</th>
                            <th>Оплачен</th>
                        </tr>
                        </thead>
                    </table>
                </div>

                <div id="txt_2">
                    <table id="datatable1" class="cell-border compact" style="width:100%">
                        <thead>
                        <tr>
                            <th>Дата</th>
                            <th>Название</th>
                            <th>Цена</th>
                            <th>Номер Заказа</th>
                            <th>Отзыв</th>
                            <th>Статус</th>
                            <th>Оплачен</th>
                        </tr>
                        </thead>
                    </table>
                </div>
            </div>

        </div>
    </div>
</section>
<script src="/resources/js/jquery.dataTables.min.js"></script>
<script src="/resources/js/seller.js"></script>
<jsp:include page="../fragments/_footer.jsp" />