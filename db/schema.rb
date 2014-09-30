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

ActiveRecord::Schema.define(version: 20140930080829) do

  create_table "brands", force: true do |t|
    t.integer  "Brand_ID"
    t.string   "Brand_name"
    t.string   "Brand_cname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients", force: true do |t|
    t.integer  "product_id"
    t.string   "Ingredient_ID"
    t.string   "Ingredient_name"
    t.string   "Ingredient_cname"
    t.string   "Gov_Number"
    t.string   "CAS_Number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "Product_ID"
    t.string   "Product_name"
    t.string   "Product_cname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "brand_id"
  end

end
