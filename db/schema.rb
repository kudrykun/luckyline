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

ActiveRecord::Schema.define(version: 20170213091112) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.integer  "parent_id"
    t.string   "title"
    t.string   "slug"
    t.string   "meta_title"
    t.string   "meta_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.integer  "preview_id"
    t.string   "header"
    t.index ["parent_id"], name: "index_categories_on_parent_id", using: :btree
    t.index ["preview_id"], name: "index_categories_on_preview_id", using: :btree
    t.index ["slug"], name: "index_categories_on_slug", unique: true, using: :btree
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "title"
    t.integer  "category_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "slug"
    t.text     "description"
    t.string   "meta_title"
    t.string   "meta_description"
    t.integer  "preview_id"
    t.string   "header"
    t.index ["category_id"], name: "index_galleries_on_category_id", using: :btree
    t.index ["preview_id"], name: "index_galleries_on_preview_id", using: :btree
    t.index ["slug"], name: "index_galleries_on_slug", unique: true, using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "slug"
    t.integer  "category_id"
    t.text     "price"
    t.string   "meta_title"
    t.string   "meta_description"
    t.integer  "preview_id"
    t.string   "header"
    t.index ["category_id"], name: "index_items_on_category_id", using: :btree
    t.index ["preview_id"], name: "index_items_on_preview_id", using: :btree
    t.index ["slug"], name: "index_items_on_slug", unique: true, using: :btree
  end

  create_table "news_items", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "meta_title"
    t.string   "meta_description"
  end

  create_table "opinions", force: :cascade do |t|
    t.string   "name"
    t.text     "text"
    t.text     "info"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "vk"
    t.string   "ok"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "alt"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "email"
    t.integer  "item_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "order_text"
    t.string   "city"
    t.index ["item_id"], name: "index_orders_on_item_id", using: :btree
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "imageable_type"
    t.integer  "imageable_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "alt"
    t.index ["imageable_type", "imageable_id"], name: "index_pictures_on_imageable_type_and_imageable_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "galleries", "categories"
  add_foreign_key "items", "categories"
  add_foreign_key "orders", "items"
end
