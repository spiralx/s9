

DataCtrl = ($scope) ->
  'use strict'

  $scope.seriesConfig =
    caption: 'Widget Data'

  $scope.seriesData = [
    {
      name: 'Items'
      data: [ 160, 21, 309 ]
      draggableY: true
    }
    {
      name: 'Orders'
      data: [ 13, 40, 106 ]
    }
  ]

  $scope.chartConfig =
    options:
      chart:
        type: 'column'

      plotOptions:
        series:
          cursor: 'ns-resize'
          stickyTracking: false
          dragMinY: 0

          point:
            events:
              drop: (ev) ->
                $scope.seriesData[this.series.index].data[this.index] = Math.round(this.y)
                $scope.$apply()

        column:
          stacking: ''

      tooltip:
        yDecimals: 0

    series: $scope.seriesData

    xAxis:
      currentMin: 0

    title:
      text: $scope.seriesConfig.caption


DataCtrl.$inject = [ '$scope' ]


# -------------------------------------------------------------

angular
  .module 's9.data'
  .controller 'DataCtrl', DataCtrl
