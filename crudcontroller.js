//Módulo de la aplicación CRUD
var crudApp = angular.module("crudApp", [])

//Controlador para ver el gráfico desde la DB
crudApp.controller("crudController", function($scope, $http){


    $http.get("./config.json").success(function(data){

      //chartType : Tipo de gráfico
      var type = angular.fromJson(data.chartType);
      var typeArray = [];
      for(i = 0; i < type.length; i++){
        typeArray.push(type[i]);
      }


      //chartTitle : Titulo del gráfico
      var title = angular.fromJson(data.chartTitle);
      var titleArray = [];
      for(i = 0; i < title.length; i++){
        titleArray.push(title[i]);
      }

      //yAxisTitle : Titulo del eje Y
      var yAxisti = angular.fromJson(data.yAxisTitle);
      var yAxisTiArray = [];
      for(i = 0; i < yAxisti.length; i++){
        yAxisTiArray.push(yAxisti[i]);
      }

      //dataContent : Contenido de las series

      var deserialize = angular.fromJson(data.dataContent); //Específico para el dataContent

          var url = deserialize[2]; //Especifico para los datos de conexion_basededatos_json

          $http.get(url).success(function(data){//Servicio $http.get

            var n_scope = [];//Arreglo nombres
            var e_scope = [];//Arreglo empleados

            angular.forEach(data, function(value){//Para cada data
              n_scope.push(value.nombre);//Añadir nombres
              e_scope.push(parseInt(value.empleados));//Añadir empleados
            });

            //console.log(n_scope);
            //console.log(e_scope);


            $('.button').click(function(){
              var chart = $('#grafico').highcharts();
              //Ciclo While para recargar el gráfico
              while(chart.series.length > 0){
                chart.series[0].remove(true);
              }
              //Ciclo for para añadir series por cada indice del arreglo nombres
              for(i = 0; i < n_scope.length; i++){
                var n_series = n_scope[i];
                var e_series = e_scope[i];
                //Añadir series
                chart.addSeries({
                  name: n_series,
                  data: [e_series]
                });
              }
            });


              //CHART GENERICO
                $scope.renderChart = {
                  chart: {
                      type: typeArray[2] //Tipo
                  },
                  title: {
                       text: titleArray[2] //Titulo
                       },
                  xAxis:{
                    categories: yAxisTiArray[2], //Como categorias usará (por ahora) el titulo del eje Y
                    title: {
                      enabled: false
                    },
                    labels: {
                      enabled: false
                    }
                  },
                  yAxis:{
                    title: {
                      text: yAxisTiArray[2] //Titulo del eje y
                    }
                  },
                  legend: {
                      enabled: true //Leyenda de cada serie
                  },
                  credits: {
                    enabled: false //Borra la marca de agua
                 },
                 lang: { //Traducción de las funciones de exportación al español
                   printChart: 'Imprimir gráfico',
                   downloadPNG: 'Descargar en PNG',
                   downloadJPEG: 'Descargar en JPG',
                   downloadPDF: 'Descargar en PDF',
                   downloadSVG: 'Descargar en SVG',
                   contextButtonTitle: 'EXPORTAR'
                 }
               };

          }).error(function(error){
            console.log("error"); //Mensaje de error si la data falla
          });


    }).error(function(error){
      alert("No se pudo traer los usuarios de la DB"); //Mensaje de error si la data falla
    });


});
