class Plant < ApplicationRecord
  has_many :plant_locations
  has_many :user_plants
  has_many :users, through: :user_plants

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [:name],
    using: {
      tsearch: { prefix: true }
    }

  has_one_attached :photo
end
