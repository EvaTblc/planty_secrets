#Destroy
puts "Kill flowers and users..."

Bookmark.destroy_all
Favorite.destroy_all
PlantLocation.destroy_all
List.destroy_all
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

#Menthe verte
mentheverte = Plant.create!(name: "Menthe verte",
  species: "Plante",
  idapi: "Mentha spicata",
  infos: "La menthe verte, du nom botanique Mentha spicata, est une plante aromatique vivace s'étalant, odorante à feuilles ovales et dentées.",
  fun_facts: "Hadès, Dieu des ténèbres fit la cour à la nymphe Minthé, sa femme Persephone, jalouse la transforma en plant de menthe. Ne pouvant la ramener à la vie, Hadès lui donna son parfum.",
  fun_facts2: "Déjà connue des Égyptiens, la menthe (dont des fragments ont été retrouvés dans des pyramides du Ier millénaire avant notre ère) a traversé les siècles, tant elle a été appréciée pour ses bienfaits en cuisine mais également en médecine.",
  fun_facts3: "Les Grecs pensaient qu'elle était aphrodisiaque et interdisaient à leurs soldats d'en consommer tant elle incitait à l'amour et diminuait le courage …",
  entretien: "Niveau de soin : très facile",
  arrosage: "Normal",
  composition_du_sol: "Normal",
  humidite_du_sol: "Normal",
  temperature_min: "-20°C",
  cuisine: "Très aromatiques, les feuilles de menthe sont appréciées en cuisine. Pour faire une infusion à la menthe : retirer quelques feuilles de menthe du pied et de les nettoyer avant de les jeter dans un volume d’eau bouillante. Pour un thé à la menthe, ajoutez du thé gunpowder et un peu de sucre.",
  taille: "0,6 m",
  exposition: "Soleil",
  floraison: "Juillet-Août",
  toxicite: "Non toxique",
  trouver: "On la trouve dans les fossés, les lieux humides, les jardins arrosés",
  medecine: "Troubles digestifs : efficace en cas de constipation ou de diarrhée",
  medecine2: "Troubles urinaires : effet diurétique",
  medecine3: "Toux et rhume : apaisante",
  medecine4: "Antidouleur : douleurs articulaires, musculaires et maux de tête",
  medecine5: "Système nerveux : insomnie, nervosité, palpitation, migraine, névralgie, vertige",
  medecine6: "Elle combat aussi mauvaise haleine et aérophagie")

file = File.open(Rails.root.join("db/seeds/images/plants/menthe_verte.jpg"))
mentheverte.photo.attach(io: file, filename: "menthe_verte.jpg", content_type: "image/jpeg")

#Menthe poivrée
menthepoivree = Plant.create!(name: "Menthe poivrée",
  species: "Plante",
  idapi: "Mentha × piperita",
  infos: "La menthe poivrée Mentha x piperita est une plante au port étalé qui disparaît l'hiver et qui résulterait d'un croisement entre la menthe verte (Mentha spicata) et la menthe aquatique (Mentha aquatica). La menthe poivrée a une odeur aromatique et pénétrante.",
  fun_facts: "La menthe poivrée est le résultat d'une hybridation naturelle entre la menthe aquatique et la menthe verte.",
  fun_facts2: "La menthe poivrée se conserve 5 à 6 ans.",
  entretien: "Niveau de soin : très facile",
  arrosage: "Normal",
  composition_du_sol: "Normal, riche en humus, sableux",
  humidite_du_sol: "Humide, normal",
  temperature_min: "-20°C",
  cuisine: "L'huile essentielle de Menthe Poivrée est une huile parfaite pour donner une note rafraîchissante et mentholée à tous vos desserts fruités ou chocolatés. Vous pouvez également l'ajouter à vos cocktails festifs (comme le fameux Mojito) ainsi qu'à vos jus de fruits maison. La menthe poivrée ciselée peut être intégrée dans les farces. Elle parfume volontiers les boulettes de viande d'agneau.",
  taille: "0,6 m",
  exposition: "Soleil",
  floraison: "Juillet-Août",
  toxicite: "Non toxique",
  toxicite2: "Attention à l'huile essentielle: Une inhalation excessive d'huile essentielle de Menthe Poivrée et plus particulièrement de menthol peut provoquer des nausées, des aigreurs d'estomac, etc...",
  trouver: "Cette plante est commercialisée chez les commerçants physiques comme les pharmacies, les parapharmacies, les magasins bios ou les herboristes. On la trouve aussi dans les bords de rivière, étangs et mares, les fossés et aussi les prairies.",
  medecine: "Démangeaisons : apaise (aromathotérapie)",
  medecine2: "Maux de tête : calme (huile essentielle sur les tempes)",
  medecine3: "Animaux de companie: Gale : verser dans 1l d’eau bouillante de la menthe poivrée, du thym et du serpolet. Après 20 min, filtrer et ajouter 10cl de vinaigre de cidre. Lui appliquer cette lotion en massage.")

file = File.open(Rails.root.join("db/seeds/images/plants/menthepoivree.jpg"))
menthepoivree.photo.attach(io: file, filename: "menthepoivree.jpg", content_type: "image/jpeg")

#Menthe odorante
mentheodorante = Plant.create!(name: "Menthe Odorante",
  species: "Plante",
  idapi: "Mentha suaveolens",
  infos: "La menthe odorante ou menthe à feuilles rondes (Mentha Suaveolens) est une plante herbacée de la famille des Lamiacées. Autres appellations : menthe suave, baume sauvage, menthastre, menthe de cheval, menthe simple, ou menthe pomme (en jardinerie).",
  fun_facts: "Ses feuilles dégagent une odeur de pomme",
  entretien: "Niveau de soin : très facile",
  arrosage: "Normal",
  composition_du_sol: "Normal, frais",
  humidite_du_sol: "Humide, normal",
  temperature_min: "-15°C",
  cuisine: "Très utilisée pour la cuisine. Parfaite à mettre dans le taboulé Les feuilles sont plutôt sucrées.",
  taille: "0,1 à 0,8 m",
  exposition: "Mi-ombragé ou ombragé",
  floraison: "Juillet à Septembre",
  toxicite: "Non toxique",
  toxicite2: "Cette plante peut avoir un effet hypertenseur. Son huile essentielle est neurotoxique chez les enfants en bas âge, du fait de sa richesse en cétones.",
  trouver: "Cette plante se recontre souvent au bord des pièces d'eau ou des ruisseaux, dans les fossés, les prairies humides, bois humides, ou au bord des chemins.",
  medecine: "En usage interne :  La menthe à feuilles rondes est une plante médicinale digestive, stimulante de l'estomac, anti oxydante et anti infectieuse. On la conseillera contre les fermentations digestives (gaz, ballonnements, etc.).",
  medecine2: "En usage externe :  L'huile essentielle de menthe à feuilles rondes est un excellent insecticide, qu'on pourrait utiliser comme anti poux. Mais attention à ne pas l'utiliser chez les enfants en bas âge.")

file = File.open(Rails.root.join("db/seeds/images/plants/mentheafeuillesrondes.jpg"))
mentheodorante.photo.attach(io: file, filename: "mentheafeuillesrondes.jpg", content_type: "image/jpeg")

