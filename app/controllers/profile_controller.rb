class ProfileController < ApplicationController
  def show
    @plants = current_user.plants
    @favorites = current_user.favorites_plants
    @list = List.new
    @favorites = @favorites.where("name ILIKE ?", "%#{params[:query]}%") if params[:query].present?

    respond_to do |format|
      format.html
      format.text { render partial: "profile/list", locals: { favorites: @favorites }, formats: [:html] }
    end
  end
end
