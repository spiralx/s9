

describe "Data Series Directive", ->
  element = undefined
  scope = undefined

  beforeEach module 's9'
  beforeEach module 's9.dataseries'

  beforeEach inject ($compile, $rootScope) ->
    scope = $rootScope.$new()
    element = $compile('<dataseries config="config" data="data"></dataseries>')(scope)

  it 'sets the caption', ->
    scope.config =
      caption: "Hello!"
    scope.data = [
      { name: 'One', data: [] }
      { name: 'Two', data: [] }
    ]

    scope.$digest()
    # console.log element.html()
    expect element.children().eq(0).text().trim()
      .to.equal "Hello!"