#Menthe à feuilles rondes
mentheafeuillesrondes = Plant.create!(name: "Menthe à feuilles rondes",
  species: "Plante",
  idapi: "Mentha × rotundifolia",
  infos: "La menthe odorante ou menthe à feuilles rondes (Mentha Suaveolens) est une plante herbacée de la famille des Lamiacées. Autres appellations : menthe suave, baume sauvage, menthastre, menthe de cheval, menthe simple, ou menthe pomme (en jardinerie).",
  fun_facts: "Ses feuilles dégagent une odeur de pomme",
  entretien: "Niveau de soin : très facile",
  arrosage: "Normal",
  composition_du_sol: "Normal, frais",
  humidite_du_sol: "Humide, normal",
  temperature_min: "-15°C",
  cuisine: "Très utilisée pour la cuisine. Parfaite à mettre dans le taboulé Les feuilles sont plutôt sucrées.",
  taille: "0,1 à 0,8 m",
  exposition: "Mi-ombragé ou ombragé",
  floraison: "Juillet à Septembre",
  toxicite: "Non toxique",
  toxicite2: "Cette plante peut avoir un effet hypertenseur. Son huile essentielle est neurotoxique chez les enfants en bas âge, du fait de sa richesse en cétones.",
  trouver: "Cette plante se recontre souvent au bord des pièces d'eau ou des ruisseaux, dans les fossés, les prairies humides, bois humides, ou au bord des chemins.",
  medecine: "En usage interne :  La menthe à feuilles rondes est une plante médicinale digestive, stimulante de l'estomac, anti oxydante et anti infectieuse. On la conseillera contre les fermentations digestives (gaz, ballonnements, etc.).",
  medecine2: "En usage externe :  L'huile essentielle de menthe à feuilles rondes est un excellent insecticide, qu'on pourrait utiliser comme anti poux. Mais attention à ne pas l'utiliser chez les enfants en bas âge.")

file = File.open(Rails.root.join("db/seeds/images/plants/mentheafeuilleronde2.jpg"))
mentheafeuillesrondes.photo.attach(io: file, filename: "mentheafeuilleronde2.jpg", content_type: "image/jpeg")

#Menthe sylvestre
menthesylvestre = Plant.create!(name: "Menthe Sylvestre",
  species: "Plante",
  idapi: "Mentha longifolia",
  infos: "La menthe sylvestre ou menthe à feuilles longues (Mentha longifolia), est une espèce de plantes herbacées de la famille des Lamiacées. De toutes les espèces de menthe, c'est celle qui a la plus large distribution géographique, s'étendant de l'ouest de l'Europe à l'Asie centrale et l'Afrique du Sud.",
  fun_facts: "Ses feuilles dégagent une odeur de pomme",
  entretien: "Niveau de soin : très facile",
  arrosage: "Chaque semaine",
  composition_du_sol: "Argilo-calcaire, riche en humus ou normal",
  humidite_du_sol: "Humide, normal",
  temperature_min: "-5°C",
  cuisine: "Les feuilles peuvent être utilisées dans des salades, finement hachées comme aromatiques. Toujours hachées, ces feuilles peuvent être incorporées dans des farces. Les polonais les utilisent pour aromatiser la farce de certains types de raviolis, les pierogi russkie. La menthe sylvestre a un goût plus sauvage qui rappelle un mélange de menthe, de thym et de sarriette, ce qui la prédispose aux viandes fortes comme le gibier ou le mouton, à la cuisine traditionnelle et aux liqueurs au goût très personnelles",
  taille: "0,6 à 0,8 m",
  exposition: "Mi-ombragé ou soleil",
  floraison: "Mai à Octobre",
  toxicite: "Son huile essentielle est neurotoxique chez les enfants en bas âge, du fait de sa richesse en cétones, et notamment en pulégone et en menthone.",
  toxicite2: "Toxique pour les chats",
  trouver: "Cette plante se recontre souvent dans les zones humides comme les fossés humides, bois humides, ruisseaux etc... mais aussi les jardins et les endroits sauvages. On la retrouve à peu près partout, sauf dans le Nord (Nord Ouest et Nord est) où elle est absente ou plus rare. Elle est plus fréquente dans les régions de moyenne montagne",
  medecine: "En usage interne :  La menthe à feuilles longue (ou menthe sylvestre) est une plante médicinale digestive, anti fongique et anti infectieus.",
  medecine2: "En usage externe :  L'huile essentielle de menthe sylvestre peut être employée par voie externe sur les mycoses cutanées. Mais attention à ne pas l'utiliser chez les enfants en bas âge ni chez les femmes enceintes.")

file = File.open(Rails.root.join("db/seeds/images/plants/menthesylvestre.jpg"))
menthesylvestre.photo.attach(io: file, filename: "menthesylvestre.jpg", content_type: "image/jpeg")

#Menthe aquatique
mentheaquatique = Plant.create!(name: "Menthe Aquatique",
  species: "Plante",
  idapi: "Mentha aquatica",
  infos: "La menthe aquatique, Mentha aquatica, est une plante aquatique semi-immergée qui présente un feuillage odorant et de jolies fleurs mauves qui attirent les insectes tout l'été. Son goût est cependant moins appréciée que celui de la menthe classique.",
  fun_facts: "Ses feuilles dégagent une odeur de bonbon",
  entretien: "Niveau de soin : facile",
  arrosage: "Régulier",
  composition_du_sol: "Normal",
  humidite_du_sol: "Très humide",
  temperature_min: "-20°C",
  cuisine: "Elle peut accompagner des salades, des viandes ou parfumés vos potages particulièrement dans les régions méridionales. Des boissons sont préparées avec de la menthe aquatique, sa fraîcheur est très appréciée, notamment avec le sirop, mais aussi des liqueurs, des apéritifs, elle entre dans la composition de nombreux cocktails.",
  taille: "0,4 à 0,9 m",
  exposition: "Soleil ou mi-ombragé",
  floraison: "Juillet à Septembre",
  toxicite: "Toxique à forte dose",
  trouver: "La Menthe aquatique est une plante des zones humides et lieux frais, près des eaux douces, fossés, mares, ruisseaux rivières de l'ensemble du territoire de l'Europe sauf l'extrême nord, le nord-ouest de l'Asie et le nord-ouest de l'Afrique. C'est une espèce de lumière ou de demi-ombre, croissant dans la vase, les argiles et les tourbes",
  medecine: "Digestion : améliore, apaise",
  medecine2: "Maux de gorges, aphtes et les douleurs dentaires : apaise (menthe en gargarisme)",
  medecine3: "Coupures : application externe",
  medecine4: "Tonus, calme les nerfs (utilisée en infusion)",
  medecine5: "Aide avec les migraines, les insomnies")

file = File.open(Rails.root.join("db/seeds/images/plants/mentheaquatique.jpg"))
mentheaquatique.photo.attach(io: file, filename: "mentheaquatique.jpg", content_type: "image/jpeg")

#Menthe des champs
menthedeschamps = Plant.create!(name: "Menthe des Champs",
  species: "Plante",
  idapi: "Mentha arvensis",
  infos: "La menthe des champs (Mentha Arvensis) est une plante champêtre vivace originaire des régions tempérées d'Europe et d'Asie centrale et occidentale, à l'est de l'Himalaya et de la Sibérie. Parfois appelée menthe sauvage, sa culture est facile et elle propose des principes actifs utiles en phytothérapie.",
  fun_facts: "Mentha dérive du nom de la nymphe Mintha dont Hadès, le dieu des enfers, tomba éperdument amoureux. Perséphone, sa femme, en fut tellement jalouse qu'elle piétina sauvagement sa rivale jusqu'à la réduire en pièces puis la transforma en une plante aromatique : la menthe !",
  fun_facts2: "On a retrouvé la menthe dans un tombeau égyptien datant de l'an -1000.",
  entretien: "Niveau de soin : Facile",
  arrosage: "Normal",
  composition_du_sol: "Bien drainé, légèrement acide",
  humidite_du_sol: "Humide",
  temperature_min: "-20°C",
  cuisine: "Feuilles crues hachées dans les salades ou dans divers plats (Taboulé par exemple). Aromatise les desserts (crèmes, salades de fruits, sorbets, glaces, ...). Sauce à la menthe (courante en pays anglo-saxons). Tisanes ou en boissons froides (Thé à la menthe Marocain)",
  taille: "0,1 à 0,6 m",
  exposition: "Soleil",
  floraison: "Juin à Octobre",
  toxicite: "Ne pas utiliser chez la femme enceinte",
  toxicite2: "Le fruit de cette plante est toxique et peut être mortel s'il est ingéré en grande quantité. Il est particulièrement dangereux pour les enfants, qui peuvent confondre les fruits avec les raisins.",
  trouver: "L'espèce Mentha arvensis est une menthe qui pousse dans des milieux anthropiques (habitats artificiels ou perturbés), sur les rives des rivières, les prairies, les fossés, les lacs et dans les marécages.",
  medecine: "Propriétés antiseptiques",
  medecine2: "Bénéfique pour la digestion",
  medecine3: "Traitement de la fièvre, maux de tête, troubles digestifs (en thé)")
