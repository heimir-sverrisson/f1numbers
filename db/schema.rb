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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151028002200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "continents", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name",         null: false
    t.integer  "population"
    t.integer  "continent_id", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "countries", ["continent_id"], name: "index_countries_on_continent_id", using: :btree

  create_table "drivers", force: :cascade do |t|
    t.string   "name",          null: false
    t.string   "nickname"
    t.date     "date_of_birth", null: false
    t.integer  "country_id",    null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "drivers", ["country_id"], name: "index_drivers_on_country_id", using: :btree

  create_table "qualifying_results", force: :cascade do |t|
    t.integer  "position"
    t.integer  "best_time"
    t.integer  "track_id"
    t.integer  "driver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "qualifying_results", ["driver_id"], name: "index_qualifying_results_on_driver_id", using: :btree
  add_index "qualifying_results", ["track_id"], name: "index_qualifying_results_on_track_id", using: :btree

  create_table "race_results", force: :cascade do |t|
    t.integer  "position"
    t.integer  "fastest_lap"
    t.boolean  "dnf"
    t.integer  "dnf_lap"
    t.integer  "points"
    t.integer  "track_id"
    t.integer  "driver_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "race_results", ["driver_id"], name: "index_race_results_on_driver_id", using: :btree
  add_index "race_results", ["track_id"], name: "index_race_results_on_track_id", using: :btree

  create_table "races", force: :cascade do |t|
    t.datetime "qualifying_date"
    t.datetime "race_date"
    t.integer  "laps"
    t.text     "weather"
    t.text     "notes"
    t.integer  "track_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "races", ["track_id"], name: "index_races_on_track_id", using: :btree

  create_table "team_drivers", force: :cascade do |t|
    t.text     "notes"
    t.date     "started"
    t.date     "ended"
    t.integer  "team_id"
    t.integer  "driver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "team_drivers", ["driver_id"], name: "index_team_drivers_on_driver_id", using: :btree
  add_index "team_drivers", ["team_id"], name: "index_team_drivers_on_team_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "principal",       null: false
    t.string   "home_base"
    t.integer  "year_created"
    t.integer  "country_id",      null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "technical_chief"
    t.string   "power_unit",      null: false
  end

  add_index "teams", ["country_id"], name: "index_teams_on_country_id", using: :btree

  create_table "tracks", force: :cascade do |t|
    t.string   "name",         null: false
    t.integer  "year_started", null: false
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "time_zone",    null: false
    t.integer  "country_id",   null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "city",         null: false
    t.integer  "laps",         null: false
    t.decimal  "length",       null: false
    t.decimal  "distance",     null: false
  end

  add_index "tracks", ["country_id"], name: "index_tracks_on_country_id", using: :btree

  add_foreign_key "countries", "continents"
  add_foreign_key "drivers", "countries"
  add_foreign_key "qualifying_results", "drivers"
  add_foreign_key "qualifying_results", "tracks"
  add_foreign_key "race_results", "drivers"
  add_foreign_key "race_results", "tracks"
  add_foreign_key "races", "tracks"
  add_foreign_key "team_drivers", "drivers"
  add_foreign_key "team_drivers", "teams"
  add_foreign_key "teams", "countries"
  add_foreign_key "tracks", "countries"
end
