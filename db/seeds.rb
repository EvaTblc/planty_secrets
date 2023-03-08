#Destroy
puts "Kill flowers and users..."
UserPlant.destroy_all
User.destroy_all
Plant.destroy_all

#User
puts "Planting users..."
chantal = User.create!(first_name: "Chantal", last_name: "Dubois", username: "chantal44", email: "chanchandu44@yahoo.com", password: "123456", latitude: 47.21636520138233, longitude: -1.5487715621281937)
file = File.open(Rails.root.join("db/seeds/images/user/chantal.jpg"))
chantal.photo.attach(io: file, filename: "chantal.jpg", content_type: "image/jpeg")

#Plant
puts "Planting flowers..."
aildesours = Plant.create!(name: "Ail des ours", species: "Fleur", idapi: "Allium ursinum")
file = File.open(Rails.root.join("db/seeds/images/plants/aildesours.jpg"))
aildesours.photo.attach(io: file, filename: "aildesours.jpg", content_type: "image/jpeg")
# latitude: 45.83309988858224, longitude:6.865046121653787,

menthesauvage = Plant.create!(name: "Menthe sauvage", species: "Plante", idapi: "Mentha Longifolia")
file = File.open(Rails.root.join("db/seeds/images/plants/menthesauvage.jpg"))
menthesauvage.photo.attach(io: file, filename: "menthesauvage.jpg", content_type: "image/jpeg")
# , latitude: 47.224167182693506, longitude:-1.5822665824085338

laurierrose = Plant.create!(name: "Laurier rose", species: "Arbuste", idapi: "Nerium Oleander")
file = File.open(Rails.root.join("db/seeds/images/plants/laurierrose.jpg"))
laurierrose.photo.attach(io: file, filename: "laurierrose.jpg", content_type: "image/jpeg")
# , latitude: 47.228254994354444, longitude:-1.5103718904801138

lavandepapillon = Plant.create!(name: "Lavande papillon", species: "Fleur", idapi: "Lavandula Stoechas")
file = File.open(Rails.root.join("db/seeds/images/plants/lavandepapillon.jpg"))
lavandepapillon.photo.attach(io: file, filename: "lavandepapillon.jpg", content_type: "image/jpeg")
# , latitude: 47.10258029446564, longitude:-2.073020656482966

cepesdebordeaux = Plant.create!(name: "Cèpes de bordeaux", species: "Champignon", idapi: "Boletus Edulis")
file = File.open(Rails.root.join("db/seeds/images/plants/cepesdebordeaux.jpg"))
cepesdebordeaux.photo.attach(io: file, filename: "cepesdebordeaux.jpg", content_type: "image/jpeg")
# , latitude: 47.29068697437262, longitude:-1.8705645513748972

boletbai = Plant.create!(name: "Bolet bai", species: "Champignon", idapi: "Boletus Badius")
file = File.open(Rails.root.join("db/seeds/images/plants/boletbai.jpg"))
boletbai.photo.attach(io: file, filename: "boletbai.jpg", content_type: "image/jpeg")
# , latitude: 47.264285211020066, longitude:-1.4326485455238807

girolles = Plant.create!(name: "Girolles", species: "Champignon", idapi: "Cantharellus Cibarius")
file = File.open(Rails.root.join("db/seeds/images/plants/girolles.jpg"))
girolles.photo.attach(io: file, filename: "girolles.jpg", content_type: "image/jpeg")
# , latitude: 47.18399650868597, longitude:-1.6227898045039126

pleurottes = Plant.create!(name: "Pleurottes", species: "Champignon", idapi: "Pleurotus ostreatus")
file = File.open(Rails.root.join("db/seeds/images/plants/pleurottes.jpg"))
pleurottes.photo.attach(io: file, filename: "pleurottes.jpg", content_type: "image/jpeg")
# , latitude: 47.2555931410825, longitude:-1.5001339154490447

bougainvilliers = Plant.create!(name: "Bougainvilliers", species: "Fleur", idapi: "Bougainvillea")
file = File.open(Rails.root.join("db/seeds/images/plants/bougainvilliers.jpg"))
bougainvilliers.photo.attach(io: file, filename: "bougainvilliers.jpg", content_type: "image/jpeg")
# , latitude: 47.223738182627336, longitude:-1.5232803422494496

