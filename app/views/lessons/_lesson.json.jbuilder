json.extract! lesson, :id, :name, :description, :season_start, :season_end, :min_age, :max_age, :price, :cover_img_path, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
