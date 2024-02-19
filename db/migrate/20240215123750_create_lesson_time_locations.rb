class CreateLessonTimeLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :lesson_time_locations do |t|
      t.integer :lesson_id
      t.integer :location_id
      t.string :week_day
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
