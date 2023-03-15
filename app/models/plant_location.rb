class PlantLocation < ApplicationRecord
  belongs_to :user_plant
  belongs_to :plant

  include PgSearch::Model
  pg_search_scope :search_in_map,
    against: [ :plant_id ],
    associated_against: {
      plant: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }

end
