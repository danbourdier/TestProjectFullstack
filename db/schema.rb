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

ActiveRecord::Schema.define(version: 2020_08_23_003611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "author_email", null: false
    t.string "body", null: false
    t.integer "author_id", null: false
    t.integer "parent_comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_email"], name: "index_comments_on_author_email"
    t.index ["author_id"], name: "index_comments_on_author_id"
  end

  create_table "connection_requests", force: :cascade do |t|
    t.boolean "pending", null: false
    t.integer "requester_id", null: false
    t.integer "requestee_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["requester_id", "requestee_id"], name: "index_connection_requests_on_requester_id_and_requestee_id", unique: true
  end

  create_table "connections", force: :cascade do |t|
    t.integer "requester", null: false
    t.integer "requestee", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["requestee", "requester"], name: "index_connections_on_requestee_and_requester", unique: true
    t.index ["requester", "requestee"], name: "index_connections_on_requester_and_requestee", unique: true
  end

  create_table "routes", force: :cascade do |t|
    t.string "title", null: false
    t.float "total_time", null: false
    t.string "activity", null: false
    t.float "distance", null: false
    t.text "description", null: false
    t.string "start_point", null: false
    t.string "end_point", null: false
    t.integer "user_id", null: false
    t.string "route_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_routes_on_title", unique: true
    t.index ["user_id"], name: "index_routes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "gender"
    t.string "birth_date", null: false
    t.string "email", null: false
    t.string "location", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
  end

end
