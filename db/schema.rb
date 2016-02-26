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

ActiveRecord::Schema.define(version: 20160226021317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "action"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "activities", ["user_id"], name: "index_activities_on_user_id", using: :btree

  create_table "follows", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "follows", ["followed_id"], name: "index_follows_on_followed_id", using: :btree
  add_index "follows", ["follower_id", "followed_id"], name: "index_follows_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "follows", ["follower_id"], name: "index_follows_on_follower_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "tldr"
    t.text     "content"
    t.integer  "user_rating"
    t.float    "flavor_rating"
    t.float    "originality_rating"
    t.float    "aroma_rating"
    t.float    "roast_rating"
    t.integer  "user_id"
    t.integer  "roast_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "posts", ["roast_id"], name: "index_posts_on_roast_id", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "roasts", force: :cascade do |t|
    t.string   "name"
    t.string   "roaster"
    t.string   "brand_icon_img"
    t.string   "content_img"
    t.decimal  "price"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "pref_name"
    t.string   "email"
    t.string   "profile_img"
    t.string   "password_digest"
    t.boolean  "panel"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "activities", "users"
  add_foreign_key "posts", "roasts"
  add_foreign_key "posts", "users"
end
