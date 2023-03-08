require 'open-uri'

class PlantsController < ApplicationController
  def index
    if params[:query].present?
      @plants = Plant.search_by_name(params[:query])
    else
      @plants = current_user.plants
    end
    @favorites = current_user.plants.includes(:user_plants).where(user_plants: { favorite: true } )
  end

  def new
    @plant = Plant.new
  end

  def create
    api_key = "api-key=2b10alQZ3Bo1cji0jFGQg0EIUu"
    urlapi = "https://my-api.plantnet.org/v2/identify/all?include-related-images=true&no-reject=false&lang=fr&#{api_key}"
    response = HTTParty.post(urlapi,
                              body: { images: File.new(params[:plant][:photo].tempfile) },
                              headers: { 'accept' => 'application/json' })

    # idapi = Nom scientifique de la plante // Si l'idapi existe en DB = pas de save, s'il n'existe pas = il save en DB


    @plant = Plant.find_or_create_by(idapi: response["results"][0]["species"]["scientificNameWithoutAuthor"]) do |plant|
      plant.name = response["results"][0]["species"]["commonNames"][0]
      plant.species = response["results"][0]["species"]["family"]["scientificNameWithoutAuthor"]
      plant.assign_attributes(params_plant)
    end

      list = response["results"]
      five = list.first(5)

      @top = []
      five.each do |plant|
        new_plant = Plant.create!(idapi: plant["species"]["scientificNameWithoutAuthor"], name: plant["species"]["commonNames"][0], species: plant["species"]["family"]["scientificNameWithoutAuthor"])
        file = URI.open(plant["images"][0]["url"]["o"])
        new_plant.photo.attach(io: file, filename: "new_plant.jpg", content_type: "image/jpeg")
        new_plant.save
        @top << new_plant
      end

    if @plant.save
      redirect_to results_plants_path(top: @top)
    else
      render :create, status: :unprocessable_entity
    end
  end

  def results
    @results = params[:top]

    @resultstop = []
    @results.map do |plant|
      top5 = Plant.find(plant)
      @resultstop << top5
    end

  end

  def show
    @plant = Plant.find(params[:id])
  end

  private

  def params_plant
    params.require(:plant).permit(:photo, :top)
  end
end
