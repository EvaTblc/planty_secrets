class UserPlant < ApplicationRecord
  belongs_to :user
  belongs_to :plant

  has_one_attached :photo

  has_many :plant_locations
end
