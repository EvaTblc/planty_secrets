class RemoveReferenceUserPlantToPlantLocation < ActiveRecord::Migration[7.0]
  def change
    remove_reference :plant_locations, :user_plant, foreign_key: true
  end
end
