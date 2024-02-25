class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :address
      t.integer :zip_code
      t.string :city

      t.timestamps
    end
  end
end
