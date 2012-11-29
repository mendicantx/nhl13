Nhl13.Views.Players ||= {}

class Nhl13.Views.Players.IndexView extends Backbone.View
  template: JST["backbone/templates/players/index"]

  initialize: () ->
    @options.players.bind('reset', @addAll)

  addAll: () =>
    @options.players.each(@addOne)

  addOne: (player) =>
    view = new Nhl13.Views.Players.PlayerView({model : player})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(players: @options.players.toJSON() ))
    @addAll()

    return this
