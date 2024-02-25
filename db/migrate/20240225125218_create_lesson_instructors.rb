class CreateLessonInstructors < ActiveRecord::Migration[7.1]
  def change
    create_table :lesson_instructors do |t|
      t.references :lesson, null: false, foreign_key: true
      t.references :instructor_info, null: false, foreign_key: true

      t.timestamps
    end
  end
end
