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

ActiveRecord::Schema.define(version: 20150705115503) do

  create_table "stories", force: true do |t|
    t.string   "story_id"
    t.text     "story"
    t.integer  "likes_count"
    t.integer  "comments_count"
    t.integer  "shares_count"
    t.datetime "created_at"
    t.string   "story_link"
    t.string   "user_link"
    t.string   "user"
    t.string   "story_type"
    t.string   "source"
    t.datetime "updated_at"
  end

end
