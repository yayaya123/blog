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

ActiveRecord::Schema.define(version: 20141027131956) do

  create_table "articles", force: true do |t|
    t.string   "author"
    t.string   "title"
    t.string   "body"
    t.string   "place"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ranking"
    t.integer  "user_id"
  end

  create_table "articles_categories", id: false, force: true do |t|
    t.integer "article_id"
    t.integer "category_id"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "article_id"
    t.string   "name"
    t.string   "email"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pilotes", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.date     "birthday"
    t.text     "bio"
    t.string   "color"
    t.string   "twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "readers", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "ville"
    t.integer  "Article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "readers", ["Article_id"], name: "index_readers_on_Article_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "hashed_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "voitures", force: true do |t|
    t.string   "marque"
    t.integer  "annee"
    t.integer  "Pilote_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "voitures", ["Pilote_id"], name: "index_voitures_on_Pilote_id"

end
