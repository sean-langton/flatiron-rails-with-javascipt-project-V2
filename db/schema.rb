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

ActiveRecord::Schema.define(version: 2019_02_26_065100) do

  create_table "fleets", force: :cascade do |t|
    t.string "name"
    t.integer "league_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_fleets_on_league_id"
    t.index ["user_id"], name: "index_fleets_on_user_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.integer "num_of_fleets"
    t.integer "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ships", force: :cascade do |t|
    t.string "name"
    t.string "size"
    t.integer "max_cargo"
    t.integer "max_distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "password_digest"
    t.string "email"
    t.string "image"
    t.string "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voyages", force: :cascade do |t|
    t.string "dep_port"
    t.string "arr_port"
    t.integer "distance"
    t.integer "cargo"
    t.integer "fleet_id"
    t.integer "ship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fleet_id"], name: "index_voyages_on_fleet_id"
    t.index ["ship_id"], name: "index_voyages_on_ship_id"
  end

end
