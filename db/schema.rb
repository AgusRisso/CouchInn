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

ActiveRecord::Schema.define(version: 20151127181100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.text     "comentario"
    t.integer  "lodging_id"
    t.integer  "user_id"
    t.text     "respuesta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lodgings", force: true do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.text     "detalle"
    t.string   "zona"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lodgingtype_id"
    t.string   "url"
    t.integer  "user_id"
    t.integer  "cantidaddehuespedes"
  end

  create_table "lodgingtypes", force: true do |t|
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "enable"
  end

  create_table "reservas", force: true do |t|
    t.date     "dateinit"
    t.date     "dateexit"
    t.boolean  "confirmate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lodging_id"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name"
    t.datetime "date_of_birth"
    t.boolean  "is_female",              default: false
    t.string   "apellido"
    t.integer  "edad"
    t.integer  "telefono"
    t.boolean  "es_admin",               default: false
    t.boolean  "es_premium",             default: false
    t.integer  "pintarjeta"
    t.string   "dueñotarjeta"
    t.string   "tarjeta"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "valorar_hs", force: true do |t|
    t.integer  "user_id"
    t.integer  "lodging_id"
    t.float    "promedio"
    t.integer  "cantidadVotos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
