# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20191010201813) do

  create_table "animes", force: :cascade do |t|
    t.string "title"
    t.string "synopsis"
    t.string "day"
    t.string "image_url"
  end

  create_table "calendars", force: :cascade do |t|
    t.string  "anime"
    t.string  "day"
    t.integer "user_id"
  end

  create_table "user_schedules", force: :cascade do |t|
    t.integer "anime_id"
    t.integer "calendar_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

end