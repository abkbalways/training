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

ActiveRecord::Schema.define(version: 2022_01_28_102112) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.integer "no_of_published_books"
  end

  create_table "books", force: :cascade do |t|
    t.integer "isbn"
    t.string "name"
    t.bigint "author_id", null: false
    t.integer "price"
    t.integer "copies"
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "books_students", id: false, force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "student_id", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "feedbackable_type"
    t.integer "stars"
    t.string "feedbackable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "student_id"
    t.index ["student_id"], name: "index_feedbacks_on_student_id"
  end

  create_table "head_of_sections", force: :cascade do |t|
    t.string "name"
  end

  create_table "issues", force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "student_id", null: false
    t.datetime "issue_date", default: -> { "now()" }, null: false
    t.datetime "return_date", precision: 6
    t.index ["book_id"], name: "index_issues_on_book_id"
    t.index ["student_id"], name: "index_issues_on_student_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.bigint "head_of_section_id", null: false
    t.index ["head_of_section_id"], name: "index_sections_on_head_of_section_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.bigint "mobile"
    t.bigint "section_id", null: false
    t.datetime "dob", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["section_id"], name: "index_students_on_section_id"
  end

  add_foreign_key "books", "authors"
  add_foreign_key "issues", "books"
  add_foreign_key "issues", "students"
  add_foreign_key "sections", "head_of_sections"
  add_foreign_key "students", "sections"
end
