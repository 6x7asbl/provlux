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

ActiveRecord::Schema.define(version: 20150914135419) do

  create_table "categories", force: :cascade do |t|
    t.string   "label",       limit: 255
    t.integer  "category_id", limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.boolean  "master",                  default: false
  end

  create_table "categories_interests", id: false, force: :cascade do |t|
    t.integer "category_id", limit: 4
    t.integer "interest_id", limit: 4
  end

  add_index "categories_interests", ["interest_id"], name: "index_categories_interests_on_interest_id", using: :btree

  create_table "cities", force: :cascade do |t|
    t.integer  "zip",        limit: 4
    t.string   "name",       limit: 255
    t.float    "latitude",   limit: 24
    t.float    "longitude",  limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "criteria", force: :cascade do |t|
    t.string   "type_of",     limit: 255
    t.string   "label",       limit: 255
    t.integer  "interest_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "interest_urls", force: :cascade do |t|
    t.integer  "interest_id", limit: 4
    t.string   "url",         limit: 255
    t.string   "provider",    limit: 255
    t.boolean  "active",                  default: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "interest_urls", ["active", "interest_id"], name: "index_interest_urls_on_active_and_interest_id", using: :btree
  add_index "interest_urls", ["active", "provider"], name: "index_interest_urls_on_active_and_provider", using: :btree
  add_index "interest_urls", ["active"], name: "index_interest_urls_on_active", using: :btree
  add_index "interest_urls", ["interest_id", "url", "provider"], name: "index_interest_urls_on_interest_id_and_url_and_provider", unique: true, using: :btree
  add_index "interest_urls", ["interest_id"], name: "index_interest_urls_on_interest_id", using: :btree
  add_index "interest_urls", ["provider"], name: "index_interest_urls_on_provider", using: :btree

  create_table "interests", id: false, force: :cascade do |t|
    t.integer  "id",           limit: 4,     default: 0, null: false
    t.string   "cgt_code",     limit: 255
    t.string   "name",         limit: 255
    t.text     "description",  limit: 65535
    t.string   "address",      limit: 255
    t.integer  "zip",          limit: 4
    t.string   "mobile",       limit: 255
    t.string   "phone",        limit: 255
    t.string   "email",        limit: 255
    t.string   "website",      limit: 255
    t.float    "latitude",     limit: 24
    t.float    "longitude",    limit: 24
    t.string   "source",       limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "source_id",    limit: 255
    t.integer  "city_id",      limit: 4
    t.string   "country_code", limit: 2
    t.string   "city",         limit: 255
  end

  create_table "media", force: :cascade do |t|
    t.integer  "interest_id", limit: 4
    t.string   "type",        limit: 255
    t.string   "url",         limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "opening_hours", force: :cascade do |t|
    t.integer  "interest_id", limit: 4, null: false
    t.integer  "day_of_week", limit: 1, null: false
    t.time     "open_time",             null: false
    t.time     "close_time",            null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "opening_hours", ["interest_id", "day_of_week", "open_time", "close_time"], name: "index_opening_hours_unique", unique: true, using: :btree
  add_index "opening_hours", ["interest_id"], name: "index_opening_hours_on_interest_id", using: :btree

  create_table "pictures", force: :cascade do |t|
    t.string   "image_uid",   limit: 255
    t.string   "image_name",  limit: 255
    t.integer  "interest_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "pictures", ["interest_id"], name: "index_pictures_on_interest_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
    t.integer  "role",                   limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
