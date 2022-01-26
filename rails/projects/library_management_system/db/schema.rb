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

ActiveRecord::Schema.define(version: 2022_01_26_062338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.integer "isbn"
    t.string "name"
    t.string "author"
    t.float "price"
    t.integer "book_range"
    t.float "fine_per_day"
    t.integer "copies"
    t.index ["isbn"], name: "books_isbn_key", unique: true
  end

  create_table "borrows", force: :cascade do |t|
    t.integer "isbn"
    t.integer "student_id"
    t.datetime "issue_date", precision: 6, null: false
    t.datetime "submission_date", precision: 6, null: false
    t.boolean "accept"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.string "section_id", null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer "student_id"
    t.string "name"
    t.string "city"
    t.string "mobile"
    t.string "section_id"
    t.date "dob"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
