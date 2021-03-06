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

ActiveRecord::Schema.define(version: 20180621091645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_publishers", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors_books", force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "book_id",   null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "title",             limit: 255, null: false
    t.integer  "publisher_id",                  null: false
    t.datetime "published_at"
    t.string   "isbn",              limit: 13
    t.text     "blurb"
    t.integer  "page_count"
    t.float    "price"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "image"
    t.text     "converted_to_html"
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "cart_id"
    t.float    "price"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forum_posts", force: :cascade do |t|
    t.string   "name",       limit: 50,              null: false
    t.string   "subject",    limit: 255,             null: false
    t.text     "body"
    t.integer  "root_id",                default: 0, null: false
    t.integer  "parent_id",              default: 0, null: false
    t.integer  "lft",                    default: 0, null: false
    t.integer  "rgt",                    default: 0, null: false
    t.integer  "depth",                  default: 0, null: false
    t.integer  "book_id",                default: 0, null: false
    t.integer  "book_vote"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_foreign_key "books", "admin_publishers", column: "publisher_id", name: "fk_books_admin_publishers", on_delete: :cascade
end