file = File.open(Rails.root.join("db/seeds/images/plants/menthedeschamps.jpg"))
menthedeschamps.photo.attach(io: file, filename: "menthedeschamps.jpg", content_type: "image/jpeg")

#Basilic
basilic = Plant.create!(name: "Basilic",
  species: "Plante",
  idapi: "Ocimum basilicum",
  infos: "Petite plante au feuillage très odorant, le basilic est la star des aromates en cuisine. Adapté à la culture en pot, il trouve sa place tant à l’extérieur dans le jardin qu’à l’intérieur, dans la maison.",
  fun_facts: "Originaire d'Afrique et du sud de l'Inde, le basilic est une herbe sacrée dans la tradition hindoue et est utilisé dans les cérémonies funéraires en Inde et en Égypte.",
  fun_facts2: "Le nom basilic vient du grec 'basileus' ou 'roi'.",
  fun_facts3: "Est également attribué au mot 'basilic', un dragon légendaire qui pouvait tuer une personne d'un seul regard.",
  entretien: "Niveau de soin : Facile",
  arrosage: "Quotidien en période sèche et 1 fois par semaine en période fraîche",
  composition_du_sol: "Bien drainé et léger, normaux, sableux",
  humidite_du_sol: "Normal",
  temperature_min: "10°C",
  cuisine: "Vous pouvez déguster le basilic en tant qu’aromate, frais en salade. En pesto de basilic ou bien en velouté de basilic : tout autant de recettes dans lesquelles vous pourrez profiter de cette plante ! Si vous aimez les plats dont la saveur est gastronomique, le basilic s’associera parfaitement avec des langoustines.",
  taille: "0,2 à 0,5 m",
  exposition: "Mi-ensoleillé, soleil",
  floraison: "Septembre à Novembre",
  toxicite: "Une consommation trop élevée d'huile essentielle de basilic peut s'avérer cancérigène",
  toxicite2: "Limitée pour les personnes ayant des traitements anticoagulant",
  trouver: "Le basilic pousse dans les endroits très ensoleillés, les climats chauds et à l'abris du vent. Il ne resiste pas au gel, il vaut mieux le garder en pot et le sortir lorsque le temps est clément.",
  medecine: "La qualité de ses nutriments rend le basilic bénéfique à notre corps. La vitamine K1 présente dans ce produit est parfaite pour la coagulation sanguine et pour prévenir des troubles cardio-vasculaires, ou encore renouveler le tissu osseux.",
  medecine2: "Antioxydant : sa grande richesse en antioxydants la rendrait efficace pour lutter contre les méfaits des radicaux libres responsables du vieillissement prématuré des cellules et de la survenue de maladies de peau.",
  medecine3: "Anti-infectieux : le basilic a des propriétés antivirales, fébrifuge et toniques, ce qui le rend particulièrement efficace pour lutter contre les petit virus et infections.",
  medecine4: "Anti ballonnement et crampes d'estomac : mettre une dizaine de feuilles fraîches de basilic dans une casserole d'eau chaude pour infusion. Une tisane par jour après manger de temps en temps soulagera.",
  medecine5: "L'huile essentielle de basilic : indiquée en cas de contractures musculaires (en mélange avec une huile végétale à appliquer sur la peau), d'arthrite, de céphalée ou de règles douloureuses. Elle renforce du système immunitaire et est recommandée contre les infections des voies respiratoires.",
  medecine6: "L'huile essentielle de basilic tropical : recommandée en cas d'anxiété, d'insomnie ou de tension nerveuse ainsi que pour les troubles digestifs")
file = File.open(Rails.root.join("db/seeds/images/plants/basilic.jpg"))
basilic.photo.attach(io: file, filename: "basilic.jpg", content_type: "image/jpeg")

#Basilic Americain
ocimumamericanum = Plant.create!(name: "Basilic Americain",
  species: "Plante",
  idapi: "Ocimum americanum",
  infos: "Petite plante au feuillage très odorant, le basilic est la star des aromates en cuisine. Adapté à la culture en pot, il trouve sa place tant à l’extérieur dans le jardin qu’à l’intérieur, dans la maison.",
  fun_facts: "Originaire d'Afrique et du sud de l'Inde, le basilic est une herbe sacrée dans la tradition hindoue et est utilisé dans les cérémonies funéraires en Inde et en Égypte.",
  fun_facts2: "Le nom basilic vient du grec 'basileus' ou 'roi'.",
  fun_facts3: "Est également attribué au mot 'basilic', un dragon légendaire qui pouvait tuer une personne d'un seul regard.",
  entretien: "Niveau de soin : Facile",
  arrosage: "Quotidien en période sèche et 1 fois par semaine en période fraîche",
  composition_du_sol: "Bien drainé et léger, normaux, sableux",
  humidite_du_sol: "Normal",
  temperature_min: "10°C",
  cuisine: "Vous pouvez déguster le basilic en tant qu’aromate, frais en salade. En pesto de basilic ou bien en velouté de basilic : tout autant de recettes dans lesquelles vous pourrez profiter de cette plante ! Si vous aimez les plats dont la saveur est gastronomique, le basilic s’associera parfaitement avec des langoustines.",
  taille: "0,2 à 0,5 m",
  exposition: "Mi-ensoleillé, soleil",
  floraison: "Septembre à Novembre",
  toxicite: "Une consommation trop élevée d'huile essentielle de basilic peut s'avérer cancérigène",
  toxicite2: "Limitée pour les personnes ayant des traitements anticoagulant",
  trouver: "Le basilic pousse dans les endroits très ensoleillés, les climats chauds et à l'abris du vent. Il ne resiste pas au gel, il vaut mieux le garder en pot et le sortir lorsque le temps est clément.",
  medecine: "La qualité de ses nutriments rend le basilic bénéfique à notre corps. La vitamine K1 présente dans ce produit est parfaite pour la coagulation sanguine et pour prévenir des troubles cardio-vasculaires, ou encore renouveler le tissu osseux.",
  medecine2: "Antioxydant : sa grande richesse en antioxydants la rendrait efficace pour lutter contre les méfaits des radicaux libres responsables du vieillissement prématuré des cellules et de la survenue de maladies de peau.",
  medecine3: "Anti-infectieux : le basilic a des propriétés antivirales, fébrifuge et toniques, ce qui le rend particulièrement efficace pour lutter contre les petit virus et infections.",
  medecine4: "Anti ballonnement et crampes d'estomac : mettre une dizaine de feuilles fraîches de basilic dans une casserole d'eau chaude pour infusion. Une tisane par jour après manger de temps en temps soulagera.",
  medecine5: "L'huile essentielle de basilic : indiquée en cas de contractures musculaires (en mélange avec une huile végétale à appliquer sur la peau), d'arthrite, de céphalée ou de règles douloureuses. Elle renforce du système immunitaire et est recommandée contre les infections des voies respiratoires.",
  medecine6: "L'huile essentielle de basilic tropical : recommandée en cas d'anxiété, d'insomnie ou de tension nerveuse ainsi que pour les troubles digestifs")
