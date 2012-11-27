class Player < ActiveRecord::Base
  belongs_to :team
  attr_accessible :check_position, :defense_rebound, :hand_quick, :handed, :name, :overall, :player_type, :position, :ps3_auction, :ps3_bin, :salary, :shot_low, :skate_high, :sotw, :true_overall, :xbox_auction, :xbox_bin, :team, :team_id
end
