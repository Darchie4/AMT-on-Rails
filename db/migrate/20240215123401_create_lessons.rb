class CreateLessons < ActiveRecord::Migration[7.1]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :short_description
      t.text :full_description
      t.date :season_start
      t.date :season_end
      t.integer :min_age
      t.integer :max_age
      t.decimal :price
      t.string :cover_img_path

      t.timestamps
    end
  end
end
