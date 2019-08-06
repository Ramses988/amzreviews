<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../fragments/_header.jsp" />
<jsp:include page="../fragments/_menu.jsp" />

<section>
    <div class="container">
        <h2>История заказов</h2>
        <hr class="divider bg-saffron" >

        <div calss="offset-md-top-66">

            <div class="tabs">
                <input type="radio" name="inset" value="" id="tab_1" checked>
                <label for="tab_1">Активные</label>

                <input type="radio" name="inset" value="" id="tab_2">
                <label for="tab_2">Завершенные</label>

                <div id="txt_1" class="row row-50">
                    <table id="datatable" class="table table-striped table-bordered compact" style="width:100%">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Дата</th>
                            <th>Имя</th>
                            <th>Email</th>
                            <th>Страна</th>
                            <th>Город</th>
                            <th>Баланс</th>
                        </tr>
                        </thead>
                    </table>
                </div>

                <div id="txt_2">

                </div>
            </div>

        </div>
    </div>
</section>
<script src="/resources/js/jquery.dataTables.min.js"></script>
<script src="/resources/js/amz.reviews.admin.js"></script>
<jsp:include page="../fragments/_footer.jsp" />