class ProfileController < ApplicationController
  def show
    @user = current_user
    @plants = current_user.user_plants

    @user_plants = UserPlant.includes(:plant).where(plant: { user: current_user })
  end
end
