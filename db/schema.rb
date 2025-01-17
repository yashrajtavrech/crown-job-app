# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_05_14_083919) do
  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rent_payments", force: :cascade do |t|
    t.decimal "amount"
    t.integer "tenant_id", null: false
    t.date "due_date"
    t.boolean "paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tenant_id"], name: "index_rent_payments_on_tenant_id"
  end

  create_table "tenants", force: :cascade do |t|
    t.string "name"
    t.integer "property_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_tenants_on_property_id"
  end

  add_foreign_key "rent_payments", "tenants"
  add_foreign_key "tenants", "properties"
end
