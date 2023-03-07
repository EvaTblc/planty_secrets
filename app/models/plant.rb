class Plant < ApplicationRecord
  has_many :plant_locations
  has_many :user_plants
  has_many :users, through: :user_plants

  has_one_attached :photo

  # validates :name, :species, presence: true
end
