class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
