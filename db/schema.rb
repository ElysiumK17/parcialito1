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

ActiveRecord::Schema.define(version: 2021_04_19_201328) do

  create_table "Authors_Categories", id: false, force: :cascade do |t|
    t.integer "Author_id", null: false
    t.integer "Category_id", null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "birthdate"
    t.string "nationality"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipe_types", force: :cascade do |t|
    t.string "name"
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "featured"
    t.text "ingredientes"
    t.text "steps"
    t.datetime "submit_date"
    t.string "image_url"
    t.integer "Category_id", null: false
    t.integer "recipe_type_id", null: false
    t.integer "author_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Category_id"], name: "index_recipes_on_Category_id"
    t.index ["author_id"], name: "index_recipes_on_author_id"
    t.index ["recipe_type_id"], name: "index_recipes_on_recipe_type_id"
  end

  add_foreign_key "recipes", "Categories"
  add_foreign_key "recipes", "authors"
  add_foreign_key "recipes", "recipe_types"
end
