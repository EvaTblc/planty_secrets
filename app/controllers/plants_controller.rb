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
    urlapi = "https://my-api.plantnet.org/v2/identify/all?include-related-images=true&no-reject=false&lang=fr&api-key=2b10alQZ3Bo1cji0jFGQg0EIUu"
    response = HTTParty.post(urlapi,
                              body: { images: File.new(params[:plant][:photo].tempfile) },
                              headers: { 'accept' => 'application/json' })

    # idapi = Nom scientifique de la plante // Si l'idapi existe en DB = pas de save, s'il n'existe pas = il save en DB
    list = response["results"]
    @top = list.first(5)

    @plant = Plant.find_or_create_by(idapi: response["results"][0]["species"]["scientificNameWithoutAuthor"]) do |plant|
      plant.name = response["results"][0]["species"]["commonNames"][0]
      plant.species = response["results"][0]["species"]["family"]["scientificNameWithoutAuthor"]
      plant.assign_attributes(params_plant)
    end

  #   if @plant.save
  #     @top.each do |plant|
  #       plant["species"]["commonNames"]
  #     end
  #   end
  end

  private

  def params_plant
    params.require(:plant).permit(:photo)
  end
end
