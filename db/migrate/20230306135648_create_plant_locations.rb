class CreatePlantLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :plant_locations do |t|
      t.references :user_plant, null: false, foreign_key: true
      t.references :plant, null: false, foreign_key: true
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
