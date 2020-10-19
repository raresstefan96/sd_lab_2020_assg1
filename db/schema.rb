# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_18_143545) do

  create_table "medical_record_items", force: :cascade do |t|
    t.integer "prescription"
    t.integer "medical_record_id"
    t.integer "medicine_id"
    t.index ["medical_record_id"], name: "index_medical_record_items_on_medical_record_id"
    t.index ["medicine_id"], name: "index_medical_record_items_on_medicine_id"
  end

  create_table "medical_records", force: :cascade do |t|
    t.integer "user_id"
    t.date "expiry_date"
    t.index ["user_id"], name: "index_medical_records_on_user_id"
  end

  create_table "medicines", force: :cascade do |t|
    t.string "name"
    t.string "side_effect"
    t.string "unit"
    t.integer "dosage"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.date "birthday"
    t.string "gender"
    t.string "address"
    t.string "role"
    t.integer "caregiver_id"
    t.index ["caregiver_id"], name: "index_users_on_caregiver_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
