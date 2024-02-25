class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :description
      t.integer :address_id

      t.timestamps
    end
  end
end