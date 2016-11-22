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

ActiveRecord::Schema.define(version: 20161122011355) do

  create_table "buddyfights", force: :cascade do |t|
    t.string   "booster_set_name"
    t.string   "rarity"
    t.float    "price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "dragonballs", force: :cascade do |t|
    t.string   "card_name"
    t.string   "booster_set_name"
    t.string   "set_name"
    t.float    "price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "forceofwills", force: :cascade do |t|
    t.string   "set_name"
    t.string   "booster_set_name"
    t.float    "price"
    t.boolean  "attribute"
    t.decimal  "total_cost"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "magics", force: :cascade do |t|
    t.string   "card_name"
    t.string   "print_tag"
    t.string   "rarity"
    t.string   "booster_set_name"
    t.string   "set_name"
    t.string   "special"
    t.string   "collection"
    t.float    "price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "mtgcards", force: :cascade do |t|
    t.string   "name"
    t.integer  "multiverse_id"
    t.boolean  "layout"
    t.string   "names"
    t.decimal  "mana_cost"
    t.string   "cmc"
    t.boolean  "colors"
    t.integer  "type_id"
    t.string   "supertypes"
    t.string   "subtypes"
    t.string   "rarity"
    t.text     "text"
    t.string   "flavor"
    t.string   "artist"
    t.integer  "number"
    t.string   "power"
    t.string   "toughness"
    t.string   "loyalty"
    t.string   "variations"
    t.string   "watermark"
    t.string   "border"
    t.string   "timeshifted"
    t.string   "hand"
    t.string   "life"
    t.string   "reserved"
    t.date     "release_date"
    t.string   "starter"
    t.boolean  "rulings"
    t.string   "foreign_names"
    t.boolean  "printings"
    t.text     "original_text"
    t.integer  "original_type_id"
    t.string   "legalities"
    t.integer  "source_id"
    t.integer  "image_url_id"
    t.string   "set"
    t.string   "set_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["image_url_id"], name: "index_mtgcards_on_image_url_id"
    t.index ["original_type_id"], name: "index_mtgcards_on_original_type_id"
    t.index ["source_id"], name: "index_mtgcards_on_source_id"
    t.index ["type_id"], name: "index_mtgcards_on_type_id"
  end

  create_table "mtgchangelogs", force: :cascade do |t|
    t.string   "version"
    t.date     "release_date"
    t.string   "details"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "mtgforeignnames", force: :cascade do |t|
    t.string   "language"
    t.string   "name"
    t.integer  "multiverse_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "mtglegalities", force: :cascade do |t|
    t.boolean  "format"
    t.boolean  "legality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mtgrulings", force: :cascade do |t|
    t.date     "date"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mtgsets", force: :cascade do |t|
    t.integer  "code_id"
    t.string   "name"
    t.integer  "gatherer_code"
    t.integer  "old_code"
    t.integer  "magic_cards_info_code"
    t.date     "release_date"
    t.boolean  "border"
    t.integer  "type_id"
    t.boolean  "block"
    t.boolean  "online_only"
    t.string   "booster"
    t.integer  "mkm_id"
    t.string   "mkm_name"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["code_id"], name: "index_mtgsets_on_code_id"
    t.index ["type_id"], name: "index_mtgsets_on_type_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string   "card_name"
    t.string   "print_tag"
    t.string   "rarity"
    t.string   "booster_set_name"
    t.string   "set_name"
    t.string   "reprint"
    t.string   "collection"
    t.float    "price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "pricewalkthroughs", force: :cascade do |t|
    t.string   "product_line"
    t.string   "rarity"
    t.string   "set_name"
    t.string   "number"
    t.float    "price"
    t.float    "market_price"
    t.float    "price_trend"
    t.string   "listed_high"
    t.string   "listed_mediam"
    t.string   "listed_low"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "brand"
    t.string   "booster_set_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "vanguards", force: :cascade do |t|
    t.string   "card_name"
    t.string   "print_tag"
    t.string   "rarity"
    t.string   "booster_set_name"
    t.string   "clan_booster_name"
    t.string   "set_name"
    t.string   "deck_name"
    t.string   "collection"
    t.integer  "unit"
    t.integer  "grade"
    t.integer  "card_number"
    t.boolean  "skill_icon"
    t.boolean  "trigger"
    t.string   "power"
    t.string   "nation"
    t.string   "clan"
    t.string   "race"
    t.string   "shield"
    t.float    "price"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "yugiohs", force: :cascade do |t|
    t.string   "card_name"
    t.string   "print_tag"
    t.string   "rarity"
    t.string   "booster_set_name"
    t.string   "set_name"
    t.string   "special"
    t.string   "reprint"
    t.string   "collection"
    t.boolean  "attribute"
    t.float    "price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
