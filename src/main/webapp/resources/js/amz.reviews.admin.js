
$(function() {
    $('#datatable').DataTable({
        "ajax": {
            "method": "GET",
            "url": "rest/admin/",
            "dataSrc": ""
        },
            "columns": [
                {
                    "data": "id"
                },
                {
                    "data": "date",
                    "render": function (data, type, row) {
                        return data.replace("T", " ");
                    }
                },
                {
                    "data": "name"
                },
                {
                    "data": "email",
                    "render": function (data, type, row) {
                        if (type === "display") {
                            return "<a href='mailto:" + data + "'>" + data + "</a>";
                        }
                        return data;
                    }
                },
                {
                    "data": "country"
                },
                {
                    "data": "city"
                },
                {
                    "data": "balance"
                }
            ]
    });
});