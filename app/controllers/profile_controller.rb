class ProfileController < ApplicationController
  def show
    @plants = current_user.plants
    @favorites = current_user.plants.includes(:user_plants).where(user_plants: { favorite: true })
    @favorites = @favorites.where("name ILIKE ?", "%#{params[:query]}%") if params[:query].present?
    # FROM DESIGN TO CODE = nettoyer la search après le submit

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "profile/list", locals: { favorites: @favorites }, formats: [:html] }
    end

  end
end
