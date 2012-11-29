Nhl13.Views.Players ||= {}

class Nhl13.Views.Players.EditView extends Backbone.View
  template : JST["backbone/templates/players/edit"]

  events :
    "submit #edit-player" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (player) =>
        @model = player
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
