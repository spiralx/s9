angular.module('a', [
  'ngRoute'
  'a.data'
])
.config ($routeProvider) ->
  'use strict'
  $routeProvider
    .when '/data',
      controller: 'DataCtrl'
      templateUrl: '/a/data/data.html'
    .otherwise
      redirectTo: '/data'

