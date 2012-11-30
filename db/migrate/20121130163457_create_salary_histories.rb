class CreateSalaryHistories < ActiveRecord::Migration
  def change
    create_table :salary_histories do |t|
      t.references :player
      t.integer :ps3_bin
      t.integer :ps3_auction
      t.integer :xbox_bin
      t.integer :xbox_auction
      t.string :ip_address

      t.timestamps
    end
    add_index :salary_histories, :player_id
  end
end
