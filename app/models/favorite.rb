class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :plant

  has_many :bookmarks
  has_many :lists, through: :bookmarks

end
