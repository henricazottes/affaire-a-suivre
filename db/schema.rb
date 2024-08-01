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

ActiveRecord::Schema[7.1].define(version: 2024_08_01_173742) do
  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.string "x_handle"
    t.string "wikipedia_url"
    t.text "presentation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_people_on_slug", unique: true
  end

  create_table "people_trials", force: :cascade do |t|
    t.string "status"
    t.integer "person_id"
    t.integer "trial_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_people_trials_on_person_id"
    t.index ["trial_id"], name: "index_people_trials_on_trial_id"
  end

  create_table "trials", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_trials_on_slug", unique: true
  end

  create_table "updates", force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.string "link"
    t.text "description"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_updates_on_slug", unique: true
  end

end
