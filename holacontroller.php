<!DOCTYPE html>
<html ng-app="miPrimeraApp">
  <head>
    <meta charset="utf-8">
    <title>HOLA MUNDO CON CONTROLLER</title>
    <script src="src/angular.min.js"></script>
    <script src="src/holacontroller.js"></script>
  </head>
  <body ng-controller="primerControlador">
    <input type="textarea" name="comentario" ng-model="nuevoComentario.comentario" placeholder="Comentario">
    <input type="text" name="nombre" ng-model="nuevoComentario.username" placeholder="Nombre de Usuario">
    <button type="button" name="button" ng-click="agregarComentario()">ENVIAR</button>
    <h3>COMENTARIOS</h3>
    <ul>
      <li ng-repeat="comentario in comentarios">
        {{comentario.comentario}} - <strong>{{comentario.username}}</strong>
      </li>
    </ul>
  </body>
</html>
