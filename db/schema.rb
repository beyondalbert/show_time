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

ActiveRecord::Schema.define(version: 20170218114407) do

  create_table "activities", force: :cascade do |t|
    t.string   "title",                limit: 255
    t.text     "description",          limit: 65535
    t.integer  "activity_type",        limit: 4
    t.datetime "happen_time"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "picture_file_name",    limit: 255
    t.string   "picture_content_type", limit: 255
    t.integer  "picture_file_size",    limit: 4
    t.datetime "picture_updated_at"
  end

  create_table "basic_infos", force: :cascade do |t|
    t.string   "name",                        limit: 255
    t.string   "icp",                         limit: 255
    t.string   "logo_square_file_name",       limit: 255
    t.string   "logo_square_content_type",    limit: 255
    t.integer  "logo_square_file_size",       limit: 4
    t.datetime "logo_square_updated_at"
    t.string   "logo_rectangle_file_name",    limit: 255
    t.string   "logo_rectangle_content_type", limit: 255
    t.integer  "logo_rectangle_file_size",    limit: 4
    t.datetime "logo_rectangle_updated_at"
    t.string   "wx_qr_code_file_name",        limit: 255
    t.string   "wx_qr_code_content_type",     limit: 255
    t.integer  "wx_qr_code_file_size",        limit: 4
    t.datetime "wx_qr_code_updated_at"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.string   "data_fingerprint",  limit: 255
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "feedbacks", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.string   "phone",      limit: 255
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "function_modules", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "is_display"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "desc",       limit: 65535
    t.integer  "status",     limit: 4,     default: 1
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "news", force: :cascade do |t|
    t.string   "title",                limit: 255
    t.text     "description",          limit: 65535
    t.integer  "news_type",            limit: 4
    t.datetime "happen_time"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "picture_file_name",    limit: 255
    t.string   "picture_content_type", limit: 255
    t.integer  "picture_file_size",    limit: 4
    t.datetime "picture_updated_at"
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "desc",       limit: 65535
    t.integer  "parent_id",  limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "title",                limit: 255
    t.string   "description",          limit: 255
    t.integer  "pic_type",             limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "content_file_name",    limit: 255
    t.string   "content_content_type", limit: 255
    t.integer  "content_file_size",    limit: 4
    t.datetime "content_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "nickname",      limit: 255
    t.string   "phone",         limit: 255
    t.string   "password_hash", limit: 255
    t.string   "password_salt", limit: 255
    t.string   "auth_token",    limit: 255
    t.integer  "status",        limit: 4
    t.integer  "role",          limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "url",                limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "cover_file_name",    limit: 255
    t.string   "cover_content_type", limit: 255
    t.integer  "cover_file_size",    limit: 4
    t.datetime "cover_updated_at"
  end

end
