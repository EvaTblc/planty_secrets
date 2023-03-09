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
aildesours = Plant.create!(name: "Ail des ours", species: "Fleur", idapi: "Allium ursinum", infos: "L'ail des ours est assez facile à repérer par son odeur caractéristique, d’autant plus qu’il pousse généralement en vastes colonies. Ses longues feuilles sont pointues à leur extrémité (on dit qu’elles sont lancéolées) et sont portées par des pétioles (des tiges) également longs. Ceux-ci sortent directement de terre avec une seule feuille et forment une touffe. La floraison est d’un blanc pur, formée de petites fleurs en étoiles regroupées en ombelles. Une fois que la floraison est terminée, les feuilles commencent à jaunir, comme souvent chez les plantes à bulbes.", medecine: "L’ail des ours est dépuratif et détoxifiant: il empêche les dépôts de cholestérol de se former dans le sang, élimine les toxines et les lipides et fluidifie le sang. En plus, il possède des vertus antiseptiques et antibiotiques!", trouver: "Cette jolie plante herbacée sauvage pousse spontanément dans les sous-bois, et les forêts de hêtres, de charmes ou de chênes, dans des zones plutôt humides et ombragées. On le trouve beaucoup en montagne, jusqu’à 1600 m d’altitude. L’ail des ours est très fréquent dans le Grand-Est et dans tous les massifs montagneux, moins courant dans le Sud hormis dans les Pyrénées.")
file = File.open(Rails.root.join("db/seeds/images/plants/aildesours.jpg"))
aildesours.photo.attach(io: file, filename: "aildesours.jpg", content_type: "image/jpeg")
# latitude: 45.83309988858224, longitude:6.865046121653787,

menthesauvage = Plant.create!(name: "Menthe sauvage", species: "Plante", idapi: "Mentha Longifolia")
file = File.open(Rails.root.join("db/seeds/images/plants/menthesauvage.jpg"))
menthesauvage.photo.attach(io: file, filename: "menthesauvage.jpg", content_type: "image/jpeg")
# , latitude: 47.224167182693506, longitude:-1.5822665824085338

laurierrose = Plant.create!(name: "Laurier rose", species: "Arbuste", idapi: "Nerium Oleander", infos: "En pleine terre, cet arbuste atteint entre 2 et 4 m de haut, les variétés naines – comme ‘Petite Salmon’ – parfaites en pot, atteignent au plus 80 cm, les variétés compactes mesurent 80 cm à 1,50 m. Ses grandes touffes de feuilles ovales, étroites, coriaces et vert foncé, parfois panachées, assurent une touche de verdure toute l’année. Ces feuilles persistantes sont distribuées par 3 autour des rameaux (on dit qu’elles sont verticillées), parfois seulement opposées par 2. Brillantes sur l’endroit, elles sont d’un vert plus clair et plus terne sur l’envers.", medecine: "Toute la plante est très toxique et très amère à cause de la présence d’oléandrine, une substance cardio-toxique, même les herbivores les plus voraces comme la chèvre, n’y touchent pas. Elle doit être placée hors de portée des enfants et des animaux : l’ingestion d’une petite quantité de feuilles ou de tiges peut entraîner vomissements, vertiges, douleurs abdominales, inconscience, voire être fatale. Il est même déconseillé de l’utiliser en paillis pour votre jardin. L’eau dans laquelle a trempé une tige ou des feuilles de laurier-rose est également dangereuse, attention notamment à vos animaux.", trouver:"C’est un arbuste ou un petit arbre persistant, originaire du pourtour méditerranéen, de l’Afrique du Nord jusqu’en Asie Mineure, et d’Asie (Inde et Japon). Il y pousse notamment au bord des cours d’eau.")
file = File.open(Rails.root.join("db/seeds/images/plants/laurierrose.jpg"))
laurierrose.photo.attach(io: file, filename: "laurierrose.jpg", content_type: "image/jpeg")
# , latitude: 47.228254994354444, longitude:-1.5103718904801138

lavandepapillon = Plant.create!(name: "Lavande papillon", species: "Fleur", idapi: "Lavandula Stoechas", infos: "Un feuillage gris argenté persistant et un parfum toute l’année, des fleurs bleu mauve la moitié de l’année, la lavande est une de ces plantes faciles à vivre qui peut fleurir même sous les pires canicules.", medecine: "La lavande est bien connue pour ses effets relaxants. L’usage était d’ailleurs courant d’en disposer quelques épis dans le bain pour se détendre et se préparer au sommeil. Mais c’est en usage interne principalement que l’on utilise la lavande comme anti-stress. Elle sera utilisée en cas d’irritabilité, d’insomnies, d’hyper-émotivité, d’anxiété. La lavande peut même être utilisée pour aider un bébé à dormir, en massage d’huile essentielle diluée dans de l’huile végétale.", trouver: "La lavande pousse spontanément en Provence, entre 600 et 1400 mètres d’altitude. Elle y est également cultivée depuis le XIXe siècle, à l’origine pour fournir les distilleries qui la transforment en huile essentielle, un nectar ô combien précieux pour les parfumeurs. Il l’est malheureusement moins aujourd’hui, remplacé le plus souvent par des essences artificielles.")
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

