angular.module("AngularAjax", [])
.controller("AjaxController", function($scope, $http){
  $scope.users = [];
  $scope.newUser = {};
  $http.get("http://jsonplaceholder.typicode.com/users")
    .success(function(data){
      $scope.users = data;
    })
    .error(function(err){

    });
    $scope.addUser = function(){
      $http.post("http://jsonplaceholder.typicode.com/posts", {
        name: $scope.newUser.name,
        email: $scope.newUser.email,
        userId: 1
      })
      .success(function(data, status, headers, config){
        $scope.users.push(data);
        $scope.newUser = {};
      })
      .error(function(error, status, headers, config){
        alert("Error");
      });
    }
});
