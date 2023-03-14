class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :user_plants
  has_many :plants, through: :user_plants
  has_many :favorites
  has_many :favorites_plants, through: :favorites, source: :plant
  has_many :lists

  has_one_attached :photo

  validates :first_name, :last_name, :email, :password, :username, presence: true
end
