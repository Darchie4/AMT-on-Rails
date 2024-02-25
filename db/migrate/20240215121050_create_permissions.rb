class CreatePermissions < ActiveRecord::Migration[7.1]
  def change
    create_table :permissions do |t|
      t.string :alias, null: false

      t.timestamps
    end
  end
end
