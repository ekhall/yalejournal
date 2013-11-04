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

ActiveRecord::Schema.define(version: 20131104181655) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: true do |t|
    t.string   "name"
    t.string   "journal"
    t.date     "presentation_date"
    t.date     "publication_date"
    t.text     "presentation_comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "protocols", force: true do |t|
    t.string   "title"
    t.text     "objective"
    t.text     "included_patients"
    t.text     "excluded_patients"
    t.text     "definitions"
    t.text     "etiology"
    t.text     "natural_history"
    t.text     "risk_stratification"
    t.text     "outcomes"
    t.text     "cp_ros"
    t.text     "cp_physical_exam"
    t.text     "cp_diagnostic_testing"
    t.text     "cp_genotyping"
    t.text     "decision_tree_support"
    t.text     "medical_interventions"
    t.text     "surgical_considerations"
    t.text     "adl_recommendations"
    t.text     "special_considerations"
    t.text     "plausible_outcomes"
    t.text     "references"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suggests", force: true do |t|
    t.integer  "article_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "suggests", ["article_id"], name: "index_suggests_on_article_id", using: :btree
  add_index "suggests", ["user_id"], name: "index_suggests_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

end
