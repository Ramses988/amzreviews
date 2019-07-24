var app = angular.module("sellerApp", []);

app.controller("getAllController", function($scope, $http) {
    $http({
        method: "GET",
        url: "/rest/seller/"
    }).then(
        function(res) { // success
            $scope.products = res.data;

            $scope.orderAdd = function(userId, price) {
                var base = $('.order-modal');
                $(':input').val("");
                base.find('#id').val(userId);
                base.find('#price').val(price);
                base.fadeIn();
            }
        },
        function(res) { // error
            console.log("Error: " + res.status + " : " + res.data);
        }
    )
});