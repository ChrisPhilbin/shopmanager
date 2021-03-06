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

ActiveRecord::Schema.define(version: 2019_06_10_224834) do

  create_table "cars", force: :cascade do |t|
    t.integer "year"
    t.string "make"
    t.string "model"
    t.integer "mileage"
    t.string "engine"
    t.string "vin"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
    t.string "bodystyle"
    t.integer "mileagein"
    t.integer "mileageout"
  end

  create_table "customers", force: :cascade do |t|
    t.string "firstname"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "lastname"
    t.string "phone"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "provider"
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "repairs", force: :cascade do |t|
    t.string "advisornotes"
    t.integer "totalestimate"
    t.integer "actualtotal"
    t.integer "tech_id"
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "technotes"
    t.integer "customer_id"
    t.integer "estimatelabor"
    t.integer "estimateparts"
    t.integer "actuallabor"
    t.integer "actualparts"
    t.boolean "open", default: true
    t.string "requestedservices"
    t.text "customercomments"
  end

  create_table "teches", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_teches_on_email", unique: true
    t.index ["reset_password_token"], name: "index_teches_on_reset_password_token", unique: true
  end

  create_table "techs", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
