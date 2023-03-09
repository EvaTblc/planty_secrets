class PlantLocationsController < ApplicationController
  def show
    @user = current_user
    @user_plants = current_user.user_plants

    @plant_locations = PlantLocation.includes(:user_plant).where(user_plant: { user: current_user})
  end
end
