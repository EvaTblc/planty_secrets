class UserPlant < ApplicationRecord
  belongs_to :user
  belongs_to :plant

  has_many :plant_locations

  # validates :user_id, uniqueness: true
end
