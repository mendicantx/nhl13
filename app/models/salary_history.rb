class SalaryHistory < ActiveRecord::Base
  belongs_to :player
  attr_accessible :ip_address, :ps3_auction, :ps3_bin, :xbox_auction, :xbox_bin, :player_id
end