file = File.open(Rails.root.join("db/seeds/images/plants/ocimumamericanum.jpg"))
ocimumamericanum.photo.attach(io: file, filename: "ocimumamericanum.jpg", content_type: "image/jpeg")

#Crosne du Japon
crosnedujapon = Plant.create!(name: "Crosne du Japon",
  species: "Plante",
  idapi: "Stachys affinis",
  infos: "Le crosne ou crosne du Japon (Stachys affinis) est une plante de la famille des lamiacées originaire du Nord-Ouest de la Chine et cultivée pour ses tubercules comestibles1. Le terme désigne aussi ses tubercules, parfois consommés comme légumes.",
  fun_facts: "Cette plante doit son nom à la ville de Crosne, dans l'Essonne, où elle fut pour la première fois cultivée en France en 1882.",
  fun_facts2: "Les Anglo-saxons l'appellent d'ailleurs « artichaut chinois » (Chinese artichoke).",
  entretien: "Niveau de soin : Facile",
  arrosage: "Généreux en cas de sécheresse, normal",
  composition_du_sol: "Sol léger, aéré, sablonneux et riche en humus",
  humidite_du_sol: "Normal",
  temperature_min: "-10°C",
  cuisine: "C'est le tubercule qui est consommé. Son aspect évoque celui des rhizomes du chiendent, en nettement plus charnu toutefois, et leur goût de noisette rappelle le salsifis, le topinambour ou l'artichaut selon la façon de les préparer. Les Chinois quant à eux le consomment généralement saumuré, au vinaigre et parfois pimenté, au petit déjeuner, en accompagnement de la traditionnelle bouillie de riz. La cuisson doit être courte - 6 à 7 minutes à l'anglaise, sinon le légume perd sa tenue.",
  taille: "0,3 à 0,4 m",
  exposition: "Soleil",
  floraison: "Rare en France, à partir de novembre",
  toxicite: "Non toxique",
  trouver: "Il pousse dans tous les sols mais il est bien plus aisé de récolter ses racines dans un terrain léger.",
  medecine: "Le crosne est source de calcium, nécessaire pour maintenir les os et les dents en bonne santé.")
file = File.open(Rails.root.join("db/seeds/images/plants/crosnedujapon.jpg"))
crosnedujapon.photo.attach(io: file, filename: "crosnedujapon.jpg", content_type: "image/jpeg")

#Epilobe Rose
epiloberose = Plant.create!(name: "Epilobe Rosé",
  species: "Fleur",
  idapi: "Epilobium roseum",
  infos: "L'épilobe à fleurs roses (Epilobium roseum) encore appelée épilobe rosé est une plante herbacée vivace de la famille des Onagraceae.",
  fun_facts: "Elle colonise rapidement les sols brûlés ; lors des bombardements de Londres pendant la Seconde Guerre mondiale, de nombreux sites de bombardements abandonnés ont rapidement été recouverts de ces plantes, apportant une touche de couleur à ce qui était par ailleurs une scène très sinistre.",
  fun_facts2: "C'est l'emblème floral du Yukon au Canada, du Hedmark en Norvège (où on l'appelle geitrams) et de l'Ostrobothnie du Sud en Finlande.",
  entretien: "Niveau de soin : Facile",
  arrosage: "Normal",
  composition_du_sol: "Plutôt basique et humide, argileux",
  humidite_du_sol: "Humide",
  temperature_min: "-20°C",
  cuisine: "En infusion de 15 g de plante sèche par litre, il faut en boire 3 à 4 tasses par jour.",
  taille: "0,3 à 0,8 m",
  exposition: "Soleil",
  floraison: "Juin à Septembre",
  toxicite: "Non toxique",
  trouver: "Lieux frais ou humides, dans une grande partie de la France ; rare dans l'Ouest et le Midi. L'épilobe pousse dans les sous-bois, les lisières de forêts, les clairières des forêts d'altitude.",
  medecine: "L'Epilobe Rosé est principalement utilisé par l'homme comme supplément à base de plantes dans le traitement des troubles de la prostate, de la vessie (incontinence) et des troubles hormonaux.",
  medecine2: "Des vertus anti-inflammatoires et digestives lui sont aussi attribuées.")
file = File.open(Rails.root.join("db/seeds/images/plants/epiloberose.jpg"))
epiloberose.photo.attach(io: file, filename: "epiloberose.jpg", content_type: "image/jpeg")

#Sauge farineuse
saugefarineuse = Plant.create!(name: "Sauge Farineuse",
  species: "Fleur",
  idapi: "Salvia farinacea",
  infos: "Originaire du Mexique, la sauge farineuse bleue rhea est une vivace cultivée comme une annuelle dans la plupart de nos régions. Nombreuses fleurs bleues qui agrémentent de longs épis de feuilles lisses se renouvellant du mois de juillet jusqu'aux premiers jours de l'hiver.",
  fun_facts: "Ces plantes seront parfaites en massif associées à des rosiers qu'elles protégeront de certains parasites grâce à leur parfum. Elles accompagnent aussi très bien les pivoines à grosses fleurs, soulignant leur côté romantique.",
  entretien: "Niveau de soin : Facile",
  arrosage: "Chaque semaine",
  composition_du_sol: "Riche ou argileux",
  humidite_du_sol: "Normal",
  temperature_min: "-20°C",
  cuisine: "La sauge peut être utilisée en infusion : il est alors recommandé de faire infuser 1 à 3 g de feuilles séchées dans une tasse d’eau bouillante pendant 10 minutes, et de boire 3 tasses par jour.",
  taille: "0,3 à 0,9 m",
  exposition: "Soleil",
  floraison: "Juillet aux gelées",
  toxicite: "La consommation excessive de certaines espèces peut être toxique.",
  toxicite2: "L’huile essentielle de sauge, en raison de sa teneur en thuyione (neurotoxique et abortive), est contre-indiquée chez les femmes enceintes et allaitantes, et pour les personnes souffrant d’épilepsie.",
  trouver: "On peut les trouver dans les terrains frais et bien drainés. Elles aiment être protégées des vents froids et secs et craignent le gel qui les fait disparaître. C'est une espèce vivace dans le sud de la France.",
  medecine: "Régulation de la glycémie : efficace pour les personnes diabétiques et pré-diabétiques.",
  medecine2: "Amélioration des symptômes de la ménopause",
  medecine3: "Aide à la digestion",
  medecine4: "Prévention de la maladie d’Alzheimer",
  medecine5: "Traitement des gingivites et pharyngites")
file = File.open(Rails.root.join("db/seeds/images/plants/saugefarineuse.jpg"))
saugefarineuse.photo.attach(io: file, filename: "saugefarineuse.jpg", content_type: "image/jpeg")

