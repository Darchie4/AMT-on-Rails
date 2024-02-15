json.extract! instructor_info, :id, :user_id, :description, :profile_img_path, :created_at, :updated_at
json.url instructor_info_url(instructor_info, format: :json)
