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

ActiveRecord::Schema[7.1].define(version: 2024_02_25_123007) do
  create_table "addresses", force: :cascade do |t|
    t.string "country", null: false
    t.string "address", null: false
    t.integer "zip_code", null: false
    t.string "city", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructor_infos", force: :cascade do |t|
    t.integer "users_id"
    t.string "short_description", null: false
    t.text "long_description", null: false
    t.string "profile_img_path", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_instructor_infos_on_users_id"
  end

  create_table "lesson_time_locations", force: :cascade do |t|
    t.integer "lessons_id", null: false
    t.integer "locations_id", null: false
    t.string "week_day", null: false
    t.time "start_time", null: false
    t.time "end_time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lessons_id"], name: "index_lesson_time_locations_on_lessons_id"
    t.index ["locations_id"], name: "index_lesson_time_locations_on_locations_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "name", null: false
    t.string "short_description", null: false
    t.text "long_description", null: false
    t.date "season_start", null: false
    t.date "season_end", null: false
    t.integer "min_age"
    t.integer "max_age"
    t.decimal "price", null: false
    t.string "cover_img_path", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name", null: false
    t.string "short_description", null: false
    t.text "long_description", null: false
    t.integer "address_id"
    t.string "cover_img_path", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_locations_on_address_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "alias", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "role_permissions", force: :cascade do |t|
    t.integer "role_id", null: false
    t.integer "permission_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_role_permissions_on_permission_id"
    t.index ["role_id"], name: "index_role_permissions_on_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_roles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.date "birthday", null: false
    t.integer "addresses_id"
    t.string "password", null: false
    t.string "email", null: false
    t.string "phone", null: false
    t.string "gender", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addresses_id"], name: "index_users_on_addresses_id"
  end

  add_foreign_key "instructor_infos", "users", column: "users_id"
  add_foreign_key "lesson_time_locations", "lessons", column: "lessons_id"
  add_foreign_key "lesson_time_locations", "locations", column: "locations_id"
  add_foreign_key "locations", "addresses"
  add_foreign_key "role_permissions", "permissions"
  add_foreign_key "role_permissions", "roles"
  add_foreign_key "user_roles", "roles"
  add_foreign_key "user_roles", "users"
  add_foreign_key "users", "addresses", column: "addresses_id"
end
