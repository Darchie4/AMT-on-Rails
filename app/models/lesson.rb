class Lesson < ApplicationRecord
  has_many :instructor_info, through: :lesson_time_locations

end