dionee = Plant.create!(name: "Dionée", species: "Plante", idapi: "Dionaea Muscipula")
file = File.open(Rails.root.join("db/seeds/images/plants/dionee.jpg"))
dionee.photo.attach(io: file, filename: "dionee.jpg", content_type: "image/jpeg")
# , latitude: 35.370932367417105, longitude: -78.25060847153053

acanthe = Plant.create!(name: "Acanthe", species:"Fleur", idapi: "Acanthus")
file = File.open(Rails.root.join("db/seeds/images/plants/acanthe.jpg"))
acanthe.photo.attach(io: file, filename: "acanthe.jpg", content_type: "image/jpeg")
# , latitude: -1.5020549146854418, longitude: 18.296902973376646

agapanthe = Plant.create!(name: "Agapanthe", species:"Fleur", idapi: "Agapanthus")
file = File.open(Rails.root.join("db/seeds/images/plants/agapanthe.jpg"))
agapanthe.photo.attach(io: file, filename: "agapanthe.jpg", content_type: "image/jpeg")
# , latitude: -33.444270277988196, longitude: 21.086730458866853

agave = Plant.create!(name:"Agave", species:"Plante", idapi: "Agave")
file = File.open(Rails.root.join("db/seeds/images/plants/agave.jpg"))
agave.photo.attach(io: file, filename: "agave.jpg", content_type: "image/jpeg")
# , latitude: 25.29001613531338, longitude: -99.84694243426885

calypso = Plant.create!(name: "Calypso", species: "Fleur", idapi: "Calypso bulbosa")
file = File.open(Rails.root.join("db/seeds/images/plants/calypso.jpg"))
calypso.photo.attach(io: file, filename: "calypso.jpg", content_type: "image/jpeg")
# , latitude: 63.73124293251146, longitude: 27.60787460844805

eucalyptus = Plant.create!(name:"Eucalyptus", species: "Plante", idapi: "Eucalyptus")
file = File.open(Rails.root.join("db/seeds/images/plants/eucalyptus.jpg"))
eucalyptus.photo.attach(io: file, filename: "eucalyptus.jpg", content_type: "image/jpeg")
# , latitude: -41.23362798318087, longitude: 147.3080469339013

millepertuis = Plant.create!(name: "Millepertuis", species: "Fleur", idapi: "Hypericum")
file = File.open(Rails.root.join("db/seeds/images/plants/millepertuis.jpg"))
millepertuis.photo.attach(io: file, filename: "millepertuis.jpg", content_type: "image/jpeg")
# , latitude: 47.273771407427795, longitude: -1.2794516587527849

ortie = Plant.create!(name: "Ortie", species: "Plante", idapi: "Urtica")
file = File.open(Rails.root.join("db/seeds/images/plants/ortie.jpg"))
ortie.photo.attach(io: file, filename: "ortie.jpg", content_type: "image/jpeg")
# , latitude: 47.273813, longitude: -1.279665

aubepine = Plant.create!(name: "Aubépine", species: "Arbuste", idapi: "Crataegus")
file = File.open(Rails.root.join("db/seeds/images/plants/aubepine.jpg"))
aubepine.photo.attach(io: file, filename: "aubepine.jpg", content_type: "image/jpeg")
# , latitude: 47.131951955272505,longitude: -1.6941922066009414

reinedespres = Plant.create!(name: "Reine des prés", species: "Plante", idapi: "Filipendula ulmaria")
file = File.open(Rails.root.join("db/seeds/images/plants/reinedespres.jpg"))
reinedespres.photo.attach(io: file, filename: "reinedespres.jpg", content_type: "image/jpeg")
# , latitude: 47.127402318271855, longitude: -1.6744793619236116

camomille = Plant.create!(name: "Camomille", species: "Fleur", idapi: "Chamaemelum nobile")
file = File.open(Rails.root.join("db/seeds/images/plants/camomille.jpg"))
camomille.photo.attach(io: file, filename: "camomille.jpg", content_type: "image/jpeg")
# , latitude: 47.9305606391601, longitude: -2.675962086913407

puts "Associate user & flowers"

userplants1 = UserPlant.create!(user: chantal, plant: aubepine, favorite: true)
userplants2 = UserPlant.create!(user: chantal, plant: dionee, favorite: true)
userplants3 = UserPlant.create!(user: chantal, plant: cepesdebordeaux, favorite: true)
userplants4 = UserPlant.create!(user: chantal, plant: agave, favorite: true)
userplants5 = UserPlant.create!(user: chantal, plant: camomille, favorite: true)


puts "Everything is beautiful"
