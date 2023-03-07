class PlantsController < ApplicationController
  def new
    @plant = Plant.new
  end

  def create
    urlapi = "https://my-api.plantnet.org/v2/identify/all?include-related-images=true&no-reject=false&lang=fr&api-key=2b10alQZ3Bo1cji0jFGQg0EIUu"
    response = HTTParty.post(urlapi,
                              body: { images: File.new(params[:plant][:photo].tempfile) },
                              headers: { 'accept' => 'application/json' })
    # raise
    # idapi = Nom scientifique de la plante // Si l'idapi existe en DB = pas de save, s'il n'existe pas = il save en DB
    @plant = Plant.find_or_create_by(idapi: response["results"][0]["species"]["scientificNameWithoutAuthor"]) do |plant|
      plant.name = response["results"][0]["species"]["commonNames"][0]
      plant.species = response["results"][0]["species"]["family"]["scientificNameWithoutAuthor"]
      plant.assign_attributes(params_plant)
    end
    @plant.save
  end

  private

  def params_plant
    params.require(:plant).permit(:photo)
  end
end
