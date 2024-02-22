class CreateInstructorInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :instructor_infos do |t|
      t.string.foreign_key :users
      t.string :short_description
      t.text :full_description
      t.string :profile_img_path

      t.timestamps
    end
  end
end
