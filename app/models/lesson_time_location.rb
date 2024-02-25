class LessonTimeLocation < ApplicationRecord
  belongs_to :lesson
  belongs_to :location
end
