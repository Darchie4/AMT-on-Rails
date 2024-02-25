class CreateInstructorInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :instructor_infos do |t|
      t.references :users, foreign_key: true, null: false
      t.string :short_description, null: false
      t.text :long_description, null: false
      t.string :profile_img_path, null: false

      t.timestamps

    end
  end
end
