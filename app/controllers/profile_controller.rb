class ProfileController < ApplicationController
  def show
    @plants = current_user.plants

    @favorites = current_user.plants.includes(:user_plants).where(user_plants: { favorite: true })


    @favorites = @favorites.where("name ILIKE ?", "%#{params[:query]}%") if params[:query].present?
    # FROM DESIGN TO CODE = nettoyer la search après le submit
  end
end
