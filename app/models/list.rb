class List < ApplicationRecord
  has_many :bookmarks
  has_many :favorites, through: :bookmarks
  belongs_to :user

  validates :name, presence: true
end
