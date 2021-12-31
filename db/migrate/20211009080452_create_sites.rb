# frozen_string_literal: true

class CreateSites < ActiveRecord::Migration[6.1]
  def change
    create_table :sites do |t|
      t.string  :name
      t.string  :phone
      t.string  :email, null: false
      t.string  :timezone
      t.string  :location
      t.string  :city
      t.string  :state
      t.string  :country

      t.timestamps
    end
  end
end
