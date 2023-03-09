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
                              body: { images: File.new(params[:plant][:photo].tempfile)},
                              headers: { 'accept' => 'application/json' })

    # idapi = Nom scientifique de la plante // Si l'idapi existe en DB = pas de save, s'il n'existe pas = il save en DB
    @plant = Plant.find_or_create_by(idapi: response["results"][0]["species"]["scientificNameWithoutAuthor"]) do |plant|
      plant.name = response["results"][0]["species"]["commonNames"][0]
      plant.species = response["results"][0]["species"]["family"]["scientificNameWithoutAuthor"]
      plant.assign_attributes(params_plant)
    end
    # binding.pry
    photo_user = @plant.photo.key

    five = response["results"].first(5)

    @top = []
    five.each do |plant|

      new_plant = Plant.find_or_create_by(idapi: plant["species"]["scientificNameWithoutAuthor"]) do |user_plant|
        new_plant.name = user_plant["species"]["commonNames"][0],
        new_plant.species = user_plant["family"]["scientificNameWithoutAuthor"],
        new_plant.score = ((user_plant["score"] * 100) / 1)
      end
      file = URI.open(plant["images"][0]["url"]["o"])
      new_plant.photo.attach(io: file, filename: "new_plant.jpg", content_type: "image/jpeg")
      new_plant.save
      @top << new_plant
    end

    if @plant.save
      redirect_to results_plants_path(top: @top, photo: photo_user)
    else
      render :create, status: :unprocessable_entity
    end
  end

  def results
    @photo = params[:photo]

    @resultstop = Plant.where(id: params[:top])
  end

  def show
    @plant = Plant.find(params[:id])
  end

  private

  def params_plant
    params.require(:plant).permit(:photo, :top)
  end
end
