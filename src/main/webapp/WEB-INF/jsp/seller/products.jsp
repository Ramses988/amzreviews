<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../fragments/_header.jsp" />
<jsp:include page="../fragments/_menu.jsp" />

<!-- Preload -->
<div id="p_prldr">
    <div class="contpre">
        <span class="svg_anm"></span>
    </div>
</div>

<script>
    $(window).on('load', function () {
    var $preloader = $('#p_prldr'),
        $svg_anm   = $preloader.find('.svg_anm');
    $svg_anm.fadeOut();
    $preloader.delay(500).fadeOut('slow');
});
</script>
<!-- Finished Preload -->

<script src="/resources/js/products.js"></script>


<section class="section section-99 section-lg-111 bg-default" ng-app="sellerApp">
    <div class="container" ng-controller="getAllController">
    <div class="col-add">
    <h2>Список продуктов</h2>
    <hr class="divider bg-saffron">
    </div>
    <div id="col-add">
    <button class="btn btn-info open-product">Добавить продкут</button>
    </div>

    <div class="row col-lg-borders" ng-repeat="product in products">
    <div class="col-lg-4">
    <img ng-src="{{product.image}}" alt="" width="300" height="250" />
    </div>
    <div class="col-lg-4 text-lg-left">
    <p>{{product.name}}...</p>
    <div class="table-responsive clearfix">
    <table class="table table-striped">
    <tbody>
    <tr>
    <th>ASIN</th>
    <th>{{product.asin}}</th>
    </tr>
    <tr>
    <th>Цена</th>
    <td><span class="price-red">&#36;{{product.price}}</span></td>
    </tr>
    <tr>
    <th>Активные заказы</th>
    <td>{{product.activeOrders}}</td>
    </tr>
    <tr>
    <th>Завершенные заказы</th>
    <td>{{product.completedOrders}}</td>
    </tr>
    </tbody>
    </table>
    </div>
    </div>
    <div class="col-lg-2">
    <p><button class="btn btn-primary-orange open-order" id="{{product.id}}">Добавить выкупы</button></p>
    <p><a href="#" class="btn btn-primary-grey">История выкупов</a></p>
    <p>Заявки на выкуп: {{product.countOrders}}</p>
    </div>
    </div>
    </div>
</section>

<!-- Modal Windows -->

<div class="modal product-modal">
    <div class="modal-container">
        <div class="modal-header">
            <h4 class="modal-title modalTitle">Добавить продукт</h4>
            <button type="button" class="close popup-close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <form id="detailsFormProduct">
                <label class="col-form-label">Укажите ASIN продукта</label>
                <input id="asin" name="asin" class="form-control" placeholder="Введите ASIN" autocomplete="off" type="text">
            </form>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn-small btn-primary-orange btn-add">Добавить</button>
            <button class="btn-small btn-primary-grey btn-cancel">Отменить</button>
        </div>
    </div>
</div>

<div class="modal order-modal">
    <div class="modal-container">
        <div class="modal-header">
            <h4 class="modal-title modalTitle">Создание выкупов</h4>
            <button type="button" class="close popup-close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <form id="detailsFormOrder">
                <div class="form-group">
                    <input type="hidden" id="id" name="id" value="">
                    <label class="col-form-label">Укажите ключ для выкупа</label>
                    <input id="key" name="key" class="form-control" placeholder="Введите ключ" autocomplete="off" type="text">
                </div>
                <div class="form-group">
                    <label class="col-form-label">Укажите количество выкупов</label>
                    <input id="count" name="count" class="form-control" placeholder="0" autocomplete="off" type="text">
                </div>
                <div class="form-group">
                    <label class="col-form-label">Общая сумма:<span class="price-red"></span></label>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn-small btn-primary-orange btn-order">Создать</button>
            <button class="btn-small btn-primary-grey btn-cancel">Отменить</button>
        </div>
    </div>
</div>

<div class="modal info-modal">
    <div class="modal-container">
        <div class="modal-header">
            <h4 class="modal-title modalTitle"><img src="/resources/images/ok.png" alt="OK" width="45px" height="40px"/>
            Запрос получен!</h4>
            <button type="button" class="close popup-close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <p>Продукт поставлен в очередь на добавление. Обычно процесс добавление занимает около 30 минут.</p>
        </div>
        <div class="modal-footer">
            <button class="btn-small btn-primary-orange btn-cancel">Ok</button>
        </div>
    </div>
</div>

<jsp:include page="../fragments/_footer.jsp" />