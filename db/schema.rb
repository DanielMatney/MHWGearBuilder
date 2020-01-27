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

ActiveRecord::Schema.define(version: 20200119191520) do

  create_table "gearset_materials", force: :cascade do |t|
    t.string  "name"
    t.integer "gearset_id"
    t.integer "head_id"
    t.integer "chest_id"
    t.integer "arms_id"
    t.integer "waist_id"
    t.integer "legs_id"
  end

  create_table "gearsets", force: :cascade do |t|
    t.string  "name"
    t.string  "image",                default: "https://monsterhunterworld.wiki.fextralife.com/file/Monster-Hunter-World/buff-body-alpha+-set-mhw-wiki-guide2.png"
    t.integer "user_id"
    t.integer "gearset_materials_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string  "name"
    t.string  "slot"
    t.integer "gearset_materials_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
  end

end
