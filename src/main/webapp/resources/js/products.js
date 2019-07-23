var app = angular.module("sellerApp", []);

app.controller("getAllController", function($scope, $http) {
    $http({
        method: "GET",
        url: "/rest/seller/"
    }).then(
        function(res) { // success
            $scope.products = res.data;
        },
        function(res) { // error
            console.log("Error: " + res.status + " : " + res.data);
        }
    )
});