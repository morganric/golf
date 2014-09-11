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

ActiveRecord::Schema.define(version: 20140911111644) do

  create_table "clubs", force: true do |t|
    t.string   "name"
    t.text     "about"
    t.string   "banner"
    t.string   "logo"
    t.string   "address"
    t.string   "zip_code"
    t.string   "country"
    t.string   "phone_number"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "green_fees"
    t.string   "email"
    t.string   "slug"
    t.text     "membership"
  end

  create_table "coords", force: true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "hole_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.integer  "club_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.text     "description"
  end

  create_table "holes", force: true do |t|
    t.integer  "number"
    t.integer  "course_id"
    t.string   "image"
    t.integer  "stroke_index"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "coords"
    t.string   "slug"
    t.string   "name"
  end

  create_table "tees", force: true do |t|
    t.string   "colour"
    t.integer  "par"
    t.integer  "length"
    t.integer  "hole_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
