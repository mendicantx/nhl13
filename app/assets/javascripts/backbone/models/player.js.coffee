class Nhl13.Models.Player extends Backbone.Model
  paramRoot: 'player'

  defaults:
    team: null
    name: null
    sotw: null
    ps3_bin: null
    ps3_auction: null
    xbox_bin: null
    xbox_auction: null
    skate_high: null
    show_low: null
    hand_quick: null
    check_position: null
    defense_rebound: null
    position: null
    overall: null
    true_overall: null
    player_type: null
    handed: null
    salary: null

class Nhl13.Collections.PlayersCollection extends Backbone.Collection
  model: Nhl13.Models.Player
  url: '/players'
