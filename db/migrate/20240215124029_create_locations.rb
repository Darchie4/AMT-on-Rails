class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.string :name, null: false
      t.string :short_description, null: false
      t.text :long_description, null: false
      t.references :address, foreign_key: true, null: false
      t.string :cover_img_path, null: false

      t.timestamps
    end
  end
end
