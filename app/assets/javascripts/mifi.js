(function(){

  var dependencies = [
    // 'ngRoute',
    // 'ui.bootstrap',
    'googlechart'
  ];

  var baseUrl = "http://localhost:9000/api/v0.1/";
  var requestConfig = {
    "headers": {"Content-Type": "application/json"}
  };

  var app = angular.module('mifi', dependencies);

  function getTodayDate() {
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!
    var yyyy = today.getFullYear();
    if (dd<10) {
        dd='0'+dd
    }
    if (mm<10) {
        mm='0'+mm
    }
    return "" + yyyy + "-" + mm + "-" + dd;
  }

  app.controller('CategoryController', function($http){
    var catCtrl = this;
    catCtrl.categories = [];
    catCtrl.categoryColors =    {"total": "#2979FF"};
    catCtrl.range = "yyyy-mm";
    catCtrl.startDate = "2014-01-01";
    catCtrl.endDate   = getTodayDate();
    catCtrl.params = {
      "sumRange": catCtrl.range,
      "startDate":catCtrl.startDate,
      "endDate":  catCtrl.endDate,
      "categories": catCtrl.categories,
      "subCategories": catCtrl.selectedSubCategories
    };

    $http.get(baseUrl + "categories").
    success(function(data, status, headers, config) {
      catCtrl.categories = [];
      for (var c in data.categories) {
        catCtrl.categories.push({'cat': c, enabled: true});
      }
    })
    
    catCtrl.good = 'test';
    catCtrl.remaining = function() {
      var count = 0;
      angular.forEach(catCtrl.categories, function(todo) {
        count += todo.enabled ? 1 : 0;
      });
      if(count > 3) {catCtrl.good = 'passed';}
      else catCtrl.good = 'test';

      console.log(catCtrl.params);

      $http.post(baseUrl + "categories/aggregate", catCtrl.params, requestConfig).
      success(function(data, status, headers, config) {
        console.log(data);
      });
    };

    function assignColors(categories, colorTable) {
      var colors = [];
      for (var i = 0; i < categories.length; ++i) {
        if (categories[i] !== "date") {
          colors.push(colorTable[categories[i]]);
        }
      }
      return colors;
    }

    catCtrl.updateData = function (params) {
      $http.post(baseUrl + "categories/aggregate", params, requestConfig).
      success(function(data, status, headers, config) {
        categoriesChart.data = data.data;
        categoriesChart.options.colors = assignColors(data.data[0], catCtrl.categoryColors);
        catCtrl.catChart = categoriesChart;
      });
    
      $http.post(baseUrl + "subcategories/aggregate", params, requestConfig).
      success(function(data, status, headers, config) {
        subCategoriesChart.data = data.data;
        subCategoriesChart.options.colors = assignColors(data.data[0], catCtrl.subCategoryColors);
        catCtrl.subCatChart = subCategoriesChart;
      });
    
      $http.post(baseUrl + "categories/in", params, requestConfig).
      success(function(data, status, headers, config) {
        pieInChart.data = data.data;
        // the data have a different format in this type of graph
        var categories = [];
        for (var i = 1; i < data.data.length; ++i) {
          categories.push(data.data[i][0]);
        }
        pieInChart.options.colors = assignColors(categories, catCtrl.categoryColors);
        catCtrl.inChart = pieInChart;
      });
    
      $http.post(baseUrl + "categories/out", params, requestConfig).
      success(function(data, status, headers, config) {
        pieOutChart.data = data.data;
        // the data have a different format in this type of graph
        var categories = [];
        for (var i = 1; i < data.data.length; ++i) {
          categories.push(data.data[i][0]);
        }
        pieOutChart.options.colors = assignColors(categories, catCtrl.categoryColors);
        catCtrl.outChart = pieOutChart;
      });
    
      $http.post(baseUrl + "timeseries", params, requestConfig).
      success(function(data, status, headers, config) {
        timeSeriesChart.data = data.data;
        catCtrl.seriesChart = timeSeriesChart;
      });
    };
    
    
  });
})();
