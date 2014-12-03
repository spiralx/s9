

config = ($routeProvider) ->
  'use strict'

  $routeProvider.otherwise
    redirectTo: '/data'


# -------------------------------------------------------------

angular
  .module 's9', [
    'ngRoute'
    's9.data'
    's9.dataseries'
  ]
  .config config
