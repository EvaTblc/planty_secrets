class AddIdapiToUserPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :user_plants, :idapi, :string
  end
end
