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

ActiveRecord::Schema.define(version: 2023_08_01_094430) do

    create_table "articles", id: :integer, limit: 2, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
      t.string "title", limit: 140
      t.string "short_description", limit: 300
      t.text "content"
      t.string "share_mode"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.text "image_data"
      t.integer "customer_id", limit: 2
      t.datetime "deleted_at"
      t.integer "category_id", limit: 2
      t.index ["category_id"], name: "index_articles_on_category_id"
      t.index ["customer_id"], name: "index_articles_on_customer_id"
      t.index ["deleted_at"], name: "index_articles_on_deleted_at"
    end
  
    create_table "categories", id: :integer, limit: 2, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
      t.string "title", limit: 140
      t.text "content"
      t.string "share_mode"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "customer_id", limit: 2
      t.datetime "deleted_at"
      t.index ["customer_id"], name: "index_categories_on_customer_id"
      t.index ["deleted_at"], name: "index_categories_on_deleted_at"
    end
  
    create_table "customers", id: :integer, limit: 2, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
      t.string "email", default: "", null: false
      t.string "encrypted_password", default: "", null: false
      t.string "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.string "confirmation_token"
      t.datetime "confirmed_at"
      t.datetime "confirmation_sent_at"
      t.string "unconfirmed_email"
      t.string "first_name"
      t.string "last_name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "role_id", limit: 2, default: 2
      t.boolean "active", default: true
      t.datetime "deleted_at"
      t.index ["confirmation_token"], name: "index_customers_on_confirmation_token", unique: true
      t.index ["deleted_at"], name: "index_customers_on_deleted_at"
      t.index ["email"], name: "index_customers_on_email", unique: true
      t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
      t.index ["role_id"], name: "fk_rails_06ff5e1918"
    end
  
    create_table "roles", id: :integer, limit: 2, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
      t.string "name_role"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    add_foreign_key "articles", "categories"
    add_foreign_key "articles", "customers"
    add_foreign_key "categories", "customers"
    add_foreign_key "customers", "roles"
  end
  