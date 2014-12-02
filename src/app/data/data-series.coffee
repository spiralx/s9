

DataSeries = ->
  restrict: 'AE'
  replace: true
  # template: '<p>Y HELO THAR!</p>'
  # template: '<table class="table data-series"><caption>Test</caption></table>'
  templateUrl: '/a/data/data-series.html'
  scope:
    config: '=?'
    data: '=?'

Foo = ->
  restrict: 'AE'
  replace: false
  template: '<p>Y HELO THAR!</p>'


angular
  .module 'a.data'
  .directive 'dataseries', DataSeries
  .directive 'foo', Foo

