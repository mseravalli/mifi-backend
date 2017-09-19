'use strict';

angular.module('mifi', ['googlechart', 'ngMaterial', 'md.data.table']).controller("MainCtrl", function ($scope, $http, $mdDialog) {
  // var baseUrl = "http://localhost:9000/api/v0.1/";
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
  $scope.transactions  = [];
  $scope.categories  = [];
  $scope.subCategories  = [];
  $scope.selectedSubCategories  = [];
  $scope.categoryColors =    {"total": "#2979ff", "min": "#ff80ab", "max": "#68efad"};
  $scope.subCategoryColors = {"total": "#2979ff", "min": "#ff80ab", "max": "#68efad"};

  $scope.query = {
    filter: '',
    order: 'accountNumber',
    limit: 10,
    page: 1
  };

  var params = {
    "sumRange": $scope.range,
    "startDate": formatDate($scope.startDate),
    "endDate": formatDate($scope.endDate),
    "categories": $scope.selectedCategories,
    "subCategories": $scope.selectedSubCategories,
    "urlParams": "sumRange=" + $scope.range +
      "&" + "startDate=" + formatDate($scope.startDate) +
      "&" + "endDate=" + formatDate($scope.endDate) +
      "&" + "categories=" + $scope.categories +
      "&" + "subCategories=" + $scope.subCategories
  };

  function initCategories() {
    var success = function(response) {
      $scope.categoryColors["total"] = "#2979FF";
      $scope.categories = JSON.parse(JSON.stringify(response.data.categories));
      var tmp = {};
      for (var i = 0; i < response.data.categories.length; ++i) {
        $scope.categories[i]["selected"] = true;
        $scope.categoryColors[$scope.categories[i].name] = $scope.categories[i].color;
      }
      $scope.update();
    }
    $http.get(baseUrl + "categories")
      .then(success);
  };

  $scope.selectNoneCategory = function selectNoneCategory(c) {
    for (var i = 0; i < $scope.categories.length; ++i) {
      $scope.categories[i].selected = false;
    }
    $scope.subCategories = [];
    $scope.update();
  };

  $scope.selectAllCategory = function selectAllCategory(c) {
    for (var i = 0; i < $scope.categories.length; ++i) {
      $scope.categories[i].selected = true;
    }
    $scope.subCategories = [];
    $scope.update();
  };

  $scope.clickCategory = function clickCategory() {
    var selectedCats = [];
    for (var i = 0; i < $scope.categories.length; ++i) {
      var c = $scope.categories[i];
      if (c.selected) {
        selectedCats.push(c.name);
      }
    }
    $scope.update();
    if (selectedCats.length === 1) {
      initSubCategories();
    }
    else {
      $scope.subCategories = [];
    }
  };

  function initSubCategories() {
    var selectedIdx = -1;
    for (var i = 0; i < $scope.categories.length; ++i) {
      var c = $scope.categories[i];
      if (c.selected) {
        selectedIdx = i;
      }
    }
    $scope.subCategories = JSON.parse(JSON.stringify($scope.categories[selectedIdx].subCategories));
    $scope.subCategoryColors["total"] = "#2979FF";
    for (var i = 0; i < $scope.subCategories.length; ++i) {
      $scope.subCategories[i]["selected"] = true;
      $scope.subCategoryColors[$scope.subCategories[i].name] = $scope.subCategories[i].color;
    }
    $scope.update();
  };

  $scope.selectNoneSubCategory = function selectNoneSubCategory(c) {
    for (var i = 0; i < $scope.subCategories.length; ++i) {
      $scope.subCategories[i].selected = false;
    }
    $scope.update();
  };

  $scope.selectAllSubCategory = function selectAllSubCategory(c) {
    for (var i = 0; i < $scope.subCategories.length; ++i) {
      $scope.subCategories[i].selected = true;
    }
    $scope.update();
  };

  $scope.clickSubCategory = function clickCategory() {
    var selectedSubCats = [];
    for (var i = 0; i < $scope.subCategories.length; ++i) {
      var c = $scope.subCategories[i];
      if (c.selected) {
        selectedSubCats.push(c.name);
      }
    }
    $scope.update();
  };

  function initAccounts() {
    var success = function(response) {
      var tmp = JSON.parse(JSON.stringify(response.data.accounts));
      for (var i = 0; i < tmp.length; ++i) {
        var a = tmp[i];
        $scope.accounts.push(a.account);
      }
    }
    $http.get(baseUrl + "accounts")
      .then(success);
  };
  // The refresh logic is split also in this method
  function initialize() {
    initAccounts();
    initCategories();
  };
  var init = initialize();

  var approveImport = function(isApproved) {
    var params = {"isApproved": isApproved};
    var success = function(response) {};
    var error = function(response) {};
    $http.post(baseUrl + "approve_import", params, requestConfig)
      .then(success, error);
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
      $scope.update();
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
      var success = function(response) {
        var account = response.data.account.account;
        var balance = response.data.account.balance;
        var message = "The import for account " + account + " completed successfully. " +
          "The current balance is " + balance;
        $scope.importStatus(ev, message);
      }
      var error = function(response) {
        var message = "The import was not completed successfully. " +
          "Please check the parameters.";
        $scope.importStatus(ev, message);
      }
      $http.post(baseUrl + "import", fd, {
        withCredentials: true,
        headers: {'Content-Type': undefined },
        transformRequest: angular.identity
      })
        .then(success, error);
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

  var pieAccountChart = {};
  pieAccountChart.type = "PieChart";
  pieAccountChart.options = {
    chartArea: {'width': '100%', 'height': '100%'},
  };
  pieAccountChart.formatters = {};

  function assignColors(categories, colorTable) {
    var colors = [];
    for (var i = 0; i < categories.length; ++i) {
      if (categories[i] !== "date") {
        colors.push(colorTable[categories[i]]);
      }
    }
    return colors;
  }

  $scope.updateTransaction = function(tid, category, subCategory, comment) {
    console.log(tid);
    console.log(category);
    console.log(subCategory);
    console.log(comment);
    comment = comment ? comment : "";
    var success = function(response) {};
    var error = function(response) {};
    var params = {"category": category, "subCategory": subCategory, "comment": comment};
    $http.put(baseUrl + "transaction/" + tid, params, requestConfig)
      .then(success, error);
  };

  $scope.update = function update(){
    updateCharts();
    updateTransactionTable();
  };

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
    params["urlParams"] = "sumRange=" + params.sumRange +
      "&" + "startDate=" + params.startDate +
      "&" + "endDate=" + params.endDate +
      "&" + "categories=" + params.categories +
      "&" + "subCategories=" + params.subCategories
  };

  function updateTransactionTable() {
    updateParams();
    var success = function(response) {
      $scope.transactions = JSON.parse(JSON.stringify(response.data.transactions));
    };
    $http.get(baseUrl + "transactions?" + params.urlParams )
      .then(success);
  };

  function updateCharts() {
    updateParams();
    var success = function(response) {
      categoriesChart.data = response.data.data;
      categoriesChart.options.colors = assignColors(response.data.data[0], $scope.categoryColors);
      $scope.catChart = categoriesChart;
    };
    $http.get(baseUrl + "categories/aggregate?" + params.urlParams)
      .then(success);

    var success = function(response) {
      subCategoriesChart.data = response.data.data;
      subCategoriesChart.options.colors = assignColors(response.data.data[0], $scope.subCategoryColors);
      $scope.subCatChart = subCategoriesChart;
    };
    $http.get(baseUrl + "subcategories/aggregate?" + params.urlParams)
      .then(success);

    var success = function(response) {
      pieInCatChart.data = response.data.data;
      // the data have a different format in this type of graph
      var categories = [];
      for (var i = 1; i < response.data.data.length; ++i) {
        categories.push(response.data.data[i][0]);
      }
      pieInCatChart.options.colors = assignColors(categories, $scope.categoryColors);
      $scope.inCatChart = pieInCatChart;
    };
    $http.get(baseUrl + "categories/in?" + params.urlParams)
      .then(success);

    var success = function(response) {
      pieOutCatChart.data = response.data.data;
      // the data have a different format in this type of graph
      var categories = [];
      for (var i = 1; i < response.data.data.length; ++i) {
        categories.push(response.data.data[i][0]);
      }
      pieOutCatChart.options.colors = assignColors(categories, $scope.categoryColors);
      $scope.outCatChart = pieOutCatChart;
    };
    $http.get(baseUrl + "categories/out?" + params.urlParams)
      .then(success);

    var success = function(response) {
      pieInSubCatChart.data = response.data.data;
      // the data have a different format in this type of graph
      var categories = [];
      for (var i = 1; i < response.data.data.length; ++i) {
        categories.push(response.data.data[i][0]);
      }
      pieInSubCatChart.options.colors = assignColors(categories, $scope.subCategoryColors);
      $scope.inSubCatChart = pieInSubCatChart;
    };
    $http.get(baseUrl + "subcategories/in?" + params.urlParams)
      .then(success);

    var success = function(response) {
      pieOutSubCatChart.data = response.data.data;
      // the data have a different format in this type of graph
      var categories = [];
      for (var i = 1; i < response.data.data.length; ++i) {
        categories.push(response.data.data[i][0]);
      }
      pieOutSubCatChart.options.colors = assignColors(categories, $scope.subCategoryColors);
      $scope.outSubCatChart = pieOutSubCatChart;
    };
    $http.get(baseUrl + "subcategories/out?" + params.urlParams)
      .then(success);

    var success = function(response) {
      var acc = [["account", "balance"]];
      for (var i = 0; i < response.data.accounts.length; ++i){
        acc.push([response.data.accounts[i].account, response.data.accounts[i].balance]);
      }
      pieAccountChart.data = acc;
      $scope.accountChart = pieAccountChart;
    };
    $http.get(baseUrl + "accounts?" + params.urlParams )
      .then(success);

    var success = function(response) {
      timeSeriesChart.data = response.data.data;
      $scope.seriesChart = timeSeriesChart;
    };
    $http.get(baseUrl + "accounts/timeseries?" + params.urlParams)
      .then(success);
  };
});



