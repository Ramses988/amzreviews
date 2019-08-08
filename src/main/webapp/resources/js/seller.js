
$(function() {

    $('a[data-toggle="tab"]').on( 'shown.bs.tab', function (e) {
        $.fn.dataTable.tables( {visible: true, api: true} ).columns.adjust();
    } );

    $('#datatable').DataTable({
        "scrollX": true,
        "searching": false,
        "ajax": {
            "method": "GET",
            "url": "/rest/seller/active-orders/" + $('#id').val(),
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

    $('#datatable1').DataTable({
        "scrollX": true,
        "searching": false,
        "ajax": {
            "method": "GET",
            "url": "/rest/seller/completed-orders/" + $('#id').val(),
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

});