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

ActiveRecord::Schema.define(version: 20180525182037) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "color_palettes", force: :cascade do |t|
    t.bigint "color_id"
    t.bigint "palette_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["color_id"], name: "index_color_palettes_on_color_id"
    t.index ["palette_id"], name: "index_color_palettes_on_palette_id"
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade do |t|
    t.string "title_raw"
    t.string "date"
    t.string "description"
    t.integer "decade"
    t.string "medium"
    t.string "dimensions"
    t.string "gallery_text"
    t.string "device_type"
    t.string "designer"
    t.string "tags"
    t.bigint "shape_id"
    t.bigint "palette_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["palette_id"], name: "index_devices_on_palette_id"
    t.index ["shape_id"], name: "index_devices_on_shape_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "url"
    t.bigint "device_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "primary"
    t.index ["device_id"], name: "index_images_on_device_id"
  end

  create_table "palettes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shapes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
