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

ActiveRecord::Schema.define(version: 2024_40_00_040311) do

  create_table "choices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "check"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inspects", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.string "car_name"
    t.string "name"
    t.string "process"
    t.string "worker"
    t.string "parts"
    t.string "images"
    t.string "subject"
    t.string "shop_name"
    t.string "man_hours"
    t.string "check"
    t.string "judge1"
    t.string "judge2"
    t.string "judge3"
    t.string "judge4"
    t.string "mold_type"
    t.text "description"
    t.datetime "accrual_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.string "car_name"
    t.string "name"
    t.string "process"
    t.string "worker"
    t.string "parts"
    t.string "images"
    t.string "subject"
    t.string "shop_name"
    t.string "man_hours"
    t.string "check"
    t.text "description"
    t.datetime "accrual_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin", default: false
  end

end
