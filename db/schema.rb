# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_27_170555) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "elements", force: :cascade do |t|
    t.string "symbol", null: false
    t.string "name", null: false
    t.integer "atomic_number", null: false
    t.float "atomic_weight", null: false
    t.integer "series", null: false
    t.string "series_color", null: false
    t.text "description", null: false
    t.integer "state", null: false
    t.integer "group", null: false
    t.integer "period", null: false
    t.text "info_url", null: false
    t.float "density"
    t.float "melting_point"
    t.float "boiling_point"
    t.integer "year_discovered"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["atomic_number"], name: "index_elements_on_atomic_number", unique: true
    t.index ["name"], name: "index_elements_on_name", unique: true
    t.index ["symbol"], name: "index_elements_on_symbol", unique: true
  end

end
