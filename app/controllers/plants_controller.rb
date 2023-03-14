require 'open-uri'

class PlantsController < ApplicationController
  def index
    if params[:query].present?
      @plants = Plant.search_by_name(params[:query])
    else
      @plants = current_user.plants
    end
    # @favorites = Favorite.where(user: current_user)
    @favorites_plants = current_user.favorites_plants

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
    @plant = Plant.new
    if params[:plant]
      response = plantnet_api
      five = response["results"].first(5)
      @top = []
      five.each do |plant|
        if Plant.find_by(idapi: plant["species"]["scientificNameWithoutAuthor"])
          found_plant = Plant.find_by(idapi: plant["species"]["scientificNameWithoutAuthor"])
          found_plant.score = ((plant["score"] * 100) / 1)
          found_plant.species = plant["species"]["scientificNameWithoutAuthor"]
          found_plant.save
        else
          found_plant = Plant.create(idapi: plant["species"]["scientificNameWithoutAuthor"], name: plant["species"]["commonNames"][0], species: plant["species"]["scientificNameWithoutAuthor"], score:  (plant["score"] * 100) / 1)
          file = URI.open(plant["images"][0]["url"]["o"])
          found_plant.photo.attach(io: file, filename: "new_plant.jpg", content_type: "image/jpeg")
          found_plant.save
        end
        @top << found_plant.id
      end
      redirect_to results_plants_path(top: @top)
    else
      redirect_to "/plants/new", status: :unprocessable_entity
    end
  end

  def results
    @resultstop = Plant.where(id: params[:top]).sort_by {|result| result[:score]}.reverse!
  end

  def show
    @plant = Plant.find(params[:id])
    @userplant = UserPlant.find_or_create_by(plant: @plant, user: current_user)
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
