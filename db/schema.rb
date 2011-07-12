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

ActiveRecord::Schema.define(:version => 20110711153609) do

  create_table "dungeons", :force => true do |t|
    t.string   "name",                      :null => false
    t.integer  "levels",     :default => 1, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evil_wizards", :force => true do |t|
    t.string   "name",                               :null => false
    t.string   "magic_type",                         :null => false
    t.integer  "experience_points",   :default => 1, :null => false
    t.integer  "ultra_evil_witch_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ultra_evil_witches", :force => true do |t|
    t.string   "name",                             :null => false
    t.string   "magic_type",                       :null => false
    t.integer  "experience_points", :default => 1, :null => false
    t.integer  "spell_power",       :default => 1, :null => false
    t.integer  "dungeon_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "witch_cats", :force => true do |t|
    t.string   "name",                               :null => false
    t.string   "color",                              :null => false
    t.integer  "power_level",         :default => 1, :null => false
    t.integer  "ultra_evil_witch_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
