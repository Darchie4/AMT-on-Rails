class CreateLessons < ActiveRecord::Migration[7.1]
  def change
    create_table :lessons do |t|
      t.string :name, null: false
      t.string :short_description, null: false
      t.text :long_description, null: false
      t.date :season_start, null: false
      t.date :season_end, null: false
      t.integer :min_age
      t.integer :max_age
      t.decimal :price, null: false
      t.string :cover_img_path, null: false

      t.timestamps
    end
  end
end
