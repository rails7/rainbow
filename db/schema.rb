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

ActiveRecord::Schema.define(version: 20140402075940) do

  create_table "amenities", force: true do |t|
    t.string   "amenity_name"
    t.text     "description"
    t.integer  "created_by"
    t.string   "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "books", force: true do |t|
    t.string   "name"
    t.string   "gener"
    t.string   "description"
    t.float    "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "candidates", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cdn_files", force: true do |t|
    t.integer  "uploadable_id"
    t.string   "uploadable_type"
    t.integer  "uploaded_by"
    t.boolean  "is_profile_pic"
    t.string   "file_name"
    t.string   "extension"
    t.integer  "size"
    t.string   "mimetype"
    t.string   "cf_filename"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "cities", force: true do |t|
    t.string   "city_name"
    t.integer  "created_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: true do |t|
    t.string   "country_name"
    t.integer  "created_by"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "departments", force: true do |t|
    t.string   "department_name"
    t.text     "description"
    t.integer  "created_by"
    t.string   "status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "doctor_category_reviews", force: true do |t|
    t.integer  "user_id"
    t.integer  "review_category_id"
    t.integer  "weight"
    t.integer  "given_by"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "facilities", force: true do |t|
    t.string   "facility_name"
    t.text     "description"
    t.integer  "created_by"
    t.string   "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "hospital_amenities", force: true do |t|
    t.integer  "hospital_id"
    t.integer  "amenity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "hospital_category_reviews", force: true do |t|
    t.integer  "hospital_id"
    t.integer  "review_category_id"
    t.integer  "weight"
    t.integer  "given_by"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "hospital_departments", force: true do |t|
    t.integer  "hospital_id"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "hospital_facilities", force: true do |t|
    t.integer  "hospital_id"
    t.integer  "facility_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "hospitals", force: true do |t|
    t.string   "hospital_name"
    t.text     "description"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "address_postcode"
    t.integer  "address_city"
    t.integer  "address_country"
    t.string   "landline_number"
    t.string   "mobile_number"
    t.string   "reception_number"
    t.date     "establishment_date"
    t.string   "website"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "permissions", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "subject_class"
    t.string   "action"
    t.integer  "parent_id"
    t.boolean  "display"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "points", force: true do |t|
    t.float    "score"
    t.integer  "candidate_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", force: true do |t|
    t.integer  "ratable_id"
    t.string   "ratable_type"
    t.integer  "star_ratings"
    t.integer  "given_by"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "review_categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "created_by"
    t.string   "category_for"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reviews", force: true do |t|
    t.integer  "reviewable_id"
    t.string   "reviewable_type"
    t.text     "contents"
    t.integer  "given_by"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "role_permissions", force: true do |t|
    t.integer  "role_id"
    t.integer  "permission_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "songs", force: true do |t|
    t.string   "name"
    t.string   "gener"
    t.string   "description"
    t.float    "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                    default: "", null: false
    t.string   "encrypted_password",       default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",            default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "authentication_token"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "type"
    t.string   "status"
    t.string   "gender"
    t.datetime "dob"
    t.string   "mobile_number"
    t.string   "alternate_contact_number"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "address_postcode"
    t.string   "address_city"
    t.string   "address_country"
    t.integer  "role_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", unique: true, using: :btree
  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
