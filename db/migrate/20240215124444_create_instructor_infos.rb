class CreateInstructorInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :instructor_infos do |t|
      t.string :user_id
      t.text :description
      t.string :profile_img_path

      t.timestamps
    end
  end
end
