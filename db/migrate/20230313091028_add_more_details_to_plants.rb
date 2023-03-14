class AddMoreDetailsToPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :fun_facts, :text
    add_column :plants, :entretien, :text
    add_column :plants, :cuisine, :text
    add_column :plants, :taille, :text
    add_column :plants, :exposition, :text
    add_column :plants, :floraison, :text
    add_column :plants, :toxicite, :text
  end
end
