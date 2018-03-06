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

ActiveRecord::Schema.define(version: 20180306165601) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reviews", force: :cascade do |t|
    t.bigint "show_id", null: false
    t.integer "score", null: false
    t.text "body", null: false
    t.index ["show_id"], name: "index_reviews_on_show_id"
  end

  create_table "shows", force: :cascade do |t|
    t.date "show_date", null: false
    t.string "location", null: false
    t.text "setlist"
    t.text "notes"
    t.index ["show_date"], name: "index_shows_on_show_date", unique: true
  end

end
