$(function () {
    function getBalance() {
        $.get("/rest/seller/get-balance", function(data) {
            $('.right-side').find('.price-red').text(data);
        })
    }
    getBalance();
});