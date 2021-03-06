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

ActiveRecord::Schema.define(version: 20170104200830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "submissions", force: :cascade do |t|
    t.string   "full_name"
    t.string   "email"
    t.string   "project_repo"
    t.string   "project_url"
    t.integer  "oop_best_practices"
    t.integer  "modular_dev"
    t.integer  "workflow_understanding"
    t.integer  "testing"
    t.integer  "database_knowledge"
    t.integer  "debugging"
    t.integer  "problem_solving"
    t.integer  "javascript"
    t.integer  "html"
    t.integer  "css"
    t.integer  "teamwork"
    t.integer  "self_motivation"
    t.integer  "communication_skils"
    t.integer  "energy_level"
    t.integer  "intelligence"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
