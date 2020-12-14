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

ActiveRecord::Schema.define(version: 2020_09_12_210831) do

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index "\"cart_id\"", name: "index_carts_on_cart_id", unique: true
  end

  create_table "courses", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.string "discipline"
    t.string "area"
    t.float "price"
    t.text "teachers"
    t.text "students"
    t.text "ts_hash"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index "\"course_id\"", name: "index_courses_on_course_id"
  end

  create_table "courses_in_carts", force: :cascade do |t|
    t.integer "course_id"
    t.integer "cart_id"
    t.integer "teacher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cart_id"], name: "index_courses_in_carts_on_cart_id"
    t.index ["course_id"], name: "index_courses_in_carts_on_course_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "teacher_id"
    t.text "review"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_num"
    t.string "addr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "discipline"
    t.string "major"
    t.string "credit_card_name"
    t.string "credit_card_number"
    t.string "credit_card_expiration_date"
    t.string "credit_card_3_digit_cvv"
    t.string "password"
    t.string "type"
    t.string "password_digest"
    t.integer "cart_id"
    t.index ["type", "id"], name: "index_users_on_type_and_id"
  end

  add_foreign_key "courses_in_carts", "carts"
  add_foreign_key "courses_in_carts", "courses"
end
