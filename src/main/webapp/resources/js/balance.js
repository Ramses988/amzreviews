function getBalance() {
    $.get("/rest/seller/get-balance", function(data) {
        var root = $('.right-side').find('.balance');
        root.empty();
        root.append(data);
    })
}

$(function () {
    getBalance();
});