#Sauge des devins
saugedesdevins = Plant.create!(name: "Sauge des devins",
  species: "Lamiaceae",
  idapi: "Salvia divinorum",
  infos: "La Sauge des devins est une plante originaire du Mexique. Elle est connue pour ses effets psychotropes ; elle est utilisée dans un cadre mystique traditionnellement chez les Mazatèques lors de rites religieux de divination et de curation.",
  fun_facts: "C'est Jean Bassett Johnston qui a répertorié pour la première fois cette espèce en 1939 lors d'une étude sur les rituels consacrés aux champignons chez les Indiens mazatèques. Elle a été trouvée dans les ravines humides de la province d'Oaxaca au Mexique même si son origine reste inconnue. En effet, il semble que ces spécimens ne proviennent que de plantations des chamans locaux.",
  entretien: "Niveau de soin : Intermédiaire",
  arrosage: "Chaque jour",
  composition_du_sol: "Riche ou argileux",
  humidite_du_sol: "Humide",
  temperature_min: "20°C",
  cuisine: "A ne pas utiliser en cuisine à cause de ses fortes propriétées psychotrope ! ",
  taille: "0,3 à 0,9 m",
  exposition: "Ombragée",
  floraison: "Mai à Août",
  toxicite: "La consommation excessive de certaines espèces peut être toxique.",
  trouver: "Elle peut se trouver dans les milieux semi-tropicaux, où l'humidité est très élevée",
  medecine: "Le principe actif de la Salvorine-A aide à traiter la dépendance à certaines drogues tel que la cocaïne. Veuillez consulter votre médecin avant d'en consommer.",
  medecine2: "Antispasmodique, ce végétal soulage les problèmes digestifs.",)
file = File.open(Rails.root.join("db/seeds/images/plants/saugedesdevins.jpg"))
saugedesdevins.photo.attach(io: file, filename: "saugedesdevins.jpg", content_type: "image/jpeg")

menthavillosa = Plant.create!(name: "Menthe Velue",
  species: "Plante",
  idapi: "Mentha × villosa",
  infos: "La menthe géante, Mentha x villosa de son nom complet, est une étonnante menthe. Une variété vraiment XL, et bonne pour la faune, avec ça !",
  fun_facts: "C’est un des éléments essentiels d’un cocktail cubain bien connu, le « Mojito », fait à base de rhum blanc, de sucre de canne, de jus de lime et de feuilles de cette menthe.",
  entretien: "Niveau de soin : Très facile",
  arrosage: "Normal",
  composition_du_sol: "Riche",
  humidite_du_sol: "Normal",
  temperature_min: "-20°C",
  cuisine: "Mentha villosa a une vraie bonne saveur, sans amertume. Son arôme tient bien aussi en fin de saison. Si la saveur est parfaite pour toutes les préparations à base de menthe, la taille des feuilles devrait aussi vous inspirer des créations : rouleaux à la menthe, feuilles glacées pour un effet « waouh » dans les desserts, etc.",
  taille: "1,5 m",
  exposition: "Soleil ou mi-ombragé",
  floraison: "Juillet à Août",
  toxicite: "Non toxique",
  trouver: "Cette variété est parfaitement résistante au froid et ne demande pas d’entretien. On la trouve dans les fossés, les lieux humides, les jardins arrosés",
  medecine: "Outre ses propriétés culinaires, la menthe possède de nombreuses vertus: en infusion, elle est tonique, apéritive, elle facilite la digestion, soigne les problèmes de bronches, calme les nerfs, les crampes, les migraines et les insomnies.")

file = File.open(Rails.root.join("db/seeds/images/plants/menthavillosa.jpg"))
menthavillosa.photo.attach(io: file, filename: "menthavillosa.jpg", content_type: "image/jpeg")

cerisierdecoree = Plant.create!(name: "Cerisier de Corée",
  species: "Plante",
  idapi: "Prunus japonica",
  infos: "Prunus japonica (nom scientifique : Prunus japonica) est un arbuste à feuilles larges et à feuilles caduques de la famille des Rosacées du genre Prunus, originaire de Chine. Il se ramifie bien et est planté comme un arbre de jardin. Au printemps, il fleurit avant ou en même temps que les feuilles.",
  fun_facts: "Les feuilles de cette plante donnent un colorant vert, tandis que les fruits donnent un colorant verdâtre à grisâtre.",
  entretien: "Niveau de soin : Facile",
  arrosage: "Normal",
  composition_du_sol: "Argileux, calcaire, riche en humus, caillouteux",
  humidite_du_sol: "Sol drainé ou frais",
  temperature_min: "-15°C",
  cuisine: "Le fruit atteint environ 14 mm et a une saveur agréablement sucrée, c'est pourquoi il est utilisé pour faire des tartes, mais son goût est assez aigre, rappelant celui de la cerise acide.",
  taille: "1.5 m",
  exposition: "Soleil ou mi-ombragé",
  floraison: "Avril-Mai",
  toxicite: "Bien qu'aucune mention spécifique n'ait été vue pour cette espèce, elle appartient à un genre dont la plupart des membres, sinon tous, produisent du cyanure d'hydrogène, un poison qui donne aux amandes leur saveur caractéristique. Cette toxine se trouve principalement dans les feuilles et les graines et est facilement détectée par son goût amer. Elle est généralement présente en trop petite quantité pour être nocive, mais toute graine ou tout fruit très amer ne doit pas être consommé. En cas d'excès, il peut provoquer une insuffisance respiratoire, voire la mort.",
  trouver: "Bosquet, forêt, massif, bordure etc... Elle se plait seule, elle n'a pas besoin d'être entourée.",
  medecine: "En petites quantités, il a été démontré que le cyanure d'hydrogène que le cerisier contient stimule la respiration et améliore la digestion",
  medecine2: "Les amandes sont apéritives, carminatives, démulcrantes, désobstruantes, diurétiques, hypotensives, laxatives, lénitives et ophtalmiques. Elles sont prises en interne dans le traitement de la constipation sèche, de l'œdème et de l'insomnie à la suite d'un traumatisme. La racine est utilisée dans le traitement de la constipation, de la fièvre infantile, des oxyures et des affections dentaires.")

file = File.open(Rails.root.join("db/seeds/images/plants/cerisierdecoree.jpg"))
cerisierdecoree.photo.attach(io: file, filename: "cerisierdecoree.jpg", content_type: "image/jpeg")

porteepee = Plant.create!(name: "Porte-épée",
  species: "Plante",
  idapi: "Sansevieria bacularis",
  infos: "Sansevieria bacularis, également appelée Dracaena bacularis, est une espèce de plantes de la famille des Liliaceae et du genre Sansevieria.",
  fun_facts: "S. bacularis est une introduction récente. Ce natif d’Afrique centrale n’a été décrit officiellement qu’en 2010, mais semble avoir gagné en popularité très rapidement et est maintenant abondamment disponible à travers le monde.",
  fun_facts2: "La sansevieria fait partie de la famille des agavacées et doit son nom au prince italien Raimondo di Sangro, originaire de San Severo.",
  entretien: "Niveau de soin : Facile",
  arrosage: "Normal",
  composition_du_sol: "Drainé",
  humidite_du_sol: "Sec",
  temperature_min: "7°C",
  cuisine: "A ne pas cuisiner",
  taille: "0,15 à 0,8 m",
  exposition: "Soleil",
  floraison: "Fleurit rarement à l'intérieur",
  toxicite: "Les feuilles du Sansevieria sont toxiques s'il y a ingestion. Si elles sont ingérées en grande quantité, les animaux et les humains peuvent éprouver des nausées et souffrir de vomissements.",
  trouver: "En pleine terre, cette plante ne poussera que dans les climats tropicaux, de préférence arides, mais les spécimens cultivés comme plantes d’intérieur seront très à l’aise en plein air l’été dans un emplacement protégé du soleil le plus intense.",
  medecine: "Elle est traditionnellement utilisée en Malaisie et au Bangladesh pour traiter les douleurs et la fièvre.")

file = File.open(Rails.root.join("db/seeds/images/plants/porteepee.jpg"))
porteepee.photo.attach(io: file, filename: "porteepee.jpg", content_type: "image/jpeg")

