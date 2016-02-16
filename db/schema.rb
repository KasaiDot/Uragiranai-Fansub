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

ActiveRecord::Schema.define(:version => 20130620180226) do

  create_table "comments", :force => true do |t|
    t.integer  "news_id"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "autoremail"
    t.integer  "user_id"
  end

  create_table "forceds", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.boolean  "visible"
    t.string   "image"
    t.boolean  "redim"
    t.integer  "length"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.integer  "news_id"
    t.boolean  "link"
  end

  create_table "imgups", :force => true do |t|
    t.string   "image"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "jhebergs", :force => true do |t|
    t.string   "url"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "projet_id"
  end

  create_table "links", :force => true do |t|
    t.string   "url"
    t.integer  "nep"
    t.integer  "projet_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  add_index "links", ["projet_id"], :name => "index_links_on_projet_id"

  create_table "multiups", :force => true do |t|
    t.string   "url"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "projet_id"
  end

  create_table "news", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.boolean  "forced"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.boolean  "public"
    t.string   "image"
    t.integer  "length"
    t.string   "programmation"
    t.boolean  "redim"
    t.integer  "user_id"
  end

  create_table "pages", :force => true do |t|
    t.text     "staff"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "partenaires", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "partype"
  end

  create_table "progressions", :force => true do |t|
    t.string   "image"
    t.integer  "episode"
    t.integer  "traduction"
    t.integer  "qcfinal"
    t.string   "other"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "diffusion"
    t.string   "name"
    t.integer  "qctext"
  end

  create_table "projets", :force => true do |t|
    t.string   "title"
    t.text     "infos"
    t.text     "synopsis"
    t.text     "ost"
    t.boolean  "finished"
    t.boolean  "public"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "anime"
    t.string   "image"
    t.text     "realisation"
  end

  create_table "sas", :force => true do |t|
    t.text     "content"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "staffs", :force => true do |t|
    t.string   "pseudo"
    t.string   "postes"
    t.text     "presentation"
    t.string   "avatar"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "stats", :force => true do |t|
    t.integer  "visites"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "torrents", :force => true do |t|
    t.string   "url"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "projet_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "username"
    t.boolean  "admin",                  :default => false
    t.boolean  "redacteur"
    t.string   "avatar"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
