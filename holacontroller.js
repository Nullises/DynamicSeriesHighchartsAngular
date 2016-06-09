//Módulo
angular.module("miPrimeraApp", [])
//Controlador
.controller("primerControlador", function($scope){
//Propiedades
$scope.nuevoComentario = {}; //Inicializar arreglo de nuevos comentarios
$scope.comentarios = [
  {
    comentario: "Buen tutorial",
    username: "Hanlet Vargas"
  }
]; //Arreglo de comentarios
//Métodos
$scope.agregarComentario = function(){
  $scope.comentarios.push($scope.nuevoComentario);
  $scope.nuevoComentario = {}; //Inicializar de nuevo el arreglo (para que pueda actualizar en cola)
  }
});
