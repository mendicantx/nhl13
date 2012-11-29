class Nhl13.Routers.PlayersRouter extends Backbone.Router
  initialize: (options) ->
    @players = new Nhl13.Collections.PlayersCollection()
    _.bindAll @

  routes:
    "new"      : "newPlayer"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newPlayer: ->
    @view = new Nhl13.Views.Players.NewView(collection: @players)
    $("#players").html(@view.render().el)

  index: ->
    $.when(@players.fetch()).then =>
      @view = new Nhl13.Views.Players.IndexView(players: @players)
      el = @view.render().el
      $("#players").html(el)
      $("#players-table").tablesorter
        theme: 'blue'
        widgets: ['filter']
        widgetOptions : 
          filter_columnFilters : true
          filter_cssFilter : 'tablesorter-filter'


  show: (id) ->
    player = @players.get(id)

    @view = new Nhl13.Views.Players.ShowView(model: player)
    $("#players").html(@view.render().el)

  edit: (id) ->
    player = @players.get(id)

    @view = new Nhl13.Views.Players.EditView(model: player)
    $("#players").html(@view.render().el)