languedebellemere = Plant.create!(name: "Langue de belle mère",
  species: "Plante",
  idapi: "Sansevieria cylindrica",
  infos: "Plante rare, il y a encore 20 ans, elle est devenue un classique des jardineries. Insolite, graphique, très décorative, la sansevière à feuilles cylindriques est de plus une plante d'intérieur facile à vivre et de longue durée.",
  fun_facts: "En Afrique, ses feuilles peuvent être utilisées pour ses fibres résistantes. Cependant, le textile obtenu après tissage manque de souplesse.",
  entretien: "Niveau de soin : Facile",
  arrosage: "Normal",
  composition_du_sol: "Drainé",
  humidite_du_sol: "Normal à sec",
  temperature_min: "6°C",
  cuisine: "A ne pas cuisiner",
  taille: "0,5 à 0,9 m",
  exposition: "Soleil",
  floraison: "Été",
  toxicite: "Les feuilles de la langue de belle-mère contiennent des saponines toxiques. Tenez éloignés de la plante les jeunes enfants et les animaux domestiques (notamment les chats, les chiens, les cochons d'Inde ou les lapins).",
  trouver: "En pleine terre, cette plante ne poussera que dans les climats tropicaux, de préférence arides, mais les spécimens cultivés comme plantes d’intérieur seront très à l’aise en plein air l’été dans un emplacement protégé du soleil le plus intense.",
  medecine: "Cette plante dépolluante a la particularité de filtrer l'air. Elle purifie l'air notamment la nuit en produisant beaucoup d'oxygène. Et ses longues feuilles éliminent les toxines (Adieu formaldéhyde, benzène, toluène, trichloréthylène et xylène).")

file = File.open(Rails.root.join("db/seeds/images/plants/languedebellemere.jpg"))
languedebellemere.photo.attach(io: file, filename: "languedebellemere.jpg", content_type: "image/jpeg")

sansevieriastuckyi = Plant.create!(name: "Sansevière bâton",
  species: "Plante",
  idapi: "Sansevieria stuckyi",
  infos: "La sansevieria en bâton, très facile à cultiver dans les maisons, est devenue une plante d'intérieur populaire, tant elle est graphique et sans souci.",
  fun_facts: "S. bacularis est une introduction récente. Ce natif d’Afrique centrale n’a été décrit officiellement qu’en 2010, mais semble avoir gagné en popularité très rapidement et est maintenant abondamment disponible à travers le monde.",
  fun_facts2: "La sansevieria fait partie de la famille des agavacées et doit son nom au prince italien Raimondo di Sangro, originaire de San Severo.",
  entretien: "Niveau de soin : Facile",
  arrosage: "Espacé",
  composition_du_sol: "Drainé, acide à basique",
  humidite_du_sol: "Plutôt sec",
  temperature_min: "5°C",
  cuisine: "A ne pas cuisiner",
  taille: "0,6 à 2 m",
  exposition: "Soleil, mi-ombragé",
  floraison: "Été",
  toxicite: "Les feuilles du Sansevieria sont toxiques s'il y a ingestion. Si elles sont ingérées en grande quantité, les animaux et les humains peuvent éprouver des nausées et souffrir de vomissements.",
  trouver: "En pleine terre, cette plante ne poussera que dans les climats tropicaux, de préférence arides, mais les spécimens cultivés comme plantes d’intérieur seront très à l’aise en plein air l’été dans un emplacement protégé du soleil le plus intense.",
  medecine: "Elle est traditionnellement utilisée en Malaisie et au Bangladesh pour traiter les douleurs et la fièvre.")

file = File.open(Rails.root.join("db/seeds/images/plants/sansevieriastuckyi.jpg"))
sansevieriastuckyi.photo.attach(io: file, filename: "sansevieriastuckyi.jpg", content_type: "image/jpeg")

sansevieriazeylanica = Plant.create!(name: "Sansevieria Zeylanica",
  species: "Plante",
  idapi: "Sansevieria zeylanica",
  infos: "La Sansevieria Zeylanica est une plante vivace succulente à souche rhizomateuse, au port touffu et érigé et au feuillage persistant.",
  fun_facts: "Le Sansevieria Zeylanica fut nommée ainsi en souvenir de Raimondo Di Sangro, prince de San Severo, un aristocrate italien",
  entretien: "Niveau de soin : Facile",
  arrosage: "Normal",
  composition_du_sol: "Drainé",
  humidite_du_sol: "Sec",
  temperature_min: "12°C",
  cuisine: "A ne pas cuisiner",
  taille: "0,17 à 0,55 m",
  exposition: "Soleil",
  floraison: "Printemps ou été",
  toxicite: "Les feuilles du Sansevieria sont toxiques s'il y a ingestion. Si elles sont ingérées en grande quantité, les animaux et les humains peuvent éprouver des nausées et souffrir de vomissements.",
  trouver: "En pleine terre, cette plante ne poussera que dans les climats tropicaux, de préférence arides, mais les spécimens cultivés comme plantes d’intérieur seront très à l’aise en plein air l’été dans un emplacement protégé du soleil le plus intense.",
  medecine: "Cette plante dépolluante a la particularité de filtrer l'air. Elle purifie l'air notamment la nuit en produisant beaucoup d'oxygène. Et ses longues feuilles éliminent les toxines (Adieu formaldéhyde, benzène, toluène, trichloréthylène et xylène).")

file = File.open(Rails.root.join("db/seeds/images/plants/sansevieriazeylanica.jpg"))
sansevieriazeylanica.photo.attach(io: file, filename: "sansevieriazeylanica.jpg", content_type: "image/jpeg")

aloerivierei = Plant.create!(name: "Aloe Rivierei",
  species: "Plante",
  idapi: "Aloe rivierei",
  infos: "",
  fun_facts: "",
  entretien: "Niveau de soin : Facile",
  arrosage: "Normal",
  composition_du_sol: "",
  humidite_du_sol: "",
  temperature_min: "",
  cuisine: "",
  taille: "0,15 à 0,6 m",
  exposition: "",
  floraison: "",
  toxicite: "",
  trouver: "",
  medecine: "")

file = File.open(Rails.root.join("db/seeds/images/plants/aloerivierei.jpg"))
aloerivierei.photo.attach(io: file, filename: "aloerivierei.jpg", content_type: "image/jpeg")

lepechiniacalycina = Plant.create!(name: "Baume des bois",
  species: "Plante",
  idapi: "Lepechinia calycina",
  infos: "Lepechinia calycina est une espèce de plante à fleurs de la famille de la menthe, connue sous le nom commun de 'pitchersage' ou 'woodbalm'. Elle est originaire de Californie, où elle est une plante commune dans plusieurs types d'habitats différents, y compris la communauté végétale du chaparral.",
  fun_facts: "",
  entretien: "Niveau de soin : Facile",
  arrosage: "3 fois par mois",
  composition_du_sol: "Drainé, sableux",
  humidite_du_sol: "Normal",
  temperature_min: "-5°C",
  cuisine: "Venant de la même famille que la menthe, on peut l'utiliser comme plante aromatique pour ",
  taille: "1,8 à 2,4 m",
  exposition: "Soleil, mi-ombragé",
  floraison: "Avril à Juin",
  toxicite: "Non toxique",
  trouver: "On peut la retrouver surtout en Californie, dans les pentes rocheuses, canyons et crêtes",
  medecine: "Elle contient des antioxydants et a de nombreuses utilisations médicinales, la plus intéressante étant une crème solaire de base lorsqu'elle est combinée avec du Chaparral (Larrea tridentat) et de l'huile d'olive.")

file = File.open(Rails.root.join("db/seeds/images/plants/lepechiniacalycina.jpg"))
lepechiniacalycina.photo.attach(io: file, filename: "lepechiniacalycina.jpg", content_type: "image/jpeg")

