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

ActiveRecord::Schema[7.0].define(version: 2023_03_21_210942) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "oregistrations", force: :cascade do |t|
    t.string "registration_status"
    t.bigint "users_id", null: false
    t.bigint "outdoorevents_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["outdoorevents_id"], name: "index_oregistrations_on_outdoorevents_id"
    t.index ["users_id"], name: "index_oregistrations_on_users_id"
  end

  create_table "outdoorevents", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "description"
    t.date "start_date"
    t.date "end_date"
    t.string "city"
    t.string "activity_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "oregistrations", "outdoorevents", column: "outdoorevents_id"
  add_foreign_key "oregistrations", "users", column: "users_id"
end
