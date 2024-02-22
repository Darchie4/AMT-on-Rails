class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.pr
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.integer :address_id
      t.string :password
      t.string :email
      t.string :phone

      t.timestamps

      add_foreign_key :addresses, :users
    end
  end
end
