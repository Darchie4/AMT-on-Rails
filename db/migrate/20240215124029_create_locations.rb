class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :short_description
      t.text :full_description
      t.integer.foreign_key :addresses

      t.timestamps
    end
  end
end
