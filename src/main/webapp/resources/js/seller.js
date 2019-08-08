
$(function() {

    var active = "/rest/seller/active-orders/" + $('#id').val();
    var completed = "/rest/seller/completed-orders/" + $('#id').val();

    $('input[type=radio][name=inset]').change(function () {
        $.fn.dataTable.tables( {visible: true, api: true} ).columns.adjust();
    });

    function loading(name, url) {
        $(name).DataTable({
            "order": [[ 0, "desc" ]],
            "scrollX": true,
            "searching": false,
            "ajax": {
                "method": "GET",
                "url": url,
                "dataSrc": ""
            },
            "columns": [
                {
                    "data": "date",
                    "render": function (data) {
                        return data.substring(0, 10);
                    }
                },
                {
                    "data": "name",
                    "render": function (data) {
                        return '<label>'+data.substring(0, 33) + "..."+'</label>';
                    }
                },
                {
                    "data": "price",
                    "render": function (data) {
                        return "$"+data;
                    }
                },
                {
                    "data": "orderId",
                    "render": function (data) {
                        if(data != null) {
                            return data;
                        } else {
                            return "";
                        }
                    }
                },
                {
                    "data": "reviews",
                    "render": function (data) {
                        if(data != null) {
                            return '<a class="original" href="'+data+'">'+data.substring(0, 29)+"..."+'</a>';
                        } else {
                            return "";
                        }
                    }
                },
                {
                    "data": "status",
                    "render": function (data) {
                        switch (data) {
                            case 'Completed':
                                return '<label class="badges badge-completed">'+data+'</label>';
                                break;
                            case 'Reserved':
                                return '<label class="badges badge-reserved">'+data+'</label>';
                                break;
                            case 'Bought':
                                return '<label class="badges badge-bought">'+data+'</label>';
                                break;
                            default:
                                return data;
                        }
                    }
                },
                {
                    "data": "payment",
                    "render": function (data) {
                        if(data == "Not paid") {
                            return '<label>'+data+'</label>';
                        }
                        return '<label class="paid">'+data+'</label>';
                    }
                }
            ]
        });
    }

    loading("#datatable", active);
    loading("#datatable1", completed);

});