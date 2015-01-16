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

ActiveRecord::Schema.define(version: 20150116182406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assignments", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.date     "date_created"
    t.date     "date_due"
    t.string   "category"
    t.decimal  "points_earned"
    t.decimal  "total_points"
    t.integer  "course_id"
    t.integer  "user_id"
  end

  add_index "assignments", ["category"], name: "index_assignments_on_category", using: :btree
  add_index "assignments", ["course_id"], name: "index_assignments_on_course_id", using: :btree
  add_index "assignments", ["date_created"], name: "index_assignments_on_date_created", using: :btree
  add_index "assignments", ["date_due"], name: "index_assignments_on_date_due", using: :btree
  add_index "assignments", ["points_earned"], name: "index_assignments_on_points_earned", using: :btree
  add_index "assignments", ["title"], name: "index_assignments_on_title", using: :btree
  add_index "assignments", ["total_points"], name: "index_assignments_on_total_points", using: :btree
  add_index "assignments", ["user_id"], name: "index_assignments_on_user_id", using: :btree

  create_table "course_assignments", force: true do |t|
    t.integer "course_id"
    t.integer "assignment_id"
    t.integer "user_id"
  end

  add_index "course_assignments", ["assignment_id"], name: "index_course_assignments_on_assignment_id", using: :btree
  add_index "course_assignments", ["course_id"], name: "index_course_assignments_on_course_id", using: :btree
  add_index "course_assignments", ["user_id"], name: "index_course_assignments_on_user_id", using: :btree

  create_table "course_enrollments", force: true do |t|
    t.integer  "course_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "course_enrollments", ["course_id"], name: "index_course_enrollments_on_course_id", using: :btree
  add_index "course_enrollments", ["student_id"], name: "index_course_enrollments_on_student_id", using: :btree
  add_index "course_enrollments", ["user_id"], name: "index_course_enrollments_on_user_id", using: :btree

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "time"
    t.string   "period"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "section"
  end

  add_index "courses", ["user_id"], name: "index_courses_on_user_id", using: :btree

  create_table "students", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "grade_level"
    t.integer  "birth_month"
    t.integer  "birth_day"
    t.integer  "birth_year"
    t.integer  "user_id"
  end

  add_index "students", ["birth_day"], name: "index_students_on_birth_day", using: :btree
  add_index "students", ["birth_month"], name: "index_students_on_birth_month", using: :btree
  add_index "students", ["birth_year"], name: "index_students_on_birth_year", using: :btree
  add_index "students", ["first_name"], name: "index_students_on_first_name", using: :btree
  add_index "students", ["grade_level"], name: "index_students_on_grade_level", using: :btree
  add_index "students", ["last_name"], name: "index_students_on_last_name", using: :btree
  add_index "students", ["user_id"], name: "index_students_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
