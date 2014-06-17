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

ActiveRecord::Schema.define(version: 20140617181424) do

  create_table "locations", force: true do |t|
    t.string   "room"
    t.integer  "capacity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.integer  "user_id"
    t.string   "accounttype"
    t.string   "accountnum"
    t.date     "paymentdate"
    t.integer  "amount"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rack_spaces", force: true do |t|
    t.integer  "size"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servers", force: true do |t|
    t.string   "name"
    t.string   "model"
    t.integer  "hd"
    t.integer  "mem"
    t.integer  "cpu"
    t.string   "os"
    t.integer  "size"
    t.integer  "location_id"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "type"
    t.string   "user_id"
    t.string   "servicetype_id"
    t.date     "startdate"
    t.date     "enddate"
    t.decimal  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "storage_spaces", force: true do |t|
    t.integer  "amount"
    t.text     "comments"
    t.integer  "server_id"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.boolean  "admin"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "virtual_machines", force: true do |t|
    t.string   "hostname"
    t.string   "os"
    t.integer  "hd"
    t.integer  "mem"
    t.integer  "cpu"
    t.text     "comments"
    t.integer  "server_id"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
