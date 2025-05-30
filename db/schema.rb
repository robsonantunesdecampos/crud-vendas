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

ActiveRecord::Schema[8.0].define(version: 2025_05_30_183518) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "vendas", force: :cascade do |t|
    t.string "cliente"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendas_produtos", force: :cascade do |t|
    t.bigint "venda_id", null: false
    t.string "produto"
    t.integer "quantidade"
    t.decimal "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venda_id"], name: "index_vendas_produtos_on_venda_id"
  end

  add_foreign_key "vendas_produtos", "vendas"
end
