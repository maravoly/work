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

ActiveRecord::Schema.define(version: 2022_06_07_215041) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chapters", force: :cascade do |t|
    t.integer "chapter_number"
    t.string "title"
    t.text "summary"
    t.bigint "work_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["work_id"], name: "index_chapters_on_work_id"
  end

  create_table "readers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "works", force: :cascade do |t|
    t.string "cargo"
    t.string "cantidad_vacantes"
    t.text "description"
    t.string "modalidad"
    t.date "release_date"
    t.string "rango_salarial"
    t.string "region"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_works_on_user_id"
  end

  create_table "works_readers", id: false, force: :cascade do |t|
    t.bigint "reader_id"
    t.bigint "work_id"
    t.index ["reader_id"], name: "index_works_readers_on_reader_id"
    t.index ["work_id"], name: "index_works_readers_on_work_id"
  end

  add_foreign_key "chapters", "works"
  add_foreign_key "works", "users"
end
