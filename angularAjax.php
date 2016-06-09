<!DOCTYPE html>
<html ng-app="AngularAjax">
  <head>
    <meta charset="utf-8">
    <title>ANGULAR AJAX</title>
    <link rel="stylesheet" href="src/materialize/css/materialize.min.css">
    <script src="src/angular.min.js"></script>
    <script src="src/angularAjax.js"></script>
    <script src="src/materialize/js/materialize.min.js"></script>
  </head>
  <body ng-controller="AjaxController">
    <input type="text" name="name" ng-model="newUser.name" placeholder="Nombre">
    <input type="text" name="email" ng-model="newUser.email" placeholder="Correo">
    <button type="button" name="button" ng-click="addUser()">ENVIAR</button>
    <table class="highlight centered responsive-table">
      <thead>
        <tr>
          <th>NOMBRE</th>
          <th>CORREO</th>
        </tr>
      </thead>
      <tbody ng-repeat="user in users">
        <tr>
          <td>{{user.name}}</td>
          <td>{{user.email}}</td>
        </tr>
      </tbody>
    </table>
  </body>
</html>
