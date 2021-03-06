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

ActiveRecord::Schema.define(:version => 20100719175632) do

  create_table "article_contents", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "content"
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status_confirmed"
    t.integer  "article_id"
  end

  create_table "articles", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "published_at"
    t.boolean  "status",       :default => false
  end

  create_table "users", :force => true do |t|
    t.string   "Firstname"
    t.string   "Lastname"
    t.string   "login"
    t.string   "password"
    t.string   "activation_code"
    t.boolean  "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "last_login"
    t.datetime "remember_token_expires_at"
    t.string   "remember_token"
  end

end
