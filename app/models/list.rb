class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :favorites, through: :bookmarks
  belongs_to :user

  validates :name, presence: true
end
