

DataSeries = ->
  restrict: 'AE'
  replace: true
  templateUrl: '/s9/dataseries/dataseries.html'

  scope:
    config: '='
    data: '='

  link: (scope, element, attrs) ->
    'use strict'

    scope.addRow = ->
      scope.data[0].data.push 0
      scope.data[1].data.push 0


# -------------------------------------------------------------

angular
  .module 's9.dataseries', []
  .directive 'dataseries', DataSeries

