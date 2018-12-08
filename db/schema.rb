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

ActiveRecord::Schema.define(version: 20151022021057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.string   "type",            null: false
    t.string   "name",            null: false
    t.string   "kana"
    t.string   "office"
    t.string   "postal_code"
    t.string   "adress1"
    t.string   "adress2"
    t.string   "tel"
    t.string   "fax"
    t.string   "affiliated_post"
    t.string   "charge_name"
    t.string   "email"
    t.string   "company_number"
    t.integer  "affiliated"
    t.string   "group_number"
    t.integer  "demanded"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  create_table "deliveries", force: true do |t|
    t.date     "cargo_date", null: false
    t.integer  "travel_id",  null: false
    t.integer  "school_id",  null: false
    t.integer  "partner_id", null: false
    t.date     "entry_date", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  create_table "delivery_details", force: true do |t|
    t.integer  "delivery_id"
    t.string   "sheet_type"
    t.string   "partner_staff"
    t.integer  "transport_id"
    t.date     "ship_date"
    t.date     "cargo_date"
    t.integer  "teachers"
    t.integer  "students"
    t.integer  "ship_hotel_id"
    t.integer  "arrival_hotel_id"
    t.date     "arrival_datetime"
    t.time     "arrival_time"
    t.integer  "cargo_hotel_id"
    t.date     "cargo_datetime"
    t.time     "cargo_time_from"
    t.time     "cargo_time_to"
    t.integer  "cardboard_no"
    t.integer  "vinyl_no"
    t.integer  "payment_no"
    t.integer  "cash_on_no"
    t.time     "bringon_time"
    t.integer  "payment_price"
    t.boolean  "payment_price_used", default: false, null: false
    t.integer  "cash_on_price"
    t.boolean  "cash_on_price_used", default: false, null: false
    t.boolean  "all_used",           default: false, null: false
    t.boolean  "track_used",         default: false, null: false
    t.boolean  "fly_used",           default: false, null: false
    t.boolean  "jr_used",            default: false, null: false
    t.boolean  "post_used",          default: false, null: false
    t.boolean  "felly_used",         default: false, null: false
    t.string   "travel_staff"
    t.string   "travel_staff_tel"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  create_table "hotels", force: true do |t|
    t.string   "name",            null: false
    t.string   "kana"
    t.string   "office"
    t.string   "postal_code"
    t.string   "adress1"
    t.string   "adress2"
    t.string   "tel"
    t.string   "fax"
    t.string   "affiliated_post"
    t.string   "charge_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", id: false, force: true do |t|
    t.integer "user_id", null: false
    t.integer "role_id", null: false
  end

  create_table "schools", force: true do |t|
    t.string   "school_type"
    t.string   "name",            null: false
    t.string   "kana"
    t.string   "postal_code"
    t.string   "adress1"
    t.string   "adress2"
    t.string   "tel"
    t.string   "fax"
    t.string   "affiliated_post"
    t.string   "charge_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  create_table "users", force: true do |t|
    t.string   "name",                   default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
