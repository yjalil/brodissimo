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

ActiveRecord::Schema[7.1].define(version: 2024_02_08_115355) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "assignements", force: :cascade do |t|
    t.integer "worker_id"
    t.bigint "order_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "machine_id", null: false
    t.string "fulldesign"
    t.index ["machine_id"], name: "index_assignements_on_machine_id"
    t.index ["order_id"], name: "index_assignements_on_order_id"
  end

  create_table "catalogs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "front_photo_url"
    t.string "back_photo_url"
  end

  create_table "machines", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "status"
    t.string "graphisme"
    t.string "type_impression"
    t.string "nombre_faces"
    t.string "type_eclairage"
    t.string "matiere"
    t.string "type_led"
    t.string "alimentation"
    t.string "interpompier"
    t.string "decoupe"
    t.string "fixation_lettre"
    t.string "projet_dimensions"
    t.decimal "prix_ht", precision: 10, scale: 2
    t.decimal "prix_ttc", precision: 10, scale: 2
    t.integer "item_id"
    t.string "type_photo"
    t.text "comment"
    t.date "date_desired"
    t.boolean "type_livraison"
    t.integer "quantite_xs"
    t.integer "quantite_s"
    t.integer "quantite_m"
    t.integer "quantite_l"
    t.integer "quantite_xl"
    t.integer "quantite_xxl"
    t.decimal "price"
    t.decimal "logo_width"
    t.decimal "logo_height"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "assignements", "machines"
  add_foreign_key "assignements", "orders"
  add_foreign_key "assignements", "users", column: "worker_id"
  add_foreign_key "orders", "users", column: "client_id"
end
