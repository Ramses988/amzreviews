
$(function() {

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
                "url": "/rest/customer/"+url+"-orders/",
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
                    "data": function (row) {
                        if(row.orderId != null) {
                            return row.orderId
                        } else {
                            return '<button class="btn-border" onclick="addclick('+row.id+')">Добавить Номер</button>';
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
                }
            ]
        });
    }

    loading("#datatable", "active");
    loading("#datatable1", "completed");

    $('.btn-orderid').click(function () {
        $.ajax({
            type: "POST",
            url: "/rest/customer/add-orderid",
            data: $('#detailsFormOrderId').serialize()
        }).done(function () {
            $('.modal').fadeOut();
        })
    });

});

function addclick(id) {
    $(':input[type=text]').val("");
    $('#number').val(id);
    $('.orderid-modal').fadeIn();
}