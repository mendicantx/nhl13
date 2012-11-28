require "slickgrid/table"

class PlayersTable < SlickGrid::Table
  column :name
  column :team, generator: ->(obj) { "#{obj.team.name}" }
  column :name
  column :sotw
  column :ps3_bin
  column :ps3_auction
  column :xbox_bin
  column :xbox_auction
  column :skate_high
  column :shot_low
  column :hand_quick
  column :check_position
  column :defense_rebound
  column :position
  column :overall
  column :true_overall
  column :player_type
  column :handed
  column :salary
  column :path, generator: ->(obj) { player_path(obj) }

end
