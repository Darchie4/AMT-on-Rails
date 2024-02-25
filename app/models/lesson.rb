class Lesson < ApplicationRecord
  has_many :locations, through: :lesson_time_locations
  has_many :instructor_infos, through: :lesson_instructors
  has_many :lesson_time_locations
end
