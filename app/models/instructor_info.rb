class InstructorInfo < ApplicationRecord
  belongs_to :user
  has_many :lessons, through: :lesson_time_locations
end
