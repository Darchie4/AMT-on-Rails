class CreateLessonTimeLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :lesson_time_locations do |t|
      t.references :lessons, foreign_key: true, null: false
      t.references :locations, foreign_key: true, null: false
      t.string :week_day, null: false
      t.time :start_time, null: false
      t.time :end_time, null: false

      t.timestamps
    end
  end
end