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

ActiveRecord::Schema.define(version: 20190130173704) do

  create_table "bases", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "review_id"
    t.integer "customer_id"
    t.text "text"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_comments_on_customer_id"
    t.index ["review_id"], name: "index_comments_on_review_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "country"
    t.string "city"
    t.string "post_code"
    t.string "street_adress"
    t.string "number_suffix"
    t.string "bank_details"
    t.string "login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hoagies", force: :cascade do |t|
    t.integer "base_id"
    t.integer "order_id"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["base_id"], name: "index_hoagies_on_base_id"
    t.index ["order_id"], name: "index_hoagies_on_order_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "count"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ordered_additionallies", force: :cascade do |t|
    t.integer "hoagie_id"
    t.integer "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hoagie_id"], name: "index_ordered_additionallies_on_hoagie_id"
    t.index ["ingredient_id"], name: "index_ordered_additionallies_on_ingredient_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id"
    t.string "status"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "customer_id"
    t.string "selfie"
    t.integer "grade"
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_reviews_on_customer_id"
  end

end
