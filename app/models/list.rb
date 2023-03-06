class List < ApplicationRecord
  has_many :bookmarks
  has_many :favorites, through: :bookmarks

  validates :name, presence: true
end
