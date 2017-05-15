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

ActiveRecord::Schema.define(version: 20170512125631) do

  create_table "portfolio_technologies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "portfolio_id"
    t.integer  "technology_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["portfolio_id"], name: "index_portfolio_technologies_on_portfolio_id", using: :btree
    t.index ["technology_id"], name: "index_portfolio_technologies_on_technology_id", using: :btree
  end

  create_table "portfolios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "client",              limit: 65535
    t.text     "scope",               limit: 65535
    t.string   "url"
    t.string   "image"
    t.string   "thumb"
    t.string   "screen1"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "wordpress_post_id"
    t.string   "wordpress_post_name"
    t.string   "logo"
    t.string   "screen2"
    t.string   "screen3"
    t.string   "screen4"
    t.string   "screen5"
  end

  create_table "technologies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "thumb"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
