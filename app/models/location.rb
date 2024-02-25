class Location < ApplicationRecord
  belongs_to :address
  has_many :lessons, through: :lesson_time_locations
end
