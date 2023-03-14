class AddFavoritesToUserPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :user_plants, :favorite, :boolean, default: false
  end
end
