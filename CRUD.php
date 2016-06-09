<!DOCTYPE html>
<html ng-app="crudApp">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD DE USUARIOS REAL</title>
    <link rel="stylesheet" href="src/materialize/css/materialize.min.css">
    <link rel="stylesheet" href="src/font-awesome-4.6.1/css/font-awesome.min.css">
    <!--<script src="src/jquery/jquery-2.2.3.min.js"></script>-->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="src/angular.min.js"></script>
    <script src="src/crudcontroller.js"></script>
    <script src="src/cruddirective.js"></script>
    <script src="src/materialize/js/materialize.min.js"></script>
  </head>
  <body ng-controller="crudController">
    <!--BARRA DE NAVEGACIÓN-->
    <div class="navbar-fixed">
      <nav>
        <div class="nav-wrapper  teal darken-1">
        <a href="#" class="brand-logo center">GRAFICOS ANGULAR + MATERIALIZE + PHP + HIGHCHARTS</a>
        </div>
      </nav>
    </div>
    <center>
      <button type="button" name="button" class="button">RECARGAR</button>
    </center>
    <!--GRAFICO-->
    <div class="row">
      <highchart chart='{{renderChart}}' id="grafico"></highchart>
    </div>
  </body>
</html>
