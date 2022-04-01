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

ActiveRecord::Schema.define(version: 2022_03_30_073143) do

  create_table "algorithms", force: :cascade do |t|
    t.string "name"
    t.integer "output_length"
    t.integer "block_length"
    t.integer "word_length"
  end

  create_table "constants", force: :cascade do |t|
    t.string "root_value"
    t.string "value"
    t.string "binary_value"
    t.string "hex_value"
  end

  create_table "join_algorithms_constants", force: :cascade do |t|
    t.integer "algorithm_id"
    t.integer "constant_id"
  end

  create_table "join_algorithms_operations", force: :cascade do |t|
    t.integer "algorithm_id"
    t.integer "operation_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "message"
    t.string "digest"
    t.integer "algorithm_id"
  end

  create_table "operations", force: :cascade do |t|
    t.string "operation"
    t.string "operator"
  end

end
