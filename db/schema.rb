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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131122064722) do

  create_table "campus_requirements", :force => true do |t|
    t.integer  "course_id"
    t.boolean  "american_cultures", :default => false
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  create_table "colleges", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ls_college_requirements", :force => true do |t|
    t.integer  "course_id"
    t.boolean  "reading_and_composition",        :default => false
    t.boolean  "quantitative_reasoning",         :default => false
    t.boolean  "foreign_language_breadth",       :default => false
    t.boolean  "arts_and_literature",            :default => false
    t.boolean  "biological_science",             :default => false
    t.boolean  "historical_studies",             :default => false
    t.boolean  "international_studies",          :default => false
    t.boolean  "philosophy_and_values",          :default => false
    t.boolean  "physical_science",               :default => false
    t.boolean  "social_and_behavioral_sciences", :default => false
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "majors", :force => true do |t|
    t.string   "name"
    t.integer  "college_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "university_requirements", :force => true do |t|
    t.integer  "course_id"
    t.boolean  "entry_level_writing",               :default => false
    t.boolean  "american_history_and_institutions", :default => false
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                             :default => "",    :null => false
    t.string   "encrypted_password",                :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     :default => 0,     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
    t.string   "username"
    t.boolean  "entry_level_writing",               :default => false
    t.boolean  "american_history_and_institutions", :default => false
    t.boolean  "american_cultures",                 :default => false
    t.boolean  "reading_and_composition",           :default => false
    t.boolean  "quantitative_reasoning",            :default => false
    t.boolean  "foreign_language_breadth",          :default => false
    t.boolean  "arts_and_literature",               :default => false
    t.boolean  "biological_science",                :default => false
    t.boolean  "historical_studies",                :default => false
    t.boolean  "international_studies",             :default => false
    t.boolean  "philosophy_and_values",             :default => false
    t.boolean  "physical_science",                  :default => false
    t.boolean  "social_and_behavioral_sciences",    :default => false
    t.string   "name"
    t.string   "college"
    t.date     "entrance_year"
    t.date     "expected_year"
    t.string   "major"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
