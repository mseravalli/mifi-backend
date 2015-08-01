'use strict';

angular.module('mifi', ['googlechart', 'ngMaterial']).controller("MainCtrl", function ($scope, $http, $mdDialog) {
  var baseUrl = "http://localhost:9000/api/v0.1/";
  var requestConfig = {
    "headers": {"Content-Type": "application/json"}
  };

  function formatDate(date) {
    var d = new Date(date),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2) month = '0' + month;
    if (day.length < 2) day = '0' + day;

    return [year, month, day].join('-');
  }

  $scope.range = "yyyy-mm";
  $scope.startDate = new Date("2014-01-01");
  $scope.endDate   = new Date();
  $scope.accounts = [];
  $scope.importAccount = "";
  $scope.categories  = [];
  $scope.subCategories  = [];
  $scope.selectedSubCategories  = [];
  $scope.categoryColors =    {"total": "#2979FF"};
  $scope.subCategoryColors = {"total": "#2979FF"};

  var params = {
    "sumRange": $scope.range,
    "startDate": formatDate($scope.startDate),
    "endDate": formatDate($scope.endDate),
    "categories": $scope.selectedCategories,
    "subCategories": $scope.selectedSubCategories
  };

  function initCategories() {
    $http.get(baseUrl + "categories").
    success(function(data, status, headers, config) {
      $scope.categoryColors = JSON.parse(JSON.stringify(data.categories));
      $scope.categoryColors["total"] = "#2979FF";
      $scope.categories = [];
      var tmp = {};
      for (var c in data.categories) {
        $scope.categories.push({name: c, color: data.categories[c], selected: true});
      }
      updateCharts(params);
    }).
    error(function(data, status, headers, config) { });
  };

  $scope.selectNoneCategory = function selectNoneCategory(c) {
    for (var i = 0; i < $scope.categories.length; ++i) {
      $scope.categories[i].selected = false;
    }
    $scope.subCategories = [];
    updateCharts(params);
  };

  $scope.selectAllCategory = function selectAllCategory(c) {
    for (var i = 0; i < $scope.categories.length; ++i) {
      $scope.categories[i].selected = true;
    }
    $scope.subCategories = [];
    updateCharts(params);
  };

  $scope.clickCategory = function clickCategory() {
    var selectedCats = [];
    for (var i = 0; i < $scope.categories.length; ++i) {
      var c = $scope.categories[i];
      if (c.selected) {
        selectedCats.push(c.name);
      }
    }
    updateCharts(params);
    if (selectedCats.length === 1) {
      initSubCategories();
    }
    else {
      $scope.subCategories = [];
    }
  };

  function initSubCategories() {
    $http.post(baseUrl + "subcategories", params, requestConfig).
    success(function(data, status, headers, config) {
      $scope.subCategoryColors = JSON.parse(JSON.stringify(data.subCategories));
      $scope.subCategoryColors["total"] = "#2979FF";
      $scope.subCategories = [];
      for (var c in data.subCategories) {
        $scope.subCategories.push({name: c, color: data.subCategories[c], selected: true});
      }
      updateCharts(params);
    }).
    error(function(data, status, headers, config) { });
  };

  $scope.selectNoneSubCategory = function selectNoneSubCategory(c) {
    for (var i = 0; i < $scope.subCategories.length; ++i) {
      $scope.subCategories[i].selected = false;
    }
    updateCharts(params);
  };

  $scope.selectAllSubCategory = function selectAllSubCategory(c) {
    for (var i = 0; i < $scope.subCategories.length; ++i) {
      $scope.subCategories[i].selected = true;
    }
    updateCharts(params);
  };

  $scope.clickSubCategory = function clickCategory() {
    var selectedSubCats = [];
    for (var i = 0; i < $scope.subCategories.length; ++i) {
      var c = $scope.subCategories[i];
      if (c.selected) {
        selectedSubCats.push(c.name);
      }
    }
    updateCharts(params);
  };

  function initAccounts() {
    $http.get(baseUrl + "accounts").success(function(data, status, headers, config) {
      var tmp = JSON.parse(JSON.stringify(data.accounts));
      for (var i = 0; i < tmp.length; ++i) {
        var a = tmp[i];
        $scope.accounts.push(a.account);
      }
    }).
    error(function(data, status, headers, config) { });
  };
  // The refresh logic is split also in this method
  function initialize() {
    initAccounts();
    initCategories();
  };
  var init = initialize();

  var approveImport = function(isApproved) {
    var params = {"isApproved": isApproved};
    $http.post(baseUrl + "approve_import", params, requestConfig);
  }

  $scope.importStatus = function(ev, status) {
    var confirm = $mdDialog.confirm()
      .parent(angular.element(document.body))
      .title('Import Status')
      .content(status)
      .ariaLabel('Lucky day')
      .ok('Confirm Import')
      .cancel('Discard Import')
      .targetEvent(ev);
    $mdDialog.show(confirm).then(function(){
      approveImport(true);
      updateCharts();
    }, function(){
      approveImport(false);
    });
  };

  $scope.uploadCSV = function(ev){
    var file = document.getElementById("csv").files[0];
    if(file !== undefined) {
      var fd = new FormData();
      fd.append("csv", file);
      fd.append("importAccount", $scope.importAccount);
      $http.post(baseUrl + "import", fd, {
        withCredentials: true,
        headers: {'Content-Type': undefined },
        transformRequest: angular.identity
      }).
      success(function(data, status, headers, config) {
        var account = data.account.account;
        var balance = data.account.balance;
        var message = "The import for account " + account + " completed successfully. " +
            "The current balance is " + balance;
        $scope.importStatus(ev, message);
      }).
      error(function(data, status, headers, config) {
        var message = "The import was not completed successfully. " +
            "Please check the parameters.";
        $scope.importStatus(ev, message);
      });
    }
  };

  var timeSeriesChart = {};
  timeSeriesChart.type = "LineChart";
  timeSeriesChart.options = {
    chartArea: {'left':60, 'top':20, 'width': '85%', 'height': '80%'},
    'legend': {'position': 'right'}
  };
  timeSeriesChart.formatters = {};

  var categoriesChart = {};
  categoriesChart.type = "ComboChart";
  categoriesChart.options = {
    "isStacked": "true",
    seriesType: "bars",
    series: {0: {type: "line"}},
    chartArea: {'left':50, 'top':20, 'width': '100%', 'height': '80%'},
    'legend': {'position': 'bottom'}
  };
  categoriesChart.formatters = {};

  var subCategoriesChart = {};
  subCategoriesChart.type = "ComboChart";
  subCategoriesChart.options = {
    "isStacked": "true",
    seriesType: "bars",
    series: {0: {type: "line"}},
    chartArea: {'left':50, 'top':20, 'width': '100%', 'height': '80%'},
    'legend': {'position': 'bottom'}
  };
  subCategoriesChart.formatters = {};

  var pieInCatChart = {};
  pieInCatChart.type = "PieChart";
  pieInCatChart.options = {
    chartArea: {'width': '100%', 'height': '100%'},
  };
  pieInCatChart.formatters = {};


  var pieOutCatChart = {};
  pieOutCatChart.type = "PieChart";
  pieOutCatChart.options = {
    chartArea: {'width': '100%', 'height': '100%'},
  };
  pieOutCatChart.formatters = {};

  var pieInSubCatChart = {};
  pieInSubCatChart.type = "PieChart";
  pieInSubCatChart.options = {
    chartArea: {'width': '100%', 'height': '100%'},
  };
  pieInSubCatChart.formatters = {};


  var pieOutSubCatChart = {};
  pieOutSubCatChart.type = "PieChart";
  pieOutSubCatChart.options = {
    chartArea: {'width': '100%', 'height': '100%'},
  };
  pieOutSubCatChart.formatters = {};

  function assignColors(categories, colorTable) {
    var colors = [];
    for (var i = 0; i < categories.length; ++i) {
      if (categories[i] !== "date") {
        colors.push(colorTable[categories[i]]);
      }
    }
    return colors;
  }

  //$scope.updateParams = function updateParams () {
  var updateParams = function() {
    params["startDate"] = formatDate($scope.startDate);
    params["endDate"] =   formatDate($scope.endDate); 
    params["sumRange"] =  $scope.range;                 

    params["categories"] = []; 
    for (var i = 0; i < $scope.categories.length; ++i) {
      var c = $scope.categories[i];
      if (c.selected) {
        params["categories"].push(c.name);
      }
    }

    params["subCategories"] = []; 
    for (var i = 0; i < $scope.subCategories.length; ++i) {
      var c = $scope.subCategories[i];
      if (c.selected) {
        params["subCategories"].push(c.name);
      }
    }
  };

  $scope.update = function update(){
    updateCharts();
  };

  function updateCharts() {
    updateParams();
    $http.post(baseUrl + "categories/aggregate", params, requestConfig).
    success(function(data, status, headers, config) {
      categoriesChart.data = data.data;
      categoriesChart.options.colors = assignColors(data.data[0], $scope.categoryColors);
      $scope.catChart = categoriesChart;
    });

    $http.post(baseUrl + "subcategories/aggregate", params, requestConfig).
    success(function(data, status, headers, config) {
      subCategoriesChart.data = data.data;
      subCategoriesChart.options.colors = assignColors(data.data[0], $scope.subCategoryColors);
      $scope.subCatChart = subCategoriesChart;
    });

    $http.post(baseUrl + "categories/in", params, requestConfig).
    success(function(data, status, headers, config) {
      pieInCatChart.data = data.data;
      // the data have a different format in this type of graph
      var categories = [];
      for (var i = 1; i < data.data.length; ++i) {
        categories.push(data.data[i][0]);
      }
      pieInCatChart.options.colors = assignColors(categories, $scope.categoryColors);
      $scope.inCatChart = pieInCatChart;
    });

    $http.post(baseUrl + "categories/out", params, requestConfig).
    success(function(data, status, headers, config) {
      pieOutCatChart.data = data.data;
      // the data have a different format in this type of graph
      var categories = [];
      for (var i = 1; i < data.data.length; ++i) {
        categories.push(data.data[i][0]);
      }
      pieOutCatChart.options.colors = assignColors(categories, $scope.categoryColors);
      $scope.outCatChart = pieOutCatChart;
    });

    $http.post(baseUrl + "subcategories/in", params, requestConfig).
    success(function(data, status, headers, config) {
      pieInSubCatChart.data = data.data;
      // the data have a different format in this type of graph
      var categories = [];
      for (var i = 1; i < data.data.length; ++i) {
        categories.push(data.data[i][0]);
      }
      pieInSubCatChart.options.colors = assignColors(categories, $scope.subCategoryColors);
      $scope.inSubCatChart = pieInSubCatChart;
    });

    $http.post(baseUrl + "subcategories/out", params, requestConfig).
    success(function(data, status, headers, config) {
      pieOutSubCatChart.data = data.data;
      // the data have a different format in this type of graph
      var categories = [];
      for (var i = 1; i < data.data.length; ++i) {
        categories.push(data.data[i][0]);
      }
      pieOutSubCatChart.options.colors = assignColors(categories, $scope.subCategoryColors);
      $scope.outSubCatChart = pieOutSubCatChart;
    });

    $http.post(baseUrl + "accounts/timeseries", params, requestConfig).
    success(function(data, status, headers, config) {
      timeSeriesChart.data = data.data;
      $scope.seriesChart = timeSeriesChart;
    });
  };
});



