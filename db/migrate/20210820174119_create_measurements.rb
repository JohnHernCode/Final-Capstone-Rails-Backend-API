# frozen_string_literal: true

# Create Measurements
class CreateMeasurements < ActiveRecord::Migration[6.1]
  def change
    create_table :measures do |t|
      t.integer :result, null: false
      t.references :subject, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :date, null: false
      t.timestamps
    end
  end
end
