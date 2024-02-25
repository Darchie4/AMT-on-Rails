class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :country, null: false
      t.string :address, null: false
      t.integer :zip_code, null: false
      t.string :city, null: false

      t.timestamps
    end
  end
end