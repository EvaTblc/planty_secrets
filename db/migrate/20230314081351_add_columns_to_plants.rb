class AddColumnsToPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :fun_facts2, :text
    add_column :plants, :fun_facts3, :text
    add_column :plants, :arrosage, :text
    add_column :plants, :composition_du_sol, :text
    add_column :plants, :humidite_du_sol, :text
    add_column :plants, :temperature_min, :text
    add_column :plants, :toxicite2, :text
    add_column :plants, :medecine2, :text
    add_column :plants, :medecine3, :text
    add_column :plants, :medecine4, :text
    add_column :plants, :medecine5, :text
    add_column :plants, :medecine6, :text
  end
end
