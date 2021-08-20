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

ActiveRecord::Schema.define(version: 20_210_820_174_119) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'measurements', force: :cascade do |t|
    t.integer 'result', null: false
    t.bigint 'subject_id', null: false
    t.bigint 'user_id', null: false
    t.string 'date', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['subject_id'], name: 'index_measurements_on_subject_id'
    t.index ['user_id'], name: 'index_measurements_on_user_id'
  end

  create_table 'subjects', force: :cascade do |t|
    t.string 'title'
    t.string 'unit'
    t.string 'icon'
    t.integer 'target'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'username', null: false
    t.string 'password_digest'
    t.boolean 'admin', default: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'measurements', 'subjects'
  add_foreign_key 'measurements', 'users'
end
