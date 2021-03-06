# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_211_009_083_518) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'drugs', force: :cascade do |t|
    t.string 'name'
    t.string 'ailment'
    t.string 'side_effects', default: [], array: true
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'sites', force: :cascade do |t|
    t.string 'name'
    t.string 'phone'
    t.string 'email', null: false
    t.string 'timezone'
    t.string 'location'
    t.string 'city'
    t.string 'state'
    t.string 'country'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'studies', force: :cascade do |t|
    t.string 'uuid', null: false
    t.string 'name', null: false
    t.integer 'phase', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'drug_id'
    t.index ['drug_id'], name: 'index_studies_on_drug_id'
  end

  add_foreign_key 'studies', 'drugs'
end
