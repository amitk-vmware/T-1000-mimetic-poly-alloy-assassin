# frozen_string_literal: true

class CreateStudies < ActiveRecord::Migration[6.1]
  def change
    create_table :studies do |t|
      t.string  :uuid, null: false
      t.string  :name, null: false
      t.integer :phase, null: false

      t.timestamps
    end
  end
end
