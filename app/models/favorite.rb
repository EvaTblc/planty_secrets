class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :plant

  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :user_id, uniqueness: { scope: :plant_id }
end
