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

ActiveRecord::Schema.define(version: 20180623152240) do

  create_table "diaries", force: :cascade do |t|
    t.integer "user_id"
    t.string "address", limit: 8
    t.string "cell", limit: 8
    t.string "birthdate", limit: 8
    t.string "zipcode", limit: 8
    t.string "age", limit: 8
    t.string "partner_birthdate", limit: 8
    t.string "work_addr", limit: 8
    t.string "work_num", limit: 8
    t.string "apt_num", limit: 8
    t.string "kids", limit: 8
    t.string "kids_birth", limit: 8
    t.string "lucky_nums", limit: 8
    t.string "license_plate", limit: 8
    t.string "wake_up", limit: 8
    t.string "sensitive", limit: 8
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "four_digit_draws", force: :cascade do |t|
    t.integer "user_id"
    t.string "pick_four"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mega_draws", force: :cascade do |t|
    t.integer "user_id"
    t.string "mega_draw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "three_digit"
    t.string "four_digit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "three_digit_draws", force: :cascade do |t|
    t.integer "user_id"
    t.string "pick_three"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "fname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.integer "state_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
