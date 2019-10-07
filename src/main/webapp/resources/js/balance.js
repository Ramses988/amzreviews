$(function () {
    function getBalance() {
        $.get("/rest/seller/get-balance", function(data) {
            $('.right-side').find('.balance').append(data);
        })
    }
    getBalance();
});