eucalyptus = Plant.create!(name:"Eucalyptus", species: "Plante", idapi: "Eucalyptus", infos: "Aussi appelé gommier, par rapport à la gomme résineuse rouge qui s’écoule de ses blessures, l’eucalyptus est un arbre ou un arbuste buissonnant. La hauteur de l’eucalyptus à maturité varie selon les espèces de 3 à 60 m, voire plus, pouvant mesurer pour certaines plus de 90 m de haut, mais leur silhouette reste délicate, presque gracile. Le saviez-vous ? Les plus grands arbres de la Terre sont des eucalyptus : le record de 132 mètres est détenu par un eucalyptus australien, battant le record de 113 m du séquoia Redwood.", medicine:"L'eucalyptus est surtout réputé pour ses bienfaits sur l'appareil respiratoire : nez, gorge, oreilles, poumons. Anti-inflammatoire et anti-infectieux, il possède un effet fluidifiant sur les sécrétions bronchiques (expectorant).", trouver: "Repas favori des koalas, l'eucalyptus est originaire de Tasmanie et d'Australie. Il en existe environ 100 espèces différentes, allant du simple arbuste à l’arbre de très grande taille. Seules quelques-unes ont été introduites massivement en Europe, surtout dans le bassin méditerranéen. La plus connue, E. Globulus, était surnommée « arbre à fièvre » par les Aborigènes, qui l'utilisaient contre les fièvres et les infections. Ses feuilles renferment une essence aromatique riche en cinéole (eucalyptol) qui leur confère de puissantes propriétés antiseptiques.")
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

aubepine = Plant.create!(name: "Aubépine", species: "Arbuste", idapi: "Crataegus", infos: "Petit arbre arrondi qui peut mesurer jusqu’à 12 mètres de hauteur mais reste généralement aux alentours de 4 mètres, l’aubépine affiche un tronc court et une silhouette très ramifiée. Certaines espèces sont épineuses. Les feuilles caduques sont ovales, brillantes, parfois profondément lobées, et chez certaines espèces, le feuillage prend de sublimes couleurs automnales à l’arrivée du froid.", medecine: "Grâce aux progrès de la science, de nombreux principes actifs de l'aupépine ont pu être identifiés au sein des fleurs et des sommités fleuries. Ces composés présentent une activité antioxydante, cardiotonique, cardioprotectrice et apaisante. C’est pourquoi l’aubépine est aujourd’hui préconisée pour lutter contre les palpitations, l’hypertension, la nervosité, l’anxiété, ainsi que les troubles du sommeil.", trouver: "L’aubépine est un arbuste qui se développe dans différents environnements et dans de nombreuses régions du monde. Elle est commune en Asie occidentale, en Afrique du Nord, ainsi qu’en Europe centrale et nordique. En France, l’aubépine se retrouve dans les bois clairs, les lisières, les haies ou encore les coteaux. Toutefois, elle a une préférence pour les terrains calcaires avec une exposition ensoleillée.")
file = File.open(Rails.root.join("db/seeds/images/plants/aubepine.jpg"))
aubepine.photo.attach(io: file, filename: "aubepine.jpg", content_type: "image/jpeg")
# , latitude: 47.131951955272505,longitude: -1.6941922066009414

reinedespres = Plant.create!(name: "Reine des prés", species: "Plante", idapi: "Filipendula ulmaria", infos: "La reine des prés est une plante herbacée. Ses tiges sont dressées, anguleuses, veinées de rouge et portant des feuilles qui sont alternes et découpées – vert foncé dessus, et blanches dessous. Ses fleurs sont blanches et dégagent un parfum doux et agréable. Elles sont regroupées en corymbes irréguliers. Enfin, ses fruits sont en grappes et s’enroulent sur eux-mêmes, ce qui a inspiré le nom de la plante (spirée).", medecine: "La reine des prés, c’est une aspirine naturelle qui permet de profiter de ses avantages – sans effets secondaires potentiellement néfastes, comme les ulcères par exemple. Elle est très efficace en infusion, mais son goût est particulier : n’hésitez pas à l’associer à d’autres plantes, ou à ajouter du miel pour rendre son goût plus agréable. En cure détox, elle existe sous forme de gélules ou d’ampoules – et est souvent associée à d’autres plantes. Précautions d’emploi : la reine des prés est déconseillée aux personnes souffrant d’allergies aux dérivés salicylés – ou se trouvant sous traitement anticoagulant.", trouver: "La reine des prés pousse en Europe. On la retrouve partout, sauf dans les régions méridionales. Elle affectionne particulièrement les prairies humides, les fossés et les tourbières.")
file = File.open(Rails.root.join("db/seeds/images/plants/reinedespres.jpg"))
reinedespres.photo.attach(io: file, filename: "reinedespres.jpg", content_type: "image/jpeg")
# , latitude: 47.127402318271855, longitude: -1.6744793619236116

camomille = Plant.create!(name: "Camomille", species: "Fleur", idapi: "Chamaemelum nobile")
file = File.open(Rails.root.join("db/seeds/images/plants/camomille.jpg"))
camomille.photo.attach(io: file, filename: "camomille.jpg", content_type: "image/jpeg")
# , latitude: 47.9305606391601, longitude: -2.675962086913407

menthe = Plant.create!(name: "Menthe", species: "Plante", idapi: "", infos: "")

puts "Associate user & flowers"

userplants1 = UserPlant.create!(user: chantal, plant: aubepine, favorite: false)
userplants2 = UserPlant.create!(user: chantal, plant: dionee, favorite: true)
userplants3 = UserPlant.create!(user: chantal, plant: cepesdebordeaux, favorite: false)
userplants4 = UserPlant.create!(user: chantal, plant: agave, favorite: true)
userplants5 = UserPlant.create!(user: chantal, plant: camomille, favorite: true)


puts "Everything is beautiful"
