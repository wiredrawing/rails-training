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

ActiveRecord::Schema.define(version: 2021_10_07_140657) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: :cascade do |t|
    t.string "board_title", limit: 512
    t.text "board_description"
    t.bigint "written_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "message"
    t.bigint "written_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "board_id"
  end

  create_table "images", force: :cascade do |t|
    t.bigint "user_id"
    t.string "filename"
    t.string "extension"
    t.integer "is_displayed", limit: 2
    t.text "comment"
    t.integer "image_type", limit: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "source_user_id"
    t.bigint "destination_user_id"
    t.string "reason", limit: 256
    t.string "request", limit: 1024
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "given_name"
    t.string "family_name"
    t.string "address"
    t.date "birthday"
    t.text "comment"
    t.string "email"
    t.string "password_digest"
    t.integer "gender", limit: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
