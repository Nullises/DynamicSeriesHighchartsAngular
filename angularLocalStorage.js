angular.module("ToDoList", ["LocalStorageModule"])
.controller("ToDoController", function($scope, localStorageService){
  if(localStorageService.get("angular-todolist")){
    $scope.todo = localStorageService.get("angular-todolist");
  }else{
      $scope.todo = [];
  }
  /*

  {
      descripcion: 'Terminar el curso Angular',
      fecha: '3-03-2015 2:00 pm'
  }

  */

  //WATCHER
  $scope.$watchCollection('todo', function(newValue, oldValue){
        localStorageService.set("angular-todolist", $scope.todo);
  });
  //AÑADIR ACTIVIDAD
  $scope.addActv = function(){
    $scope.todo.push($scope.newActv);
    $scope.newActv = {};
  }
  //BORRAR ACTIVIDAD
  $scope.clean = function(){
    $scope.todo = [];
  }
});
