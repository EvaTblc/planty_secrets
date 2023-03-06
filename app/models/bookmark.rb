class Bookmark < ApplicationRecord
  belongs_to :favorite
  belongs_to :list
end
