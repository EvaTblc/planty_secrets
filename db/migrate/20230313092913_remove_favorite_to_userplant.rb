class RemoveFavoriteToUserplant < ActiveRecord::Migration[7.0]
  def change
    remove_column :user_plants, :favorite
  end
end