aildesours = Plant.create!(name: "Ail des ours",
  species: "Fleur",
  idapi: "Allium ursinum",
  infos: "L'ail des ours est assez facile à repérer par son odeur caractéristique, d’autant plus qu’il pousse généralement en vastes colonies. Ses longues feuilles sont pointues à leur extrémité (on dit qu’elles sont lancéolées) et sont portées par des pétioles (des tiges) également longs. Ceux-ci sortent directement de terre avec une seule feuille et forment une touffe. La floraison est d’un blanc pur, formée de petites fleurs en étoiles regroupées en ombelles. Une fois que la floraison est terminée, les feuilles commencent à jaunir, comme souvent chez les plantes à bulbes.",
  medecine: "L’ail des ours est dépuratif et détoxifiant: il empêche les dépôts de cholestérol de se former dans le sang, élimine les toxines et les lipides et fluidifie le sang. En plus, il possède des vertus antiseptiques et antibiotiques!",
  trouver: "Cette jolie plante herbacée sauvage pousse spontanément dans les sous-bois, et les forêts de hêtres, de charmes ou de chênes, dans des zones plutôt humides et ombragées. On le trouve beaucoup en montagne, jusqu’à 1600 m d’altitude. L’ail des ours est très fréquent dans le Grand-Est et dans tous les massifs montagneux, moins courant dans le Sud hormis dans les Pyrénées.")
file = File.open(Rails.root.join("db/seeds/images/plants/aildesours.jpg"))
aildesours.photo.attach(io: file, filename: "aildesours.jpg", content_type: "image/jpeg")

laurierrose = Plant.create!(name: "Laurier rose",
  species: "Arbuste",
  idapi: "Nerium Oleander",
  infos: "En pleine terre, cet arbuste atteint entre 2 et 4 m de haut, les variétés naines – comme ‘Petite Salmon’ – parfaites en pot, atteignent au plus 80 cm, les variétés compactes mesurent 80 cm à 1,50 m. Ses grandes touffes de feuilles ovales, étroites, coriaces et vert foncé, parfois panachées, assurent une touche de verdure toute l’année. Ces feuilles persistantes sont distribuées par 3 autour des rameaux (on dit qu’elles sont verticillées), parfois seulement opposées par 2. Brillantes sur l’endroit, elles sont d’un vert plus clair et plus terne sur l’envers.",
  medecine: "Toute la plante est très toxique et très amère à cause de la présence d’oléandrine, une substance cardio-toxique, même les herbivores les plus voraces comme la chèvre, n’y touchent pas. Elle doit être placée hors de portée des enfants et des animaux : l’ingestion d’une petite quantité de feuilles ou de tiges peut entraîner vomissements, vertiges, douleurs abdominales, inconscience, voire être fatale. Il est même déconseillé de l’utiliser en paillis pour votre jardin. L’eau dans laquelle a trempé une tige ou des feuilles de laurier-rose est également dangereuse, attention notamment à vos animaux.",
  trouver:"C’est un arbuste ou un petit arbre persistant, originaire du pourtour méditerranéen, de l’Afrique du Nord jusqu’en Asie Mineure, et d’Asie (Inde et Japon). Il y pousse notamment au bord des cours d’eau.")
file = File.open(Rails.root.join("db/seeds/images/plants/laurierrose.jpg"))
laurierrose.photo.attach(io: file, filename: "laurierrose.jpg", content_type: "image/jpeg")
# , latitude: 47.228254994354444, longitude:-1.5103718904801138

lavandepapillon = Plant.create!(name: "Lavande papillon", species: "Fleur", idapi: "Lavandula Stoechas", infos: "Un feuillage gris argenté persistant et un parfum toute l’année, des fleurs bleu mauve la moitié de l’année, la lavande est une de ces plantes faciles à vivre qui peut fleurir même sous les pires canicules.", medecine: "La lavande est bien connue pour ses effets relaxants. L’usage était d’ailleurs courant d’en disposer quelques épis dans le bain pour se détendre et se préparer au sommeil. Mais c’est en usage interne principalement que l’on utilise la lavande comme anti-stress. Elle sera utilisée en cas d’irritabilité, d’insomnies, d’hyper-émotivité, d’anxiété. La lavande peut même être utilisée pour aider un bébé à dormir, en massage d’huile essentielle diluée dans de l’huile végétale.", trouver: "La lavande pousse spontanément en Provence, entre 600 et 1400 mètres d’altitude. Elle y est également cultivée depuis le XIXe siècle, à l’origine pour fournir les distilleries qui la transforment en huile essentielle, un nectar ô combien précieux pour les parfumeurs. Il l’est malheureusement moins aujourd’hui, remplacé le plus souvent par des essences artificielles.")
file = File.open(Rails.root.join("db/seeds/images/plants/lavandepapillon.jpg"))
lavandepapillon.photo.attach(io: file, filename: "lavandepapillon.jpg", content_type: "image/jpeg")
# , latitude: 47.10258029446564, longitude:-2.073020656482966

lavandeofficinale = Plant.create!(name: "Lavande officinale", species: "Fleur", idapi: "Lavandula angustifolia", infos: "La Lavande officinale, Lavande vraie ou Lavande à feuilles étroites (Lavandula angustifolia Mill.) est une espèce de sous-arbrisseaux de la famille des Lamiaceae. C'est une plante qui est appréciée pour son odeur. C'est la plus appréciée des lavandes pour la qualité olfactive de son huile essentielle. À l'état sauvage, elle pousse surtout en Provence mais elle peut être cultivée dans des régions plus septentrionales, d'autant qu'il en existe de nombreux cultivars.")
file = File.open(Rails.root.join("db/seeds/images/plants/lavandeofficinale.jpg"))
lavandeofficinale.photo.attach(io: file, filename: "lavandeofficinale.jpg", content_type: "image/jpeg")

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

eucalyptus = Plant.create!(name:"Eucalyptus", species: "Plante", idapi: "Eucalyptus", infos: "Aussi appelé gommier, par rapport à la gomme résineuse rouge qui s’écoule de ses blessures, l’eucalyptus est un arbre ou un arbuste buissonnant. La hauteur de l’eucalyptus à maturité varie selon les espèces de 3 à 60 m, voire plus, pouvant mesurer pour certaines plus de 90 m de haut, mais leur silhouette reste délicate, presque gracile. Le saviez-vous ? Les plus grands arbres de la Terre sont des eucalyptus : le record de 132 mètres est détenu par un eucalyptus australien, battant le record de 113 m du séquoia Redwood.", medecine:"L'eucalyptus est surtout réputé pour ses bienfaits sur l'appareil respiratoire : nez, gorge, oreilles, poumons. Anti-inflammatoire et anti-infectieux, il possède un effet fluidifiant sur les sécrétions bronchiques (expectorant).", trouver: "Repas favori des koalas, l'eucalyptus est originaire de Tasmanie et d'Australie. Il en existe environ 100 espèces différentes, allant du simple arbuste à l’arbre de très grande taille. Seules quelques-unes ont été introduites massivement en Europe, surtout dans le bassin méditerranéen. La plus connue, E. Globulus, était surnommée « arbre à fièvre » par les Aborigènes, qui l'utilisaient contre les fièvres et les infections. Ses feuilles renferment une essence aromatique riche en cinéole (eucalyptol) qui leur confère de puissantes propriétés antiseptiques.")
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

