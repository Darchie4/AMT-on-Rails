class InstructorInfo < ApplicationRecord
  belongs_to :user
  has_many :lessons, through: :lesson_instructors
end
