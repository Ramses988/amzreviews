$(function() {

    $('input[type=radio][name=inset]').change(function () {
        $.fn.dataTable.tables( {visible: true, api: true} ).columns.adjust();
    });

    loading("#datatable", "active");
    loading("#datatable1", "completed");

});

function orderid(id) {
    $(':input[type=text]').val("");
    $('#number').val(id);
    $('.orderid-modal').fadeIn();
}

function reviews(id) {
    $(':input[type=text]').val("");
    $('#reviews1').val(id);
    $('.reviews-modal').fadeIn();
}

function loading(name, url) {
    $(name).DataTable({
        "order": [[ 0, "desc" ]],
        "destroy": true,
        "scrollX": true,
        "searching": true,
        "paging": true,
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
                "data": function (row) {
                    if(row.status == "Completed") {
                        return '<label>'+(row.name).substring(0, 25) + "..."+'</label>';
                    } else {
                        return '<a href="/customer/order/'+row.id+'" class="a-orange">'+(row.name).substring(0, 25) + "..."+'</a>';
                    }
                }
            },
            {
                "data": "key",
                "render": function (data) {
                    return data;
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
                        return '<button class="btn-border" onclick="orderid('+row.id+')">Добавить Номер</button>';
                    }
                }
            },
            {
                "data": function (row) {
                    if(row.reviewEnable) {
                        if(row.reviews != null) {
                            return '<a class="original" href="'+row.reviews+'">Отзыв</a>';
                        } else {
                            return '<button class="btn-border" onclick="reviews('+row.id+')">Добавить ссылку</button>';
                        }
                    } else {
                        return "Выкуп без отзыва";
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
                "data": "refund",
                "render": function (data) {
                    if(data) {
                        return '<label class="paid">Возмещено</label>'
                    } else {
                        return "Не возмещено";
                    }
                }
            }
        ]
    });
}