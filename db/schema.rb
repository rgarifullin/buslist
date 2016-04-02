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

ActiveRecord::Schema.define(version: 20160401130554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "number_plates", force: :cascade do |t|
    t.integer  "bus_id"
    t.string   "series"
    t.integer  "number"
    t.integer  "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "number_plates", ["bus_id"], name: "index_number_plates_on_bus_id", unique: true, using: :btree
  add_index "number_plates", ["series", "number", "region"], name: "index_number_plates_on_series_and_number_and_region", unique: true, using: :btree

  create_table "photos", force: :cascade do |t|
    t.integer  "bus_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_licences", force: :cascade do |t|
    t.integer  "bus_id"
    t.integer  "digit_code"
    t.string   "letter_code"
    t.date     "release_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "number"
  end

  add_index "vehicle_licences", ["bus_id"], name: "index_vehicle_licences_on_bus_id", unique: true, using: :btree
  add_index "vehicle_licences", ["digit_code", "letter_code", "number"], name: "index_vehicle_licences_on_digit_code_and_letter_code_and_number", unique: true, using: :btree

end
