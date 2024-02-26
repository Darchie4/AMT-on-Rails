class CreateDanceStyles < ActiveRecord::Migration[7.1]
  def change
    create_table :dance_styles do |t|
      t.string :name

      t.timestamps
    end
  end
end