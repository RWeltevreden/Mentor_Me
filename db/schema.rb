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

ActiveRecord::Schema[7.1].define(version: 2024_03_12_151429) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chatrooms", force: :cascade do |t|
    t.bigint "connection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["connection_id"], name: "index_chatrooms_on_connection_id"
  end

  create_table "connections", force: :cascade do |t|
    t.boolean "status"
    t.bigint "mentee_id"
    t.bigint "mentor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mentee_id"], name: "index_connections_on_mentee_id"
    t.index ["mentor_id"], name: "index_connections_on_mentor_id"
  end

  create_table "mentees", force: :cascade do |t|
    t.string "goal"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mentees_on_user_id"
  end

  create_table "mentors", force: :cascade do |t|
    t.integer "rating"
    t.string "job_title"
    t.string "company"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "reviews"
    t.index ["user_id"], name: "index_mentors_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "chatroom_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "rejecteds", force: :cascade do |t|
    t.bigint "mentee_id"
    t.bigint "mentor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mentee_id"], name: "index_rejecteds_on_mentee_id"
    t.index ["mentor_id"], name: "index_rejecteds_on_mentor_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mentor_id"
    t.text "content"
    t.integer "rating"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.boolean "completed"
    t.date "end_date"
    t.bigint "connection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["connection_id"], name: "index_tasks_on_connection_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "location", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "bio"
    t.string "avatar_url"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "chatrooms", "connections"
  add_foreign_key "connections", "mentees"
  add_foreign_key "connections", "mentors"
  add_foreign_key "mentees", "users"
  add_foreign_key "mentors", "users"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "users"
  add_foreign_key "rejecteds", "mentees"
  add_foreign_key "rejecteds", "mentors"
  add_foreign_key "reviews", "mentors"
  add_foreign_key "tasks", "connections"
end
