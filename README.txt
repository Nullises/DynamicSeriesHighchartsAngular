# DynamicSeriesHighchartsAngular
Dynamic Series With Highcharts in Angular.js

You need to download Angular.js script, Jquery script, Highcharts.js (all) and Materalize (all) in order to draw the charts.

Also, you need to create a folder named "src" that will contain all scripts (Angular, Highcharts, Materialize and controller, directive and
Json file that contains this repo).

How does it work?

A Json File named config.json, contains all data that you need for drawing the chart. dataContent is an array in this Json 
composed by three php files that are encoded in Json. These php files filter the data from the database (registro.sql). Through angular.fromJson function, this file is deserialized. 

With the $http.get service, you can read every php-json-encoded files or specify the file you want (by index). That data is readed by the angular.forEach function. You can store it in an array.

With these arrays you obtain the series 'name' and series 'data-numbers' that you need for adding series dynamically.

A for-loop to run each index and build the series and an while-loop to reload the chart are added for dynamic view. 

That is all!


