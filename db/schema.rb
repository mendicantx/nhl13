# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121126224857) do

  create_table "players", :force => true do |t|
    t.integer  "team_id"
    t.string   "name"
    t.boolean  "sotw"
    t.integer  "ps3_bin"
    t.integer  "ps3_auction"
    t.integer  "xbox_bin"
    t.integer  "xbox_auction"
    t.integer  "skate_high"
    t.integer  "shot_low"
    t.integer  "hand_quick"
    t.integer  "check_position"
    t.integer  "defense_rebound"
    t.string   "position"
    t.integer  "overall"
    t.float    "true_overall"
    t.string   "player_type"
    t.string   "handed"
    t.integer  "salary"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "players", ["team_id"], :name => "index_players_on_team_id"

  create_table "teams", :force => true do |t|
    t.string "name"
  end

end
