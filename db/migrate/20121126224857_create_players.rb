class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :team
      t.string :name
      t.boolean :sotw
      t.integer :ps3_bin
      t.integer :ps3_auction
      t.integer :xbox_bin
      t.integer :xbox_auction
      t.integer :skate_high
      t.integer :shot_low
      t.integer :hand_quick
      t.integer :check_position
      t.integer :defense_rebound
      t.string :position
      t.integer :overall
      t.float :true_overall
      t.string :player_type
      t.string :handed
      t.integer :salary

      t.timestamps
    end
    add_index :players, :team_id
  end
end
