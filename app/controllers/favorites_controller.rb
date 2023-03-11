class FavoritesController < ApplicationController
  # before_action :set_plant, only: [:create, :destroy]

  # def create
  #   @favorite = Favorite.new(plant: @plant, user: current_user)
  #   if !@favorite.save
  #     flash[:notice] = @favorite.errors.full_messages.to_sentence
  #   end

  #   redirect_to @favorite.plant
  # end

  # def destroy
  #   @favorite = current_user.favorites.find(params[:id])
  #   plant = @favorite.plant
  #   @favorite.destroy

  #   redirect_to plant_path
  # end

  # private

  # def favorite_params
  #   params.require(:favorite).permit(params[:plant_id])
  # end

  # def set_plant
  #   @plant = Plant.find(params[:plant_id])
  # end
end
