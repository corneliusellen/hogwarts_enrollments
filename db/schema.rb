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

ActiveRecord::Schema.define(version: 20180307024720) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "enrollments", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "subject_id"
    t.decimal "grade"
    t.index ["student_id"], name: "index_enrollments_on_student_id"
    t.index ["subject_id"], name: "index_enrollments_on_subject_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "house"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.integer "room_number"
    t.bigint "teacher_id"
    t.index ["teacher_id"], name: "index_subjects_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "enrollments", "students"
  add_foreign_key "enrollments", "subjects"
  add_foreign_key "subjects", "teachers"
end
