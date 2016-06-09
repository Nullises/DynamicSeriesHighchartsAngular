<!DOCTYPE html>
<html ng-app="ToDoList">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ANGULAR LOCAL STORAGE EXAMPLE</title>
    <link rel="stylesheet" href="src/materialize/css/materialize.min.css">
    <script src="src/angular.min.js"></script>
    <script src="src/angular-local-storage-master/dist/angular-local-storage.min.js"></script>
    <script src="src/angularLocalStorage.js"></script>
    <script src="src/materialize/js/materialize.min.js"></script>
  </head>
  <body ng-controller="ToDoController">
    <ul>
      <li ng-repeat="actividad in todo">{{actividad.descripcion}} - {{actividad.fecha | date: 'short'}}</li>
    </ul>
    <form ng-submit="addActv()">
      <input type="text" ng-model="newActv.descripcion">
      <input type="datetime-local" ng-model="newActv.fecha">
      <input type="submit" value="Guardar">
      <button type="button" ng-click="clean()">Borrar</button>
    </form>
  </body>
</html>
