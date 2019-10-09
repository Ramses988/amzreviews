<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage menu="history">
    <jsp:attribute name="title">История покупок</jsp:attribute>
    <jsp:attribute name="styles">
        <link rel="stylesheet" href="/resources/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="/resources/css/jquery.dataTables.min.css">
    </jsp:attribute>
    <jsp:attribute name="scripts">
        <script src="/resources/js/bootstrap.bundle.min.js"></script>
        <script src="/resources/js/jquery.dataTables.min.js"></script>
        <script src="/resources/js/customer.js"></script>
        <script src="/resources/js/noty.min.js"></script>
        <script src="/resources/js/noty.valid.js"></script>
    </jsp:attribute>
    <jsp:body>
        <section class="section section-top-34">
            <div class="container">
                <h2>История заказов</h2>
                <hr class="divider bg-saffron" >

                <input type="hidden" id="id" name="id" value="${id}">

                <div calss="offset-md-top-66">

                    <div class="tabs">
                        <input type="radio" name="inset" value="" id="tab_1" checked>
                        <label for="tab_1">Активные</label>

                        <input type="radio" name="inset" value="" id="tab_2">
                        <label for="tab_2">Завершенные</label>

                        <div id="txt_1">
                            <table id="datatable" class="cell-border compact" style="width:100%">
                                <thead>
                                <tr>
                                    <th>Дата</th>
                                    <th>Название</th>
                                    <th>Ключ для выкупа</th>
                                    <th>Цена</th>
                                    <th>Номер Заказа</th>
                                    <th>Отзыв</th>
                                    <th>Статус</th>
                                    <th>Возмещение</th>
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
                                    <th>Ключ для выкупа</th>
                                    <th>Цена</th>
                                    <th>Номер Заказа</th>
                                    <th>Отзыв</th>
                                    <th>Статус</th>
                                    <th>Возмещение</th>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- Modal Windows -->

        <div class="modal orderid-modal">
            <div class="modal-container">
                <div class="modal-header">
                    <h4 class="modal-title modalTitle">Добавить номер заказа</h4>
                    <button type="button" class="close popup-close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form id="detailsFormOrderId">
                        <div class="form-group">
                            <input type="hidden" id="number" name="id">
                            <label class="col-form-label">Укажите номер заказа:<span id="help-orderid" class="icon novi-icon mdi mdi-help-circle-outline" title="Номер заказа появится в личном кабинете, после покупки продукта."></span></label>
                            <input class="form-control required" id="orderId" name="orderId" placeholder="Введите номер заказа" autocomplete="off" type="text">
                            <span class="form-validation"></span>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-small btn-primary-orange btn-orderid">Добавить</button>
                    <button class="btn-small btn-primary-grey btn-cancel">Отменить</button>
                </div>
            </div>
        </div>

        <div class="modal reviews-modal">
            <div class="modal-container">
                <div class="modal-header">
                    <h4 class="modal-title modalTitle">Добавить ссылку</h4>
                    <button type="button" class="close popup-close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form id="detailsFormReviews">
                        <div class="form-group">
                            <input type="hidden" id="reviews1" name="id">
                            <label class="col-form-label">Укажите ссылку на отзыв:<span id="help-reviews" class="icon novi-icon mdi mdi-help-circle-outline" title="Скопировать URL ссылку на отзыв в Амазон. Пример: https://www.amazon.com/..."></span></label>
                            <input class="form-control required" id="reviews" name="reviews" placeholder="Введите ссылку на отзыв" autocomplete="off" type="text">
                            <span class="form-validation"></span>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-small btn-primary-orange btn-reviews">Добавить</button>
                    <button class="btn-small btn-primary-grey btn-cancel">Отменить</button>
                </div>
            </div>
        </div>
        <script>
            $('#help-orderid').tooltip();
            $('#help-reviews').tooltip();
        </script>
    </jsp:body>
</reviews:genericPage>