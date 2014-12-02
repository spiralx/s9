
DataCtrl = ($scope) ->
  'use strict'

  $scope.seriesConfig =
    caption: 'Enter data below'
    columns: [
      'Series One'
      'Series Two'
    ]

  $scope.seriesData = [
    [ 1, 2 ]
    [ 3, 4 ]
  ]

DataCtrl.$inject = [ '$scope' ]


angular
  .module 'a.data'
  .controller 'DataCtrl', DataCtrl

    # $scope.todos = JSON.parse($window.localStorage.getItem('todos') or '[]')
    # $scope.$watch('todos', (newTodos, oldTodos) ->
    #   if (newTodos != oldTodos)
    #     $window.localStorage.setItem 'todos', JSON.stringify(angular.copy($scope.todos))
    # , true)

    # $scope.add = ->
    #   todo =
    #     label: $scope.label
    #     isDone: false
    #   $scope.todos.push(todo)
    #   $window.localStorage.setItem 'todos', JSON.stringify(angular.copy($scope.todos))
    #   $scope.label = ''

    # $scope.check = ->
    #   @todo.isDone = not @todo.isDone
