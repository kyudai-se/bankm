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

ActiveRecord::Schema.define(version: 20140821234327) do

  create_table "aream", force: true do |t|
    t.string   "entmcn",  limit: 20,                         default: "", null: false
    t.string   "entclt",  limit: 20,                         default: "", null: false
    t.string   "edtmcn",  limit: 20,                         default: "", null: false
    t.string   "edtclt",  limit: 20,                         default: "", null: false
    t.decimal  "area_cd",            precision: 4, scale: 0, default: 0,  null: false
    t.string   "area_j",  limit: 40,                         default: "", null: false
    t.string   "area_a",  limit: 40,                         default: "", null: false
    t.string   "area_k",  limit: 40,                         default: "", null: false
    t.datetime "entdate"
    t.datetime "edtdate"
  end

  create_table "bankm", force: true do |t|
    t.string   "entmcn",  limit: 20,                         default: "", null: false
    t.string   "entclt",  limit: 20,                         default: "", null: false
    t.string   "edtmcn",  limit: 20,                         default: "", null: false
    t.string   "edtclt",  limit: 20,                         default: "", null: false
    t.datetime "entdate"
    t.datetime "edtdate"
    t.string   "bank_j",  limit: 40,                         default: "", null: false
    t.string   "bank_a",  limit: 40,                         default: "", null: false
    t.string   "bank_k",  limit: 40,                         default: "", null: false
    t.decimal  "bank_cd",            precision: 4, scale: 0, default: 0,  null: false
  end

end
