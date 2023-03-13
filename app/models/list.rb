class List < ApplicationRecord
  has_many :bookmarks
  has_many :favorites, through: :bookmarks
  belongs_to :user

  has_one_attached :photo

  validates :name, presence: true
end
