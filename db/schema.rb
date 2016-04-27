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

ActiveRecord::Schema.define(version: 20160427172213) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer  "no"
    t.string   "street"
    t.integer  "person_id"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "addresses", ["city_id"], name: "index_addresses_on_city_id", using: :btree
  add_index "addresses", ["person_id"], name: "index_addresses_on_person_id", using: :btree

  create_table "cities", force: :cascade do |t|
    t.integer  "population"
    t.string   "name"
    t.string   "country"
    t.string   "region"
    t.decimal  "longitude",  precision: 6, scale: 3
    t.decimal  "latitude",   precision: 5, scale: 3
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "surname"
    t.string   "given_name"
    t.string   "gender"
    t.integer  "height"
    t.integer  "weight"
    t.date     "born_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "hair_color"
    t.string   "eye_color"
  end

  create_table "pets", force: :cascade do |t|
    t.date     "born_on"
    t.string   "kind"
    t.string   "name"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pets", ["person_id"], name: "index_pets_on_person_id", using: :btree

  add_foreign_key "addresses", "cities"
  add_foreign_key "addresses", "people"
  add_foreign_key "pets", "people"
end
