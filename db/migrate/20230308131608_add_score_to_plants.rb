class AddScoreToPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :score, :integer
  end
end
