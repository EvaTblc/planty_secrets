class AddDetailsToPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :infos, :text
    add_column :plants, :medecine, :text
    add_column :plants, :trouver, :text
  end
end
