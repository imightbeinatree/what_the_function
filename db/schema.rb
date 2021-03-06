# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20081202063433) do

  create_table "notes", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "programming_language_id"
    t.integer  "what_function_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programming_languages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "revisions", :force => true do |t|
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.datetime "revised_at",               :null => false
    t.text     "content",                  :null => false
    t.string   "author",     :limit => 60
    t.string   "ip",         :limit => 60
    t.string   "obj_type"
    t.integer  "obj_id",                   :null => false
    t.string   "field_name", :limit => 20
  end

  create_table "twins", :force => true do |t|
    t.integer  "left_function_id"
    t.integer  "right_function_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "note"
  end

  create_table "what_functions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "programming_language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
