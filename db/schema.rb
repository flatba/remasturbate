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

ActiveRecord::Schema.define(version: 20170221003410) do

  create_table "curation_comments", force: :cascade do |t|
    t.integer  "curation_id"
    t.integer  "user_id"
    t.string   "comment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["curation_id"], name: "index_curation_comments_on_curation_id"
    t.index ["user_id"], name: "index_curation_comments_on_user_id"
  end

  create_table "curation_likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "curation_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["curation_id"], name: "index_curation_likes_on_curation_id"
    t.index ["user_id"], name: "index_curation_likes_on_user_id"
  end

  create_table "curation_tags", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "curation_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["curation_id"], name: "index_curation_tags_on_curation_id"
    t.index ["tag_id"], name: "index_curation_tags_on_tag_id"
  end

  create_table "curation_videos", force: :cascade do |t|
    t.integer  "curation_id"
    t.integer  "video_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "headline"
    t.string   "description"
    t.index ["curation_id"], name: "index_curation_videos_on_curation_id"
    t.index ["video_id"], name: "index_curation_videos_on_video_id"
  end

  create_table "curations", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_curations_on_user_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "following_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["follower_id", "following_id"], name: "index_relationships_on_follower_id_and_following_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
    t.index ["following_id"], name: "index_relationships_on_following_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: ""
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "username"
    t.string   "thumbnails"
    t.string   "description"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "video_comments", force: :cascade do |t|
    t.integer  "video_id"
    t.integer  "user_id"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_video_comments_on_user_id"
    t.index ["video_id"], name: "index_video_comments_on_video_id"
  end

  create_table "video_likes", force: :cascade do |t|
    t.integer  "video_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_video_likes_on_user_id"
    t.index ["video_id"], name: "index_video_likes_on_video_id"
  end

  create_table "video_tags", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "video_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_video_tags_on_tag_id"
    t.index ["video_id"], name: "index_video_tags_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string   "url"
    t.string   "title"
    t.string   "description"
    t.string   "website"
    t.integer  "user_id"
    t.string   "thumbnails"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_videos_on_user_id"
  end

end
