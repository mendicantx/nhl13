Nhl13.Views.Players ||= {}

class Nhl13.Views.Players.ShowView extends Backbone.View
  template: JST["backbone/templates/players/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
