class Player < ActiveRecord::Base
  belongs_to :team
  attr_accessible :check_position, :defense_rebound, :hand_quick, :handed, :name, :overall, :player_type, :position, :ps3_auction, :ps3_bin, :salary, :shot_low, :skate_high, :sotw, :true_overall, :xbox_auction, :xbox_bin, :team, :team_id
  
  def update_overall
    average = (self.check_position.to_f + self.defense_rebound.to_f + self.hand_quick.to_f + self.shot_low.to_f + self.skate_high.to_f) / 5.0

    self.overall = average.to_i
    self.true_overall = average

  end
end
