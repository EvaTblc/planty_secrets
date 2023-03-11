require 'open-uri'

class PlantsController < ApplicationController
  def index
    if params[:query].present?
      @plants = Plant.search_by_name(params[:query])
    else
      @plants = current_user.plants
    end
    @favorites = current_user.plants.includes(:user_plants).where(user_plants: { favorite: true })

    respond_to do |format|
      format.html
      format.text { render partial: "plants/list", locals: { plants: @plants }, formats: [:html] }
    end

  end

  def new
    @plant = Plant.new
  end

  def map
  end

  def create
    response = plantnet_api
    five = response["results"].first(5)
    @top = []
    five.each do |plant|
      Plant.find_or_create_by(idapi: plant["species"]["scientificNameWithoutAuthor"]) do |user_plant|
        user_plant.name = plant["species"]["commonNames"][0]
        user_plant.species = plant["species"]["scientificNameWithoutAuthor"]
        user_plant.score = ((plant["score"] * 100) / 1)
        file = URI.open(plant["images"][0]["url"]["o"])
        user_plant.photo.attach(io: file, filename: "new_plant.jpg", content_type: "image/jpeg")
        user_plant.save
        @top << user_plant.id
      end
    end
    redirect_to results_plants_path(top: @top)
  end

  def results
    @resultstop = Plant.where(id: params[:top])
  end

  def show
    @plant = Plant.find(params[:id])
    @userplant = UserPlant.create(plant: @plant, user: current_user, favorite: false)
  end

  private

  def params_plant
    params.require(:plant).permit(:photo, :top, :plant_id)
  end

  def plantnet_api
    urlapi = "https://my-api.plantnet.org/v2/identify/all?include-related-images=true&no-reject=false&lang=fr&api-key=#{ENV['PLANTNET_API_KEY']}"
    HTTParty.post(urlapi,
                  body: { images: File.new(params[:plant][:photo].tempfile)},
                  headers: { 'accept' => 'application/json' })
  end

end
