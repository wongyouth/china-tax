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

ActiveRecord::Schema.define(:version => 20130331160450) do

  create_table "taxes", :force => true do |t|
    t.float    "company_yanglao"
    t.float    "company_yiliao"
    t.float    "company_shiye"
    t.float    "company_shengyu"
    t.float    "company_gongshang"
    t.float    "company_zhufang"
    t.float    "person_yanglao"
    t.float    "person_yiliao"
    t.float    "person_shiye"
    t.float    "person_shengyu"
    t.float    "person_gongshang"
    t.float    "person_zhufang"
    t.float    "social_yanglao"
    t.float    "social_yiliao"
    t.float    "social_shiye"
    t.float    "social_shengyu"
    t.float    "social_gongshang"
    t.float    "social_zhufang"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
