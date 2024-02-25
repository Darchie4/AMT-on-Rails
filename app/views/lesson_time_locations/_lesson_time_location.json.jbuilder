json.extract! lesson_time_location, :id, :lesson_id, :location_id, :week_day, :start_time, :end_time, :created_at, :updated_at
json.url lesson_time_location_url(lesson_time_location, format: :json)
