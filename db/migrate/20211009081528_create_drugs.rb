class CreateDrugs < ActiveRecord::Migration[6.1]
  def change
    create_table :drugs do |t|
      t.string  :name
      t.string  :ailment
      t.string  :side_effects, array: true, default: []
      
      t.timestamps
    end
  end
end
