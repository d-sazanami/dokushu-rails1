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

ActiveRecord::Schema.define(version: 2022_01_15_071402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "prefecture"
    t.string "city"
    t.string "town"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entries", force: :cascade do |t|
    t.string "user_name"
    t.string "user_email"
    t.date "reserved_date"
    t.float "usage_time"
    t.integer "room_id"
    t.integer "people"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_email"], name: "index_entries_on_user_email", unique: true
  end

  create_table "foods", force: :cascade do |t|
    t.string "name", default: "食事の名前"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description", default: "食事の内容を記述"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_members_on_project_id"
  end

  create_table "order_details", force: :cascade do |t|
    t.string "item_name"
    t.integer "count"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_details_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.date "order_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.string "path_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_pictures_on_imageable_type_and_imageable_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_managers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.bigint "project_manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_manager_id"], name: "index_projects_on_project_manager_id"
  end

  create_table "rentals", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "book_id"
    t.date "rental_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_rentals_on_book_id"
    t.index ["user_id"], name: "index_rentals_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.string "place"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "term_of_use"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.date "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "weathers", force: :cascade do |t|
    t.integer "today_temp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "members", "projects"
  add_foreign_key "projects", "project_managers"
  add_foreign_key "rentals", "books"
  add_foreign_key "rentals", "users"
end
