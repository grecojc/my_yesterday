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

ActiveRecord::Schema.define(version: 20141206223700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "news_sources", force: true do |t|
    t.string   "screen_name"
    t.string   "name"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "profile_image_url"
  end

  create_table "trends", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trends_tweets", id: false, force: true do |t|
    t.integer "trend_id"
    t.integer "tweet_id"
  end

  add_index "trends_tweets", ["trend_id", "tweet_id"], name: "trends_tweets_index", unique: true, using: :btree

  create_table "tweets", force: true do |t|
    t.string   "text"
    t.string   "screen_name"
    t.string   "timestamp"
    t.string   "source"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
  end

end
