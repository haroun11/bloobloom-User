# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_04_25_060538) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.bigint "currency_id"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["currency_id"], name: "index_countries_on_currency_id"
  end

  create_table "currencies", force: :cascade do |t|
    t.string "currency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "frame_currencies", force: :cascade do |t|
    t.bigint "currency_id"
    t.bigint "frame_id"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["currency_id"], name: "index_frame_currencies_on_currency_id"
    t.index ["frame_id"], name: "index_frame_currencies_on_frame_id"
  end

  create_table "frames", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "status"
    t.integer "stock"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "glasses", force: :cascade do |t|
    t.bigint "frame_currency_id"
    t.bigint "lense_currency_id"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["frame_currency_id"], name: "index_glasses_on_frame_currency_id"
    t.index ["lense_currency_id"], name: "index_glasses_on_lense_currency_id"
  end

  create_table "lense_currencies", force: :cascade do |t|
    t.bigint "currency_id"
    t.bigint "lense_id"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["currency_id"], name: "index_lense_currencies_on_currency_id"
    t.index ["lense_id"], name: "index_lense_currencies_on_lense_id"
  end

  create_table "lenses", force: :cascade do |t|
    t.string "color"
    t.text "description"
    t.integer "prescription_type"
    t.integer "lens_type"
    t.integer "stock"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "country"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
