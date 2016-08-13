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

ActiveRecord::Schema.define(version: 20160808065854) do

  create_table "bulletins", force: :cascade do |t|
    t.string   "title"
    t.text     "decription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mailboxer_conversation_opt_outs", force: :cascade do |t|
    t.integer "unsubscriber_id"
    t.string  "unsubscriber_type"
    t.integer "conversation_id"
  end

  add_index "mailboxer_conversation_opt_outs", ["conversation_id"], name: "index_mailboxer_conversation_opt_outs_on_conversation_id"
  add_index "mailboxer_conversation_opt_outs", ["unsubscriber_id", "unsubscriber_type"], name: "index_mailboxer_conversation_opt_outs_on_unsubscriber_id_type"

  create_table "mailboxer_conversations", force: :cascade do |t|
    t.string   "subject",    default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "mailboxer_notifications", force: :cascade do |t|
    t.string   "type"
    t.text     "body"
    t.string   "subject",              default: ""
    t.integer  "sender_id"
    t.string   "sender_type"
    t.integer  "conversation_id"
    t.boolean  "draft",                default: false
    t.string   "notification_code"
    t.integer  "notified_object_id"
    t.string   "notified_object_type"
    t.string   "attachment"
    t.datetime "updated_at",                           null: false
    t.datetime "created_at",                           null: false
    t.boolean  "global",               default: false
    t.datetime "expires"
  end

  add_index "mailboxer_notifications", ["conversation_id"], name: "index_mailboxer_notifications_on_conversation_id"
  add_index "mailboxer_notifications", ["notified_object_id", "notified_object_type"], name: "index_mailboxer_notifications_on_notified_object_id_and_type"
  add_index "mailboxer_notifications", ["sender_id", "sender_type"], name: "index_mailboxer_notifications_on_sender_id_and_sender_type"
  add_index "mailboxer_notifications", ["type"], name: "index_mailboxer_notifications_on_type"

  create_table "mailboxer_receipts", force: :cascade do |t|
    t.integer  "receiver_id"
    t.string   "receiver_type"
    t.integer  "notification_id",                            null: false
    t.boolean  "is_read",                    default: false
    t.boolean  "trashed",                    default: false
    t.boolean  "deleted",                    default: false
    t.string   "mailbox_type",    limit: 25
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "mailboxer_receipts", ["notification_id"], name: "index_mailboxer_receipts_on_notification_id"
  add_index "mailboxer_receipts", ["receiver_id", "receiver_type"], name: "index_mailboxer_receipts_on_receiver_id_and_receiver_type"

  create_table "posts", force: :cascade do |t|
    t.string   "post_schoolname"
    t.string   "post_personname"
    t.string   "post_age"
    t.string   "post_weekend"
    t.string   "post_drink"
    t.string   "post_smoke"
    t.string   "post_major"
    t.string   "post_living"
    t.string   "post_sharing"
    t.string   "post_visitor"
    t.string   "post_sparetime"
    t.string   "post_studywhere"
    t.string   "post_noiselevel"
    t.string   "post_wakeup"
    t.string   "post_sleep"
    t.string   "post_activity"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "bulletin_id"
    t.integer  "user_id"
  end

  add_index "posts", ["bulletin_id"], name: "index_posts_on_bulletin_id"
  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "schoolname"
    t.string   "personname"
    t.string   "major"
    t.string   "age"
    t.string   "grade"
    t.string   "smoke"
    t.string   "drink"
    t.string   "weekend"
    t.string   "living"
    t.string   "sharing"
    t.string   "visitor"
    t.string   "sparetime"
    t.string   "studywhere"
    t.string   "noiselevel"
    t.string   "wakeup"
    t.string   "sleep"
    t.string   "activity"
  end

  add_index "users", ["activity"], name: "index_users_on_activity"
  add_index "users", ["age"], name: "index_users_on_age"
  add_index "users", ["drink"], name: "index_users_on_drink"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["grade"], name: "index_users_on_grade"
  add_index "users", ["living"], name: "index_users_on_living"
  add_index "users", ["major"], name: "index_users_on_major"
  add_index "users", ["noiselevel"], name: "index_users_on_noiselevel"
  add_index "users", ["personname"], name: "index_users_on_personname"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["schoolname"], name: "index_users_on_schoolname"
  add_index "users", ["sharing"], name: "index_users_on_sharing"
  add_index "users", ["sleep"], name: "index_users_on_sleep"
  add_index "users", ["smoke"], name: "index_users_on_smoke"
  add_index "users", ["sparetime"], name: "index_users_on_sparetime"
  add_index "users", ["studywhere"], name: "index_users_on_studywhere"
  add_index "users", ["visitor"], name: "index_users_on_visitor"
  add_index "users", ["wakeup"], name: "index_users_on_wakeup"
  add_index "users", ["weekend"], name: "index_users_on_weekend"

end
