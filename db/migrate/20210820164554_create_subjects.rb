# frozen_string_literal: true

# migration for subjects
class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :unit
      t.string :icon
      t.integer :target
      t.timestamps
    end
  end
end
