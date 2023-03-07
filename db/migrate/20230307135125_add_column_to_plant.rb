class AddColumnToPlant < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :idapi, :string
    remove_column :plants, :latitude
    remove_column :plants, :longitude
  end
end
