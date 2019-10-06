# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_05_171124) do
  create_table "request_pendings", force: :cascade do |t|
    t.string "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "reuest_id"
    t.string "status"
    t.string "meetingdate"
    t.string "meetingtime"
  end

  create_table "requests", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "student_id"
    t.integer "teacher_id"
  end

  create_table "senior_request_pendings", force: :cascade do |t|
    t.string "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "senior_request_id"
    t.string "status"
    t.string "meetingdate"
    t.string "meetingtime"
  end

  create_table "senior_requests", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "student_id"
    t.integer "senior_id"
  end

  create_table "seniors", force: :cascade do |t|
    t.integer "student_id"
    t.string "technologies"
    t.string "github_link"
    t.string "projects"
    t.string "name"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "rgno"
    t.string "department"
    t.string "email"
    t.string "password_digest"
    t.integer "year"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "teachid"
    t.string "department"
    t.string "email"
    t.string "degree"
    t.string "ai1"
    t.string "ai2"
    t.string "ai3"
    t.string "password_digest"
  end
end
