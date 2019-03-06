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

ActiveRecord::Schema.define(version: 2019_02_20_105307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asama_tanims", force: :cascade do |t|
    t.string "asama_adi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "belge_tips", force: :cascade do |t|
    t.string "baslik"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "belges", force: :cascade do |t|
    t.string "baslik"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "belge_tip_id"
    t.bigint "asama_tanim_id"
    t.index ["asama_tanim_id"], name: "index_belges_on_asama_tanim_id"
    t.index ["belge_tip_id"], name: "index_belges_on_belge_tip_id"
  end

  create_table "cari_belge_tanims", force: :cascade do |t|
    t.bigint "bel_id"
    t.bigint "cari_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "belge_id"
    t.index ["belge_id"], name: "index_cari_belge_tanims_on_belge_id"
    t.index ["cari_id"], name: "index_cari_belge_tanims_on_cari_id"
  end

  create_table "cari_grups", force: :cascade do |t|
    t.string "grup_adi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "caris", force: :cascade do |t|
    t.string "unvan"
    t.string "unvan2"
    t.text "adres"
    t.string "telefon"
    t.string "il"
    t.string "ilce"
    t.string "vergi_dairesi"
    t.string "vergi_no"
    t.string "varis_tipi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cari_grup_id"
    t.index ["cari_grup_id"], name: "index_caris_on_cari_grup_id"
  end

  create_table "sips", force: :cascade do |t|
    t.date "siparis_tarihi"
    t.date "termin_tarihi"
    t.integer "siparis_miktar"
    t.integer "sevk_miktar"
    t.integer "kalan_miktar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "stok_id"
    t.bigint "cari_id"
    t.index ["cari_id"], name: "index_sips_on_cari_id"
    t.index ["stok_id"], name: "index_sips_on_stok_id"
  end

  create_table "stok_grups", force: :cascade do |t|
    t.string "grup_adi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stoks", force: :cascade do |t|
    t.string "stok_adi"
    t.string "stok_adi2"
    t.string "stok_birim"
    t.integer "stok_gen"
    t.integer "stok_yuk"
    t.integer "stok_der"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "stok_grup_id"
    t.index ["stok_grup_id"], name: "index_stoks_on_stok_grup_id"
  end

  add_foreign_key "belges", "asama_tanims"
  add_foreign_key "belges", "belge_tips"
  add_foreign_key "cari_belge_tanims", "belges"
  add_foreign_key "cari_belge_tanims", "caris"
  add_foreign_key "caris", "cari_grups"
  add_foreign_key "sips", "caris"
  add_foreign_key "sips", "stoks"
  add_foreign_key "stoks", "stok_grups"
end
