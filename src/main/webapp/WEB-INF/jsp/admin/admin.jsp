<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Админка</title>

    <link rel="stylesheet" href="resources/css/bootstrap.css">
    <link rel="stylesheet" href="resources/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="resources/css/jquery.dataTables.min.css">

    <script type="text/javascript" src="resources/js/jquery-3.4.1.min.js" defer></script>
    <script type="text/javascript" src="resources/js/jquery.dataTables.min.js" defer></script>
    <script type="text/javascript" src="resources/js/amz.reviews.admin.js" defer></script>
</head>
<body>
    <h2>Список пользователей</h2>
<div>
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
</body>
</html>