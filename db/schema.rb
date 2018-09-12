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

ActiveRecord::Schema.define(version: 2018_09_11_165838) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_questions", force: :cascade do |t|
    t.integer "game_id"
    t.integer "question_id"
    t.integer "user_answer"
  end

  create_table "games", force: :cascade do |t|
    t.string "username"
    t.integer "score"
    t.integer "user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "category"
    t.float "difficulty_level"
    t.string "content"
    t.string "answer"
    t.string "option1"
    t.string "option2"
    t.string "option3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
