

config = ($routeProvider) ->
  'use strict'

  $routeProvider
    .when '/data',
      controller: 'DataCtrl'
      templateUrl: '/s9/data/data.html'


# -------------------------------------------------------------

angular
  .module 's9.data', [
    'ngRoute'
    'highcharts-ng'
  ]
  .config config