reinedespres = Plant.create!(name: "Reine des prés", species: "Plante", idapi: "Filipendula ulmaria", infos: "La reine des prés est une plante herbacée. Ses tiges sont dressées, anguleuses, veinées de rouge et portant des feuilles qui sont alternes et découpées – vert foncé dessus, et blanches dessous. Ses fleurs sont blanches et dégagent un parfum doux et agréable. Elles sont regroupées en corymbes irréguliers. Enfin, ses fruits sont en grappes et s’enroulent sur eux-mêmes, ce qui a inspiré le nom de la plante (spirée).", medecine: "La reine des prés, c’est une aspirine naturelle qui permet de profiter de ses avantages – sans effets secondaires potentiellement néfastes, comme les ulcères par exemple. Elle est très efficace en infusion, mais son goût est particulier : n’hésitez pas à l’associer à d’autres plantes, ou à ajouter du miel pour rendre son goût plus agréable. En cure détox, elle existe sous forme de gélules ou d’ampoules – et est souvent associée à d’autres plantes. Précautions d’emploi : la reine des prés est déconseillée aux personnes souffrant d’allergies aux dérivés salicylés – ou se trouvant sous traitement anticoagulant.", trouver: "La reine des prés pousse en Europe. On la retrouve partout, sauf dans les régions méridionales. Elle affectionne particulièrement les prairies humides, les fossés et les tourbières.")
file = File.open(Rails.root.join("db/seeds/images/plants/reinedespres.jpg"))
reinedespres.photo.attach(io: file, filename: "reinedespres.jpg", content_type: "image/jpeg")
# , latitude: 47.127402318271855, longitude: -1.6744793619236116

camomille = Plant.create!(name: "Camomille", species: "Fleur", idapi: "Chamaemelum nobile", infos: "Plante vivace, la camomille forme une petite touffe de petite taille, qui ne se ramifie que sur la partie supérieure. Ses tiges sont duveteuses, couchées puis se redressant, habillées de feuilles sans pétiole, blanc vert, très découpées et filiformes. Les inflorescences solitaires se trouvent en bout de tige. Ces inflorescences sont très odorantes et apparaissent en été, jusqu'au mois de septembre.", medecine: "La petite camomille est traditionnellement utilisée pour ses propriétés médicinales, et ce depuis l’Antiquité. Elle se boit en tisane pour calmer les troubles digestifs et pour ses propriétés apéritives. Elle est tonique, antispasmodique, analgésique. Son huile essentielle est également antibactérienne, sédative et spasmolytique. L’huile essentielle de grande camomille a des propriétés anti-inflammatoires et serait un traitement pour les migraines.")
file = File.open(Rails.root.join("db/seeds/images/plants/camomille.jpg"))
camomille.photo.attach(io: file, filename: "camomille.jpg", content_type: "image/jpeg")
# , latitude: 47.9305606391601, longitude: -2.675962086913407


puts "Associate user & flowers"

userplants1 = UserPlant.create!(user: chantal, plant: basilic)
userplants2 = UserPlant.create!(user: chantal, plant: reinedespres)
userplants3 = UserPlant.create!(user: chantal, plant: aubepine)
userplants4 = UserPlant.create!(user: chantal, plant: lavandepapillon)
userplants5 = UserPlant.create!(user: chantal, plant: aildesours)

puts "Searching flowers"

plantloc1 = PlantLocation.create!(latitude: 47.131951955272505, longitude: -1.6941922066009414, plant: aubepine)
plantloc2 = PlantLocation.create!(latitude: 47.20053071941626, longitude:-1.580310463930999, plant: aildesours)
plantloc3 = PlantLocation.create!(latitude: 47.224167182693506, longitude:-1.5822665824085338, plant: basilic)
plantloc4 = PlantLocation.create!(latitude: 47.127402318271855, longitude: -1.6744793619236116, plant: reinedespres)
plantloc5 = PlantLocation.create!(latitude: 47.10258029446564, longitude:-2.073020656482966, plant: lavandepapillon)
plantloc6 = PlantLocation.create!(latitude: 47.30585725399728, longitude:-1.9664226019547397, plant: mentheverte)
plantloc7 = PlantLocation.create!(latitude: 47.2148822346923, longitude:-1.4930743500631412, plant: mentheaquatique)
plantloc8 = PlantLocation.create!(latitude: 47.21368739324957, longitude:-1.5188416123179, plant: basilic)
plantloc9 = PlantLocation.create!(latitude: 47.28619121300331, longitude:-1.4885209166811701, plant: crosnedujapon)
plantloc10 = PlantLocation.create!(latitude: 47.182689499278595, longitude:-1.8900855206020841, plant: epiloberose)
plantloc11 = PlantLocation.create!(latitude: 47.23843855366628, longitude:-1.9237918861248384, plant: saugefarineuse)
plantloc12 = PlantLocation.create!(latitude: 47.203104434750834, longitude:-1.6350895379516799, plant: menthavillosa)
plantloc13 = PlantLocation.create!(latitude: 47.25137191797781, longitude:-1.7193554517585665, plant: languedebellemere)
plantloc14 = PlantLocation.create!(latitude: 47.12570905033032, longitude:-1.6833232937048248, plant: sansevieriastuckyi)
plantloc15 = PlantLocation.create!(latitude: 47.24364491612167, longitude:-1.6342921233696273, plant: sansevieriazeylanica)
plantloc16 = PlantLocation.create!(latitude: 47.203106858460956, longitude:-1.5690593489236688, plant: aildesours)
plantloc17 = PlantLocation.create!(latitude: 47.037274460729364, longitude:-1.9860492859400787, plant: lavandepapillon)
plantloc18 = PlantLocation.create!(latitude: 47.30046218376317, longitude:-1.387869011559992, plant: agapanthe)
plantloc19 = PlantLocation.create!(latitude: 47.34757039248764, longitude:-1.5319780156599019, plant: eucalyptus)
plantloc20 = PlantLocation.create!(latitude: 47.38511124414201, longitude:-1.6662807865780518, plant: reinedespres)
plantloc21 = PlantLocation.create!(latitude: 47.249530242010685, longitude:-1.5379506889803103, plant: menthesylvestre)
plantloc22 = PlantLocation.create!(latitude: 47.23617271596168, longitude:-1.5777158502225925, plant: mentheodorante)
plantloc23 = PlantLocation.create!(latitude: 47.20241238461933, longitude:-1.4915580008643141, plant: menthepoivree)
plantloc24 = PlantLocation.create!(latitude: 47.26091663055554, longitude:-1.5628039147567365, plant: mentheverte)
plantloc25 = PlantLocation.create!(latitude: 47.18222066375242, longitude:-1.5698505048814346, plant: menthedeschamps)
plantloc26 = PlantLocation.create!(latitude: 47.34727573263392, longitude:-1.8261468826250875, plant: menthesylvestre)
plantloc27 = PlantLocation.create!(latitude: 47.27632392728993, longitude:-1.8774027638118542, plant: lepechiniacalycina)
plantloc28 = PlantLocation.create!(latitude: 47.36897663096782, longitude:-1.9162006183212816, plant: bougainvilliers)
plantloc29 = PlantLocation.create!(latitude: 47.30375663507428, longitude:-1.4671358454137444, plant: acanthe)
plantloc30 = PlantLocation.create!(latitude: 47.2300876890489, longitude:-1.4525421575105413, plant: calypso)
plantloc31 = PlantLocation.create!(latitude: 47.247729261678344, longitude:-1.3753023921110386, plant: ortie)
plantloc32 = PlantLocation.create!(latitude: 47.14808614308398, longitude:-2.2160412167400505, plant: camomille)
plantloc33 = PlantLocation.create!(latitude: 47.17543406800818, longitude:-2.0850539648183126, plant: dionee)
plantloc34 = PlantLocation.create!(latitude: 47.20566979854313, longitude:-2.134530127908317, plant: laurierrose)
plantloc35 = PlantLocation.create!(latitude: 47.15171720893745, longitude:-1.990372962070535, plant: aloerivierei)
plantloc35 = PlantLocation.create!(latitude: 47.09092237794672, longitude:-2.0417051308094627, plant: lavandeofficinale)

puts "Everything is beautiful"
