
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
                    "data": function (row) {
                        if(row.reviewEnable) {
                            if(row.reviews != null) {
                                return '<a class="original" href="'+row.reviews+'">Review</a>';
                            } else {
                                return "";
                            }
                        } else {
                            return "Buyout without feedback";
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
                        if(data) {
                            return '<label class="paid">Paid</label>'
                        } else {
                            return "No Paid";
                        }
                    }
                }
            ]
        });
    }

    loading("#datatable", active);
    loading("#datatable1", completed);

});