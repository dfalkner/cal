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

ActiveRecord::Schema.define(version: 20130402211027) do

  create_table "calendars", force: true do |t|
    t.date     "date"
    t.integer  "ordo_id"
    t.integer  "celebration_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "calendars", ["celebration_id"], name: "index_calendars_on_celebration_id"
  add_index "calendars", ["ordo_id"], name: "index_calendars_on_ordo_id"

  create_table "celebrations", force: true do |t|
    t.string   "label"
    t.text     "description"
    t.integer  "rank_id"
    t.integer  "color_id"
    t.integer  "season_id"
    t.integer  "ordo_id"
    t.string   "kind"
    t.string   "rule"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "celebrations", ["color_id"], name: "index_celebrations_on_color_id"
  add_index "celebrations", ["ordo_id", "label"], name: "index_celebrations_on_ordo_id_and_label", unique: true
  add_index "celebrations", ["ordo_id"], name: "index_celebrations_on_ordo_id"
  add_index "celebrations", ["rank_id"], name: "index_celebrations_on_rank_id"
  add_index "celebrations", ["season_id"], name: "index_celebrations_on_season_id"

  create_table "colors", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "commons", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ordos", force: true do |t|
    t.string   "label"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ranks", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  create_table "seasons", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
