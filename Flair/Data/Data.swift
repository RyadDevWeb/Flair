//
//  Data.swift
//  Flair
//
//  Created by Apprenant154 on 07/08/2026.
//

import Foundation

let works: [Work] = {
    
    // MARK: - One Piece

    // MARK: Organisations

    let strawHatPirates = WorkOrganization(
        team: "Équipage du Chapeau de Paille",
        cover: "one_piece-pirate-cover",
        imageTeam: "one_piece-pirate-detail",
        details:
            "L'Équipage du Chapeau de Paille est un groupe de pirates fondé et dirigé par Monkey D. Luffy. Chaque membre poursuit son propre rêve tout en accompagnant Luffy dans sa quête pour trouver le One Piece. Leur équipage repose avant tout sur la liberté, la confiance et la protection de leurs compagnons. Au cours de leur voyage, ils deviennent progressivement l'un des équipages les plus importants et les plus redoutés du monde.",
        role: "Monkey D. Luffy",
        speciality: "Exploration et piraterie",
        staff: 10
    )

    let marines = WorkOrganization(
        team: "Marine",
        cover: "one_piece-marine-cover",
        imageTeam: "one_piece-marine-detail",
        details:
            "La Marine est la principale force militaire du Gouvernement Mondial. Elle possède des bases réparties à travers les différentes mers et a pour mission officielle de protéger les populations et de combattre les pirates. Son immense hiérarchie rassemble soldats, officiers, vice-amiraux et amiraux. Les membres de la Marine défendent cependant différentes conceptions de la justice, allant d'une approche protectrice à une vision beaucoup plus radicale.",
        role: "Sakazuki",
        speciality: "Justice et sécurité maritime",
        staff: 100000
    )

    let fiveElders = WorkOrganization(
        team: "Cinq Doyens",
        cover: "one_piece-5_doyen-cover",
        imageTeam: "one_piece-5_doyen-detail",
        details:
            "Les Cinq Doyens comptent parmi les plus hautes autorités publiques du Gouvernement Mondial. Ils interviennent dans les décisions majeures concernant l'équilibre politique du monde, la Marine, les pirates et les secrets que le Gouvernement cherche à protéger. Leur influence s'étend sur une grande partie des institutions mondiales et leur véritable puissance ainsi que leurs objectifs occupent une place centrale dans les événements les plus récents de l'histoire.",
        role: "Saint Jaygarcia Saturn",
        speciality: "Autorité et gouvernement",
        staff: 5
    )

    let onePieceOrganizations = [
        strawHatPirates,
        marines,
        fiveElders
    ]


    // MARK: Personnages

    let onePieceCharacters = [

        WorkCharacter(
            name: "Monkey D. Luffy",
            summary:
                "Capitaine de l'Équipage du Chapeau de Paille déterminé à devenir le Roi des Pirates.",
            description:
                "Monkey D. Luffy est un pirate originaire d'East Blue dont le rêve est de trouver le One Piece et de devenir le Roi des Pirates. Inspiré durant son enfance par Shanks le Roux, il prend la mer afin de former son propre équipage. Pour Luffy, devenir Roi des Pirates signifie avant tout devenir l'homme le plus libre du monde. Son caractère imprévisible cache une loyauté absolue envers ses compagnons et une détermination exceptionnelle lorsqu'une personne qu'il considère comme son amie est menacée.",
            cover: "one_piece-luffy-cover",
            identityImage: "luffy-id_card",
            detailImage: "one_piece-luffy-detail",
            todayImage: "luffy-today",
            groups: [strawHatPirates],
            skills: [
                "Haki",
                "Fruit du Démon",
                "Combat rapproché"
            ],
            species: ["Humain"]
        ),

        WorkCharacter(
            name: "Roronoa Zoro",
            summary:
                "Épéiste du Chapeau de Paille déterminé à devenir le meilleur sabreur du monde.",
            description:
                "Roronoa Zoro est l'un des principaux combattants de l'Équipage du Chapeau de Paille et le premier compagnon à rejoindre Luffy. Il pratique le Santoryu, un style de combat utilisant trois sabres simultanément. Son objectif est de devenir le meilleur sabreur du monde. Derrière son caractère sérieux et son terrible sens de l'orientation, Zoro possède une loyauté immense envers son capitaine et ses compagnons.",
            cover: "one_piece-zoro-cover",
            identityImage: "zoro-id_card",
            detailImage: "one_piece-zoro-detail",
            todayImage: "zoro-today",
            groups: [strawHatPirates],
            skills: [
                "Santoryu",
                "Haki",
                "Maîtrise du sabre"
            ],
            species: ["Humain"]
        ),

        WorkCharacter(
            name: "Shanks",
            summary:
                "Puissant pirate et Empereur ayant inspiré Luffy à prendre la mer.",
            description:
                "Shanks le Roux est le capitaine de l'Équipage du Roux et l'un des pirates les plus influents du monde. Sa rencontre avec Luffy durant l'enfance de celui-ci joue un rôle déterminant dans la naissance de son rêve. Shanks confie son célèbre chapeau de paille à Luffy en lui demandant de le lui rendre lorsqu'il sera devenu un grand pirate.",
            cover: "one_piece-shanks-cover",
            identityImage: "shanks-id_card",
            detailImage: "one_piece-shanks-detail",
            todayImage: "shanks-today",
            groups: [],
            skills: [
                "Haki",
                "Escrime",
                "Commandement"
            ],
            species: ["Humain"]
        ),

        WorkCharacter(
            name: "Gol D. Roger",
            summary:
                "Ancien Roi des Pirates dont l'héritage déclenche la grande ère de la piraterie.",
            description:
                "Gol D. Roger est le légendaire pirate ayant réussi à atteindre la dernière île de Grand Line avec son équipage. Après avoir obtenu tout ce que le monde pouvait offrir, il reçoit le titre de Roi des Pirates. Ses dernières paroles avant son exécution annoncent l'existence de son immense trésor, le One Piece, et provoquent le début de la grande ère de la piraterie.",
            cover: "one_piece-gold_roger-cover",
            identityImage: "gold_roger-id_card",
            detailImage: "one_piece-gold_roger-detail",
            todayImage: "gold_roger-today",
            groups: [],
            skills: [
                "Haki",
                "Escrime",
                "Commandement"
            ],
            species: ["Humain"]
        )
    ]


    // MARK: Lieux

    let onePieceLocations = [

        WorkLocation(
            name: "Elbaf",
            cover: "one_piece-elbaf-cover",
            image: "one_piece-elbaf-detail",
            summary:
                "Royaume des géants situé dans le Nouveau Monde.",
            details:
                "Elbaf est une île légendaire principalement habitée par des géants et réputée pour la puissance de ses guerriers. Sa culture valorise fortement l'honneur et le combat. L'île est évoquée à plusieurs reprises durant le voyage des Chapeaux de Paille et occupe une place importante dans l'histoire du monde.",
            location: "Nouveau Monde"
        ),

        WorkLocation(
            name: "Onigashima",
            cover: "one_piece-Onigashima-cover",
            image: "one_piece-Onigashima-detail",
            summary:
                "Forteresse servant de base à l'Équipage aux Cent Bêtes de Kaido.",
            details:
                "Onigashima est une île située près du Pays des Wa et utilisée comme quartier général par Kaido et son équipage. Elle devient le théâtre d'une immense bataille lorsque l'alliance menée par les samouraïs et les pirates du Chapeau de Paille lance son attaque afin de renverser Kaido et Orochi.",
            location: "Pays des Wa"
        ),

        WorkLocation(
            name: "Pays des Wa",
            cover: "one_piece-wano_kuni-cover",
            image: "one_piece-wano_kuni-detail",
            summary:
                "Pays isolé connu pour ses samouraïs et longtemps dominé par Kaido et Orochi.",
            details:
                "Le Pays des Wa est une nation isolée du reste du monde et célèbre pour ses puissants samouraïs. Pendant de nombreuses années, Kaido et Kurozumi Orochi imposent leur domination sur le pays. L'arrivée de Luffy et de ses alliés permet aux héritiers de Kozuki Oden de lancer une rébellion destinée à libérer la population.",
            location: "Nouveau Monde"
        )
    ]


    // MARK: Événements

    let onePieceEvents = [

        WorkEvent(
            title: "Gear 5",
            cover: "one_piece-gear5-cover",
            image: "one_piece-gear5-detail",
            description:
                "Pendant son affrontement contre Kaido, Luffy atteint une nouvelle transformation liée à l'éveil de son Fruit du Démon. Cette forme, appelée Gear 5, lui offre une liberté de mouvement exceptionnelle et transforme profondément sa manière de combattre. Son apparition représente un tournant majeur dans la bataille d'Onigashima.",
            period: "Arc du Pays des Wa",
            year: 3
        ),

        WorkEvent(
            title: "Mort de Luffy et réveil",
            cover: "one_piece-luffy_pleure-cover",
            image: "one_piece-luffy_pleure-detail",
            description:
                "Au cours de la bataille contre Kaido, Luffy subit une défaite extrêmement violente qui semble mettre fin à son combat. Pourtant, cet instant déclenche un phénomène inattendu lié à son Fruit du Démon et conduit directement à l'apparition de sa nouvelle transformation.",
            period: "Bataille d'Onigashima",
            year: 3
        ),

        WorkEvent(
            title: "Guerre de Marineford",
            cover: "one_piece-marineford-cover",
            image: "one_piece-marineford-detail",
            description:
                "La Marine organise l'exécution publique de Portgas D. Ace à Marineford. Barbe Blanche mobilise alors ses forces afin de sauver son commandant. Luffy rejoint le champ de bataille et tente désespérément de libérer son frère. Cette guerre rassemble certaines des plus grandes puissances du monde et bouleverse profondément l'équilibre de l'ère de la piraterie.",
            period: "Guerre au Sommet",
            year: 1
        )
    ]


    // MARK: One Piece

    let onePiece = Work(
        type: .anime,
        title: "One Piece",
        image: "one_piece-cover",
        genres: [
            .action,
            .adventure,
            .fantasy,
            .drama
        ],
        ageRating: 12,
        nbSeasons: 21,
        nbEpisodes: 0,
        airedDate: makeGregorianDate(
            year: 1999,
            month: 10,
            day: 20
        ),
        summary:
            "Monkey D. Luffy prend la mer afin de trouver le légendaire One Piece et devenir le Roi des Pirates. Accompagné de son équipage, il traverse les mers à la recherche d'aventures, de liberté et du mystérieux trésor laissé par Gol D. Roger.",
        locations: onePieceLocations,
        characters: onePieceCharacters,
        datesChronology: onePieceEvents,
        organizations: onePieceOrganizations,
        streamingPlatforms: [
            "logo_crunchyroll",
            "logo_netflix"
        ],
        duration: 24,
        url: nil
    )
    
    
    
    
        // MARK: - Frieren
    
    let frierenParty = WorkOrganization(
        team: "Groupe de Frieren",
        cover: "frieren-frieren_party-cover",
        imageTeam: "frieren-frieren_party-detail",
        details:
            "Bien plus qu'une simple équipe d'aventuriers, le groupe de Frieren est une famille improvisée dont les membres apprennent à accorder leurs rythmes et leurs silences. Frieren en porte la mémoire et l'expérience millénaire, Fern en assure souvent la discipline quotidienne, tandis que Stark devient le rempart physique derrière lequel les deux magiciennes peuvent déployer leurs sorts. Leur marche vers Aureole les conduit à travers des villages oubliés, des cols infestés de monstres et des terres où subsistent les traces du groupe de Himmel. Chaque détour, même motivé par un grimoire apparemment dérisoire, transforme le voyage en une lente exploration du deuil, de la transmission et de la valeur des instants partagés.",
        role: "Frieren",
        speciality: "Magie et exploration",
        staff: 3
    )
    
    let heroParty = WorkOrganization(
        team: "Groupe des héros",
        cover: "frieren-hero_party-cover",
        imageTeam: "frieren-hero_party-detail",
        details:
            "Réunis autour de Himmel, Frieren, Heiter et Eisen ont traversé le continent pendant dix années avant d'atteindre le château du Roi des Démons et de mettre fin à son règne. Leur force ne venait pas seulement de leurs talents complémentaires, mais de leur capacité à transformer les épreuves en souvenirs : Himmel donnait une direction morale au groupe, Eisen absorbait les coups impossibles, Heiter maintenait ses compagnons en vie et Frieren déchiffrait les magies les plus anciennes. Des décennies plus tard, statues, récits populaires et petites promesses tenues témoignent encore de leur passage. Pour Frieren, retracer leur route revient à découvrir tardivement tout ce que ses compagnons avaient semé dans le monde et tout ce qu'elle n'avait pas compris d'eux.",
        role: "Himmel",
        speciality: "Quêtes héroïques",
        staff: 4
    )
    
    let sevenSages = WorkOrganization(
        team: "Sept Sages de la Destruction",
        cover: "frieren-seven_sages_of_the_destruction-cover",
        imageTeam: "frieren-seven_sages_of_the_destruction-detail",
        details:
            "Les Sept Sages de la Destruction comptaient parmi les serviteurs les plus redoutables du Roi des Démons, chacun possédant une magie singulière capable de contourner les règles ordinaires du combat. Leurs pouvoirs ne sont pas de simples armes : ils incarnent une logique démoniaque froide, raffinée durant des siècles et souvent incompréhensible pour les humains. Même après la chute de leur souverain, l'influence des Sages demeure dans les territoires ravagés, les malédictions persistantes et la peur transmise de génération en génération. Aura la Guillotine, avec sa balance de l'obéissance et son armée de morts, illustre parfaitement cette menace fondée autant sur la puissance que sur une incapacité fondamentale à comprendre les émotions humaines.",
        role: "Roi des Démons",
        speciality: "Magies démoniaques",
        staff: 7
    )
    
    let frierenOrganizations = [frierenParty, heroParty, sevenSages]
    
    let frierenCharacters = [
        WorkCharacter(
            name: "Frieren",
            summary:
                "Elfe magicienne qui entreprend un nouveau voyage pour mieux comprendre les humains.",
            description:
                "Frieren est une elfe âgée de plus d'un millénaire, façonnée par la destruction de son village et par l'enseignement de la grande magicienne Flamme. Celle-ci lui a appris à dissimuler presque constamment son immense mana afin de tromper les démons, une discipline que Frieren a perfectionnée pendant des siècles jusqu'à en faire une seconde nature. Malgré sa réputation de Tueuse de démons, elle conserve une curiosité presque enfantine pour les grimoires, y compris les sorts les plus ordinaires, et accepte volontiers des détours interminables pour enrichir sa collection. La mort de Himmel fissure cependant son rapport détaché au temps : comprenant que dix années représentaient une vie entière de souvenirs pour ses compagnons humains, elle entreprend un voyage vers Aureole pour apprendre à connaître les êtres dont l'existence lui paraissait autrefois trop brève. Sous son calme et ses habitudes paresseuses se révèle ainsi une femme attentive, qui exprime rarement ses sentiments mais honore les promesses et les gestes de ceux qu'elle a aimés.",
            cover: "frieren-frieren-cover",
            identityImage: "frieren-id_card",
            detailImage: "frieren-character",
            todayImage: "frieren-today",
            groups: [frierenParty, heroParty],
            skills: [
                "Magie offensive", "Analyse des sorts",
                "Dissimulation de mana",
            ],
            species: ["Elfe"]
        ),
        WorkCharacter(
            name: "Fern",
            summary:
                "Jeune mage humaine, disciple de Frieren et membre discipliné du groupe.",
            description:
                "Fern a perdu ses parents pendant la guerre des Terres du Sud et ne doit sa survie qu'à Heiter, qui l'a recueillie alors qu'elle avait renoncé à continuer de vivre. Pour remercier le vieux prêtre et lui montrer qu'elle pourrait avancer sans lui, elle s'est consacrée à la magie avec une détermination exceptionnelle, jusqu'à atteindre très jeune le niveau d'une mage adulte sous la tutelle de Frieren. Sa maîtrise repose moins sur la recherche de sorts spectaculaires que sur une précision redoutable : elle dissimule son mana, lance Zoltraak à une vitesse inhabituelle et enchaîne attaque et défense avec une sobriété presque implacable. Dans le groupe, sa maturité la pousse à gérer l'argent, les horaires, les repas et même le réveil de sa maîtresse, ce qui inverse souvent leur relation. Derrière ce sérieux se cache pourtant une adolescente sensible, susceptible de bouder lorsqu'elle se sent négligée, et dont l'affection pour Frieren et Stark se lit davantage dans ses attentions quotidiennes que dans de grandes déclarations.",
            cover: "frieren-fern-cover",
            identityImage: "fern_id-card",
            detailImage: "fern-character",
            todayImage: "fern-today",
            groups: [frierenParty],
            skills: ["Zoltraak", "Défense magique", "Incantation rapide"],
            species: ["Humaine"]
        ),
        WorkCharacter(
            name: "Stark",
            summary:
                "Guerrier humain puissant qui accompagne Frieren et Fern.",
            description:
                "Stark est le disciple d'Eisen, le guerrier nain du groupe des héros, qui l'a soumis à un entraînement si rigoureux que son corps peut encaisser des blessures auxquelles peu d'aventuriers survivraient. Chassé très jeune de son village détruit par les démons, il porte une peur profonde de l'échec et se décrit volontiers comme un lâche, alors même qu'il choisit presque toujours de rester lorsque les autres ont besoin de lui. Sa véritable bravoure ne réside donc pas dans l'absence de peur, mais dans sa capacité à avancer malgré elle. Armé de sa grande hache, Stark attire l'attention des monstres, brise leurs défenses et offre à Frieren et Fern l'espace nécessaire pour lancer leurs sorts. Sa gentillesse spontanée lui permet aussi de nouer des liens dans chaque ville traversée ; sous les disputes comiques avec Fern apparaît un jeune homme qui cherche peu à peu sa propre place dans l'héritage d'Eisen.",
            cover: "frieren-stark-cover",
            identityImage: "stark-id_card",
            detailImage: "stark-character",
            todayImage: "stark-today",
            groups: [frierenParty],
            skills: [
                "Combat à la hache", "Résistance physique",
                "Force surhumaine",
            ],
            species: ["Humain"]
        ),
        WorkCharacter(
            name: "Himmel",
            summary:
                "Héros humain dont les actes continuent d'influencer Frieren après sa mort.",
            description:
                "Himmel est le héros qui a rassemblé Frieren, Heiter et Eisen pour entreprendre la longue marche vers le château du Roi des Démons. Son goût affiché pour les poses héroïques et les statues pourrait passer pour de la vanité, mais il répond à une conviction plus profonde : laisser derrière lui des images capables de rassurer les générations futures et de rappeler que le mal peut être vaincu. Il prend le temps d'aider des villages sans importance stratégique, de tenir des promesses vieilles de plusieurs décennies et de donner une valeur durable aux rencontres les plus brèves. Son affection pour Frieren se manifeste dans des gestes qu'elle ne comprend qu'après sa mort, notamment le soin avec lequel il transforme leurs aventures en souvenirs accessibles à l'elfe. Absent du voyage présent, Himmel en demeure la boussole morale ; chaque lieu revisité révèle une nouvelle facette de l'homme que Frieren croyait ne pas connaître.",
            cover: "frieren-himmel-cover",
            identityImage: "himmel-id_card",
            detailImage: "himmel-character",
            todayImage: "himmel-today",
            groups: [heroParty],
            skills: ["Maîtrise de l'épée", "Commandement", "Courage"],
            species: ["Humain"]
        ),
    ]
    
    let frierenLocations = [
        WorkLocation(
            name: "Cité de la magie",
            cover: "frieren-city_of_magic-cover",
            image: "frieren-city_of_magic-detail",
            summary:
                "Grande ville du Nord consacrée à l'étude et à la pratique de la magie.",
            details:
                "Aux portes des terres septentrionales, la cité de la magie concentre bibliothèques, ateliers d'enchantement, marchés de grimoires et institutions où se croisent apprentis, chercheurs et mages expérimentés. L'air y semble chargé de mana et chaque rue promet à Frieren un sort oublié, une copie douteuse des écrits de Flamme ou une mission susceptible de retarder encore le départ. Pour les voyageurs, la ville constitue surtout une étape essentielle avant les routes plus dangereuses du Nord : on y recueille des informations, on renouvelle son équipement et l'on cherche les autorisations nécessaires. Ce décor savant met en contraste la passion presque artisanale de Frieren pour la magie avec les systèmes modernes qui cherchent à la classer, la certifier et la transmettre.",
            location: "Plateau du Nord"
        ),
        WorkLocation(
            name: "Capitale royale",
            cover: "frieren-royal_capital-cover",
            image: "frieren-royal_capital-detail",
            summary:
                "Capitale du royaume où le groupe des héros fut célébré après sa victoire.",
            details:
                "La capitale royale est le lieu où le groupe de Himmel revient après dix années de voyage, accueilli par une foule qui transforme quatre aventuriers épuisés en figures de légende. Places, statues et cérémonies y fixent leur victoire dans la mémoire collective, tandis que les météores de l'Ère marquent leur séparation et la promesse de se revoir cinquante ans plus tard. Lorsqu'elle revient dans cette ville, Frieren mesure le contraste entre l'immobilité des monuments et le vieillissement fulgurant de ses compagnons humains. La capitale devient ainsi un seuil narratif : le point où se termine la quête contre le Roi des Démons, mais aussi celui où commence, sans que l'elfe le sache encore, sa quête bien plus intime pour comprendre le temps humain.",
            location: "Royaume central"
        ),
        WorkLocation(
            name: "Région de Türk",
            cover: "frieren-turk_region-cover",
            image: "frieren-turk_region-detail",
            summary:
                "Région traversée par Frieren et ses nouveaux compagnons durant leur voyage.",
            details:
                "La région de Türk déploie un paysage de routes rurales, de villages modestes et de chemins que le temps a partiellement effacés depuis le premier voyage de Frieren. Ici, l'aventure ne se mesure pas à la grandeur d'un ennemi, mais aux traces laissées par des gestes accomplis plusieurs décennies auparavant : une statue entretenue, une famille qui se souvient ou une promesse transmise aux descendants. En parcourant ces lieux avec Fern et Stark, Frieren superpose constamment le présent au souvenir du groupe de Himmel. La région donne au voyage sa tonalité particulière, faite de haltes silencieuses, de petites missions et de révélations tardives sur la profondeur des liens humains.",
            location: "Région de Türk"
        ),
    ]
    
    let frierenEvents = [
        WorkEvent(
            title: "Début du nouveau voyage",
            cover: "frieren-beyond_journey_s_end_arc-cover",
            image: "frieren-beyond_journey_s_end_arc-detail",
            description:
                "Cinquante ans après la victoire sur le Roi des Démons, Frieren retrouve Himmel, Heiter et Eisen pour observer une nouvelle fois les météores de l'Ère. Pour elle, cette attente n'a été qu'une parenthèse ; pour ses compagnons, elle représente presque toute une vie. La mort de Himmel, peu après leurs retrouvailles, provoque chez l'elfe un chagrin qu'elle n'avait jamais anticipé et la certitude douloureuse de n'avoir consacré que dix années à le connaître. Après avoir formé Fern et repris la route, Frieren choisit de remonter l'ancien itinéraire des héros jusqu'à Aureole, lieu où les âmes reposeraient. Le nouveau voyage naît de ce regret, mais il devient progressivement une manière d'écouter les vivants, de préserver les souvenirs et de comprendre que la durée d'une relation ne détermine pas sa valeur.",
            period: "Après la mort de Himmel",
            year: 29
        ),
        WorkEvent(
            title: "Arc Aura la Guillotine",
            cover: "frieren-aura_the_guillotine_arc-cover",
            image: "frieren-aura_the_guillotine_arc-detail",
            description:
                "Aura la Guillotine revient à la tête d'une armée composée des corps de ses anciennes victimes, qu'elle contrôle grâce à Auserlese. Sa balance de l'obéissance pèse les âmes selon leur quantité de mana : celui qui en possède le moins perd sa volonté et se soumet définitivement au vainqueur. Convaincue d'avoir devant elle une mage dont la puissance n'a guère évolué depuis leur précédente rencontre, Aura ignore que Frieren dissimule son mana sans interruption depuis près d'un millénaire, conformément à la stratégie enseignée par Flamme. Lorsque l'elfe libère enfin sa puissance réelle, le mécanisme supposé garantir la victoire du démon devient sa condamnation. L'affrontement révèle toute la philosophie de combat de Frieren : patience, analyse et tromperie dirigées contre des démons incapables d'imaginer qu'un être puisse consacrer une vie entière à masquer sa force.",
            period: "Voyage dans les terres du Nord",
            year: 29
        ),
        WorkEvent(
            title: "Voyage vers la cité de la magie",
            cover: "frieren-travel_city_of_magic-cover",
            image: "frieren-travel_city_of_magic-detail",
            description:
                "À mesure que le groupe progresse vers le Nord, les routes deviennent plus hostiles et la magie cesse d'être un simple outil pour devenir une condition de survie. Rejoindre la cité de la magie permet à Frieren et Fern de rechercher les informations, grimoires et certifications nécessaires pour franchir les territoires placés sous la surveillance des institutions magiques. Le trajet alterne combats, services rendus aux villages et détours apparemment futiles, mais chacun de ces arrêts révèle un fragment du passage de Himmel ou de l'évolution du monde depuis sa mort. Fern affirme son autonomie de mage, Stark apprend à ne plus confondre peur et lâcheté, tandis que Frieren découvre que le chemin compte autant que la destination. La cité apparaît alors comme une nouvelle frontière, celle où leur petite compagnie doit confronter ses méthodes à la magie organisée de l'époque moderne.",
            period: "Préparation du passage vers le Nord",
            year: 29
        ),
    ]
    
    let frieren = Work(
        type: .anime,
        title: "Frieren : Beyond Journey's End",
        image: "frieren-cover",
        genres: [.fantasy, .adventure, .drama],
        ageRating: 12,
        nbSeasons: 2,
        nbEpisodes: 38,
        airedDate: makeGregorianDate(year: 2023, month: 9, day: 29),
        summary:
            "Après la défaite du Roi des Démons, l'elfe Frieren mesure trop tard la brièveté de la vie humaine. Elle entreprend un nouveau voyage pour comprendre les liens qu'elle avait négligés.",
        locations: frierenLocations,
        characters: frierenCharacters,
        datesChronology: frierenEvents,
        organizations: frierenOrganizations,
        streamingPlatforms: ["logo_crunchyroll", "logo_disney_plus", "logo_canal_vod", "logo_netflix", "logo_prime_video"],
        duration: 24,
        url: URL(
            string:
                "https://www.youtube.com/watch?v=Iwr1aLEDpe4"
        )
    )
    
        // MARK: - Jujutsu Kaisen
    
    let jujutsuSorcerers = WorkOrganization(
        team: "Exorcistes",
        cover: "jjk-exorcistes-cover",
        imageTeam: "jjk-exorcistes-detail",
        details:
            "Les exorcistes forment une société secrète chargée de contenir les fléaux que les émotions négatives humaines font naître dans les écoles, les hôpitaux et les lieux marqués par la peur. Leur quotidien alterne cours théoriques, entraînement au combat et missions dont la dangerosité est évaluée selon un système de grades parfois terriblement imprécis. Certains héritent d'une technique transmise par un grand clan, tandis que d'autres développent une manière entièrement personnelle de façonner l'énergie occulte. Derrière leur mission protectrice se cache une institution conservatrice, gouvernée par des autorités prêtes à sacrifier des individus comme Yuji pour préserver l'ordre établi. Les élèves de Tokyo incarnent une génération qui refuse peu à peu cette fatalité et cherche à redéfinir ce que signifie sauver quelqu'un.",
        role: "Satoru Gojo",
        speciality: "Exorcisme",
        staff: 50
    )
    
    let curses = WorkOrganization(
        team: "Fléaux",
        cover: "jjk-fleaux-cover",
        imageTeam: "jjk-fleaux-detail",
        details:
            "Les fléaux sont la matérialisation de la peur, de la haine, du regret et des autres émotions que les humains laissent s'accumuler sous forme d'énergie occulte. Les plus faibles agissent comme des prédateurs instinctifs, invisibles à la majorité de la population, mais les fléaux de haut niveau possèdent une intelligence, une technique innée et parfois une extension du territoire capable d'imposer leurs propres règles à l'espace. Mahito, Jogo, Hanami et Dagon ne se perçoivent pas comme de simples monstres : ils rêvent d'un monde où les malédictions remplaceraient l'humanité. Leur alliance donne à ces créatures une stratégie commune, mais leurs tempéraments restent profondément liés aux peurs dont elles sont issues. Les combattre oblige donc les exorcistes à affronter, sous une forme tangible, les violences et contradictions produites par la société humaine.",
        role: "Mahito",
        speciality: "Techniques maudites",
        staff: 4
    )
    
    let curseMasters = WorkOrganization(
        team: "Maîtres des fléaux",
        cover: "jjk-maitres_fleaux-cover",
        imageTeam: "jjk-maitres_fleaux-detail",
        details:
            "Les maîtres des fléaux sont des humains capables de manier l'énergie occulte qui ont rompu avec les règles de l'école et emploient leurs dons pour tuer, manipuler ou poursuivre un projet idéologique. Contrairement aux fléaux, ils comprennent parfaitement les institutions humaines et savent exploiter leurs rivalités, leurs angles morts et leur bureaucratie. Certains collectionnent ou contrôlent des malédictions, d'autres vendent leurs services, posent des rideaux ou infiltrent les barrières protégeant les écoles. Leur coopération avec Mahito et ses alliés rend la menace particulièrement dangereuse, car elle associe la puissance surnaturelle des fléaux à une planification patiente. Ils révèlent aussi la fragilité du monde de l'exorcisme : former quelqu'un au combat ne garantit jamais qu'il acceptera l'ordre qu'on lui demande de défendre.",
        role: "Suguru Geto",
        speciality: "Manipulation des fléaux",
        staff: 20
    )
    
    let jujutsuOrganizations = [jujutsuSorcerers, curses, curseMasters]
    
    let jujutsuCharacters = [
        WorkCharacter(
            name: "Yuji Itadori",
            summary:
                "Étudiant devenu réceptacle de Ryomen Sukuna après avoir avalé un objet maudit.",
            description:
                "Avant d'entrer dans le monde de l'exorcisme, Yuji est un lycéen de Sendai doté d'aptitudes physiques extraordinaires et guidé par les dernières paroles de son grand-père, qui lui demande d'aider les autres et de ne pas mourir seul. Pour sauver ses camarades, il avale un doigt de Ryomen Sukuna et devient le rare réceptacle capable de contenir le Roi des fléaux sans perdre immédiatement le contrôle de son corps. Condamné à une exécution différée, il accepte de retrouver et d'absorber les autres doigts afin que Sukuna puisse un jour disparaître avec lui. Yuji apprend à canaliser son énergie occulte dans un corps déjà surhumain, donnant naissance au Poing divergent puis à l'Éclair noir, mais sa vraie force demeure son empathie. Chaque mort qu'il ne peut empêcher met à l'épreuve son idéal d'offrir aux gens une fin digne et l'oblige à vivre avec la responsabilité des atrocités commises lorsque Sukuna prend le dessus.",
            cover: "jjk-yuji_itadori-cover",
            identityImage: "yuji_itadori-id_card",
            detailImage: "jjk-yuji_itadori-detail",
            todayImage: "yuji_itadori-today",
            groups: [jujutsuSorcerers],
            skills: ["Force physique", "Poing divergent", "Éclair noir"],
            species: ["Humain", "Réceptacle de fléau"]
        ),
        WorkCharacter(
            name: "Megumi Fushiguro",
            summary:
                "Exorciste de la famille Zenin utilisant la technique des Dix Ombres.",
            description:
                "Megumi a grandi à distance du clan Zenin malgré la technique des Dix Ombres qu'il a héritée de cette prestigieuse famille. Placé sous la protection de Satoru Gojo, il développe une conception volontairement personnelle de la justice : il ne prétend pas sauver tout le monde équitablement, mais choisit de protéger les personnes qu'il juge bonnes, comme sa sœur Tsumiki. Au combat, ses ombres deviennent un arsenal vivant d'où surgissent chiens divins, Nue et autres shikigami, mais elles lui permettent aussi de dissimuler des armes et de remodeler le terrain. Son intelligence tactique compense un instinct de sacrifice inquiétant qui le pousse trop facilement à envisager sa technique la plus dangereuse. En apprenant à risquer la victoire plutôt qu'à offrir sa vie, Megumi commence à déployer son territoire incomplet, le Jardin des Chimères, manifestation d'un potentiel qui attire jusqu'à l'attention de Sukuna.",
            cover: "jjk-megumi_fushiguro-cover",
            identityImage: "megumi_fushiguro-id_card",
            detailImage: "jjk-megumi_fushiguro-detail",
            todayImage: "megumi_fushiguro-today",
            groups: [jujutsuSorcerers],
            skills: [
                "Technique des Dix Ombres", "Invocation de shikigami",
                "Extension du territoire",
            ],
            species: ["Humain"]
        ),
        WorkCharacter(
            name: "Nobara Kugisaki",
            summary:
                "Exorciste déterminée qui utilise un marteau, des clous et une poupée de paille.",
            description:
                "Nobara quitte sa campagne natale pour Tokyo avec une ambition simple et farouche : vivre selon ses propres choix, loin du conformisme qui a isolé son amie Saori. Elle refuse que son goût pour la mode, sa féminité ou son caractère tranchant soient opposés à sa valeur d'exorciste ; pour elle, il n'existe aucune contradiction entre vouloir être belle et vouloir être forte. Sa technique de la poupée de paille transforme marteau, clous et effigies en instruments d'exorcisme. Grâce à Résonance, un fragment du corps ou de la technique adverse lui permet d'atteindre directement sa cible, tandis qu'Épingle à cheveux fait exploser l'énergie accumulée dans ses clous. Son courage prend une dimension particulière lorsqu'elle accepte de partager la douleur de l'ennemi pour mieux le détruire, notamment face aux frères des Peintures de la Mort. Dans le trio de première année, elle apporte une confiance abrasive, un humour féroce et une loyauté qui ne demande jamais la permission de s'exprimer.",
            cover: "jjk-nobara_kugisaki-cover",
            identityImage: "nobara_kugisaki-id_card",
            detailImage: "jjk-nobara_kugisaki-detail",
            todayImage: "nobara_kugisaki-today",
            groups: [jujutsuSorcerers],
            skills: [
                "Technique de la poupée de paille", "Résonance",
                "Éclair noir",
            ],
            species: ["Humaine"]
        ),
        WorkCharacter(
            name: "Maki Zenin",
            summary:
                "Combattante experte en armes occultes malgré sa très faible énergie occulte.",
            description:
                "Née dans le clan Zenin avec une quantité presque inexistante d'énergie occulte, Maki a été traitée comme une honte par une famille qui mesure la valeur de chacun à sa technique héréditaire. Sa restriction céleste lui offre pourtant une force, des réflexes et des sens physiques hors norme, qu'elle perfectionne par un entraînement acharné. Comme elle ne voit pas naturellement les fléaux, elle porte des lunettes spéciales et combat avec une maîtrise impressionnante des armes occultes, passant d'une lance à une naginata ou à Playful Cloud selon l'adversaire. Elle quitte le clan avec l'objectif provocateur d'y revenir un jour comme dirigeante, transformant le mépris reçu en moteur. Derrière son autorité sévère envers les plus jeunes se trouve une combattante attentive, qui comprend la solitude de ceux que les traditions condamnent et refuse de laisser l'institution décider de leur plafond.",
            cover: "jjk-maki_zenin-cover",
            identityImage: "maki_zenin-id_card",
            detailImage: "jjk-maki_zenin-detail",
            todayImage: "maki_zenin-today",
            groups: [jujutsuSorcerers],
            skills: [
                "Armes occultes", "Combat rapproché", "Restriction céleste",
            ],
            species: ["Humaine"]
        ),
    ]
    
    let jujutsuLocations = [
        WorkLocation(
            name: "École d'exorcisme de Tokyo",
            cover: "jjk-ecole_exorcisme-cover",
            image: "jjk-ecole_exorcisme-detail",
            summary:
                "Établissement où sont formés Yuji, Megumi, Nobara et les autres exorcistes.",
            details:
                "Dissimulée dans les hauteurs boisées de Tokyo derrière des barrières, l'école métropolitaine d'exorcisme ressemble davantage à un sanctuaire qu'à un lycée ordinaire. Ses bâtiments traditionnels abritent salles de cours, dortoirs, terrains d'entraînement, entrepôts d'armes occultes et installations médicales dirigées par Shoko Ieiri. Les promotions sont minuscules, car peu d'élèves possèdent les dispositions nécessaires et beaucoup risquent leur vie dès leurs premières missions. Sous l'autorité de Masamichi Yaga et avec des professeurs comme Satoru Gojo, le campus devient à la fois un refuge et un champ de tensions contre les dirigeants conservateurs du monde occulte. C'est ici que Yuji apprend à maîtriser son énergie, que Megumi et Nobara deviennent ses partenaires, et qu'une poignée d'adolescents se prépare à affronter des horreurs que le reste de la ville ne peut même pas voir.",
            location: "Tokyo"
        ),
        WorkLocation(
            name: "Lycée Satozakura",
            cover: "jjk-lycee_satozakura-cover",
            image: "jjk-lycee_satozakura-detail",
            summary:
                "Lycée lié à l'enquête de Yuji et Nanami sur les victimes transformées par Mahito.",
            details:
                "Le lycée Satozakura est marqué par la solitude de Junpei Yoshino, élève harcelé qui se réfugie dans le cinéma et développe une profonde méfiance envers les autres. Après la mort atroce de plusieurs camarades dans une salle de projection, l'enquête de Yuji et Nanami conduit jusqu'à Mahito, qui observe Junpei comme une expérience humaine facile à façonner. Les couloirs familiers de l'établissement deviennent alors le théâtre d'une vengeance provoquée de toutes pièces, où l'énergie occulte donne une forme concrète à des années d'humiliation. Yuji tente d'y offrir à Junpei une autre voie et imagine même l'accueillir à l'école d'exorcisme. Cette possibilité rend la tragédie plus brutale encore : Satozakura incarne le moment où Yuji découvre que sa bonne volonté ne suffit pas toujours à arracher quelqu'un aux mains d'un fléau.",
            location: "Kawasaki"
        ),
        WorkLocation(
            name: "Lycée Susigawa",
            cover: "jjk-lycee_susigawa-cover",
            image: "jjk-lycee_susigawa-detail",
            summary:
                "Établissement associé à une mission provoquée par la présence d'énergie occulte.",
            details:
                "Le lycée Susigawa, établissement fréquenté par Yuji avant son recrutement, abrite un objet maudit que le club de phénomènes occultes retire imprudemment de son enveloppe protectrice. Le doigt de Sukuna attire aussitôt les fléaux des environs, qui convergent vers l'école à la nuit tombée et transforment un jeu d'adolescents en piège mortel. Megumi s'y rend pour récupérer la relique, mais la rupture du sceau le force à combattre dans un bâtiment envahi par les malédictions. C'est sur ce toit que Yuji, incapable d'abandonner ses amis, avale le doigt et bouleverse définitivement son existence. L'école représente ainsi le point de collision entre sa vie ordinaire et le monde occulte, mais aussi la première preuve que son instinct de sauver autrui l'emporte sur sa propre survie.",
            location: "Préfecture de Saitama"
        ),
    ]
    
    let jujutsuEvents = [
        WorkEvent(
            title: "Tournoi inter-lycées",
            cover: "jjk-arc_tournoi-cover",
            image: "jjk-arc_tournoi-detail",
            description:
                "Le tournoi annuel réunit les élèves des écoles de Tokyo et Kyoto dans une compétition censée renforcer les liens entre exorcistes. Le retour surprise de Yuji, maintenu officiellement mort pendant son entraînement secret, bouleverse ses camarades tandis que les responsables de Kyoto ordonnent discrètement son assassinat. La première épreuve devient une chasse collective où rivalités de clans, blessures familiales et conceptions opposées du métier émergent derrière les affrontements. Aoi Todo transforme son duel contre Yuji en leçon improvisée sur la circulation de l'énergie occulte, permettant au jeune réceptacle d'approcher l'Éclair noir. L'invasion de Hanami et de maîtres des fléaux brise ensuite les règles du jeu et oblige les deux écoles à combattre ensemble. Le tournoi révèle ainsi les fractures de l'institution tout en montrant une génération capable de dépasser les ordres de ses aînés.",
            period: "Première année de Yuji",
            year: 2018
        ),
        WorkEvent(
            title: "Naissance de la Matrice",
            cover: "jjk-naissance_matrice-cover",
            image: "jjk-naissance_matrice-detail",
            description:
                "À peine formés, Yuji, Megumi et Nobara sont envoyés au centre de détention d'Eishu, où une matrice maudite a transformé l'intérieur du bâtiment en domaine incomplet. La mission devait se limiter à constater les victimes et à évacuer d'éventuels survivants, mais la naissance d'un porteur de doigt de classe spéciale place les trois élèves face à un adversaire très supérieur à leur niveau. Nobara est séparée du groupe, Megumi tente de maintenir une voie de sortie et Yuji cède son corps à Sukuna dans l'espoir de vaincre le fléau. Le Roi des fléaux arrache alors le cœur de son propre réceptacle afin de l'empêcher de reprendre le contrôle, puis s'intéresse dangereusement au potentiel de Megumi. Cette première catastrophe détruit l'illusion d'un apprentissage progressif et expose la manière dont les autorités considèrent Yuji comme une cible sacrifiable.",
            period: "Début de la formation de Yuji",
            year: 2018
        ),
        WorkEvent(
            title: "Petit Poisson et Retour de Bâton",
            cover: "jjk-petit_poisson-cover",
            image: "jjk-petit_poisson-detail",
            description:
                "Une série de corps humains atrocement déformés conduit Yuji à travailler avec Kento Nanami, exorciste méthodique qui lui enseigne la différence entre courage et compétence professionnelle. Leur enquête révèle Mahito, jeune fléau fasciné par la forme de l'âme et capable de remodeler les êtres humains par simple contact. En parallèle, Mahito se rapproche de Junpei Yoshino, nourrit son ressentiment et lui donne le pouvoir de transformer sa souffrance en vengeance. Yuji se lie sincèrement avec Junpei autour de leur passion du cinéma et croit pouvoir lui ouvrir une place parmi les exorcistes. Mahito détruit cette possibilité sous ses yeux, puis exploite le désespoir de Yuji pour tenter de forcer Sukuna à conclure un pacte. L'arc fait basculer le protagoniste dans une réalité morale plus sombre : certains ennemis ne cherchent ni justification ni rédemption, et les combattre exige d'accepter la colère sans perdre son humanité.",
            period: "Affaire Junpei Yoshino",
            year: 2018
        ),
    ]
    
    let jujutsuKaisen = Work(
        type: .anime,
        title: "Jujutsu Kaisen",
        image: "jujutsu_kaisen-cover",
        genres: [.action, .darkFantasy, .horror, .drama],
        ageRating: 16,
        nbSeasons: 3,
        nbEpisodes: 59,
        airedDate: makeGregorianDate(year: 2020, month: 10, day: 3),
        summary:
            "Yuji Itadori devient le réceptacle du roi des fléaux, Ryomen Sukuna, et rejoint une école d'exorcisme pour combattre les malédictions nées des émotions humaines.",
        locations: jujutsuLocations,
        characters: jujutsuCharacters,
        datesChronology: jujutsuEvents,
        organizations: jujutsuOrganizations,
        streamingPlatforms: ["logo_crunchyroll", "logo_disney_plus", "logo_canal_vod", "logo_netflix", "logo_prime_video"],
        duration: 24,
        url: URL(
            string:
                "https://www.youtube.com/watch?v=ztO4Bk0ALGI"
        )
    )
    
        // MARK: - The Rising of the Shield Hero
    
    let cardinalHeroes = WorkOrganization(
        team: "Quatre Héros cardinaux",
        cover: "",
        imageTeam: "",
        details:
            "Les Quatre Héros cardinaux sont invoqués depuis le Japon contemporain pour manier des armes légendaires indissociables de leur corps : l'Épée, la Lance, l'Arc et le Bouclier. Chacun découvre le monde à travers des références proches d'un jeu vidéo, mais leurs expériences et leurs certitudes divergent rapidement, empêchant la coopération dont les Vagues exigeraient pourtant l'urgence. Leurs armes absorbent des matériaux, déverrouillent de nouvelles formes et imposent à leur porteur une progression particulière. Alors que Ren, Motoyasu et Itsuki bénéficient immédiatement de la reconnaissance du royaume, Naofumi est isolé par les préjugés religieux entourant le Bouclier. L'organisation représente donc autant l'espoir officiel de Melromarc que l'échec d'individus incapables, au départ, de dépasser leur rivalité.",
        role: "Aucun",
        speciality: "Armes cardinales",
        staff: 4
    )
    
    let shieldParty = WorkOrganization(
        team: "Groupe du Héros au Bouclier",
        cover: "",
        imageTeam: "",
        details:
            "Le groupe du Héros au Bouclier se construit en marge de la cour, loin des soutiens et des privilèges accordés aux autres héros. Naofumi rassemble d'abord Raphtalia, survivante d'une Vague qu'il aide à retrouver sa force, puis Filo, filoliale élevée depuis l'œuf, avant d'accueillir Rishia et d'autres compagnons rejetés ou sous-estimés. Leur efficacité repose sur une complémentarité patiemment développée : le Bouclier protège et soutient, Raphtalia frappe avec précision, Filo exploite sa vitesse, et Rishia adapte sa magie aux failles de l'adversaire. Les liens du groupe naissent dans la défiance, mais se transforment en loyauté choisie. Chaque victoire reconstruit à la fois la réputation de Naofumi et sa capacité à croire de nouveau en quelqu'un.",
        role: "Naofumi Iwatani",
        speciality: "Défense et soutien",
        staff: 4
    )
    
    let threeHeroesChurch = WorkOrganization(
        team: "Église des Trois Héros",
        cover: "",
        imageTeam: "",
        details:
            "L'Église des Trois Héros domine une partie de la vie religieuse et politique de Melromarc en glorifiant l'Épée, la Lance et l'Arc, tandis que le Héros au Bouclier est présenté comme une figure démoniaque. Cette doctrine s'enracine dans les tensions historiques avec les nations demi-humaines qui vénèrent au contraire le Bouclier. Derrière ses cérémonies et son autorité morale, l'Église diffuse de la propagande, influence la cour et exploite l'accusation portée contre Naofumi pour l'écarter. Lorsque les héros ne correspondent plus à l'image qu'elle veut imposer, elle se retourne même contre ceux qu'elle prétend adorer. Sa radicalisation montre comment une institution peut transformer une légende protectrice en outil de pouvoir et mettre tout un royaume en danger au nom de sa propre pureté.",
        role: "Biscas T. Balmus",
        speciality: "Magie cérémonielle",
        staff: 200
    )
    
    let shieldOrganizations = [
        cardinalHeroes, shieldParty, threeHeroesChurch,
    ]
    
    let shieldCharacters = [
        WorkCharacter(
            name: "Naofumi Iwatani",
            summary:
                "Héros au Bouclier invoqué à Melromarc et injustement rejeté dès son arrivée.",
            description:
                "Naofumi arrive à Melromarc comme un jeune homme plutôt ouvert, mais une fausse accusation et l'abandon de la cour détruisent presque immédiatement sa confiance. Son Bouclier légendaire lui interdit d'utiliser efficacement une arme offensive ; il doit donc apprendre à survivre par la défense, l'artisanat, le commerce et l'observation minutieuse des systèmes de progression. Il absorbe des matériaux pour déverrouiller des formes spécialisées, prépare des remèdes et transforme chaque faiblesse apparente en ressource tactique. Sa colère ouvre l'accès à la série de la Malédiction, une puissance considérable qui menace de consumer ce qu'il cherche encore à protéger. Raphtalia, Filo et les habitants qu'il sauve l'obligent peu à peu à regarder au-delà de sa rancœur. Son parcours est moins celui d'un élu triomphant que celui d'un homme blessé qui reconstruit, relation après relation, une manière de faire confiance.",
            cover: "",
            identityImage: "",
            detailImage: "",
            todayImage: "",
            groups: [cardinalHeroes, shieldParty],
            skills: ["Boucliers évolutifs", "Défense", "Magie de soutien"],
            species: ["Humain"]
        ),
        WorkCharacter(
            name: "Raphtalia",
            summary:
                "Épéiste demi-humaine devenue la plus fidèle alliée de Naofumi.",
            description:
                "Raphtalia est une demi-humaine originaire de Lurolona, village détruit lors de la première Vague, où elle perd ses parents avant d'être capturée et vendue. Lorsque Naofumi l'achète, elle est malade, terrifiée et hantée par les monstres responsables de son traumatisme. Les soins, l'entraînement et la stabilité qu'il lui offre lui permettent de retrouver sa volonté ; sa croissance accélérée de demi-humaine accompagne alors sa progression de niveau jusqu'à faire d'elle une redoutable épéiste. Elle devient l'attaque que le Bouclier ne peut porter, tout en utilisant la magie de lumière et d'illusion pour désorienter ses adversaires. Sa loyauté n'est cependant pas une soumission aveugle : Raphtalia rappelle constamment à Naofumi le héros qu'il peut choisir d'être et s'oppose à lui lorsque l'amertume menace de guider ses actes.",
            cover: "",
            identityImage: "",
            detailImage: "",
            todayImage: "",
            groups: [shieldParty],
            skills: [
                "Maîtrise de l'épée", "Magie de lumière", "Illusions",
            ],
            species: ["Demi-humaine tanuki"]
        ),
        WorkCharacter(
            name: "Filo",
            summary:
                "Reine filoliale capable de prendre l'apparence d'une jeune fille ailée.",
            description:
                "Filo naît d'un œuf de monstre acheté presque par hasard et révèle rapidement une évolution exceptionnelle : elle devient une reine filoliale, immense oiseau capable de prendre l'apparence d'une jeune fille ailée. Gourmande, spontanée et incapable de dissimuler longtemps ce qu'elle pense, elle introduit dans le groupe une énergie enfantine qui contraste avec la méfiance de Naofumi. Sous cette insouciance se cache une combattante d'une puissance surprenante, capable de pulvériser ses ennemis à coups de pattes, de contrôler le vent et de tracter une carriole à une vitesse vertigineuse. Son instinct lui permet souvent de reconnaître les intentions hostiles avant les adultes. Elle considère le groupe comme sa famille et son attachement direct contribue à faire réapparaître chez Naofumi une tendresse qu'il croyait perdue.",
            cover: "",
            identityImage: "",
            detailImage: "",
            todayImage: "",
            groups: [shieldParty],
            skills: ["Magie du vent", "Force physique", "Vitesse"],
            species: ["Reine filoliale"]
        ),
        WorkCharacter(
            name: "Rishia Ivyred",
            summary:
                "Ancienne membre du groupe du Héros à l'Arc recueillie par l'équipe de Naofumi.",
            description:
                "Rishia rejoint d'abord le groupe du Héros à l'Arc, fascinée par Itsuki qui l'a autrefois sauvée, mais elle y est humiliée puis rejetée malgré ses efforts. Naofumi reconnaît dans cette exclusion une injustice familière et lui offre une place au sein de son équipe. Sa timidité, ses hésitations et sa faible confiance masquent un potentiel magique extrêmement polyvalent, ainsi qu'une affinité rare avec le ki que la vieille Hengen Muso l'aide à développer. Rishia ne devient pas forte par une transformation soudaine : elle progresse à force d'étude, d'exercices et de courage répété face à la peur. Lors de la crise de la Tortue Spirituelle, son intelligence et sa détermination deviennent essentielles, prouvant qu'une personne jugée inutile peut être celle qui comprend la faille décisive.",
            cover: "",
            identityImage: "",
            detailImage: "",
            todayImage: "",
            groups: [shieldParty],
            skills: ["Magie polyvalente", "Ki", "Armes de jet"],
            species: ["Humaine"]
        ),
    ]
    
    let shieldLocations = [
        WorkLocation(
            name: "Melromarc",
            cover: "",
            image: "",
            summary:
                "Royaume matriarcal où les quatre Héros cardinaux sont invoqués.",
            details:
                "Melromarc est un royaume humain matriarcal dont les remparts, la cour et les places marchandes deviennent le premier horizon de Naofumi. La capitale affiche une prospérité trompeuse : derrière les étals, les auberges et les salles d'audience s'entremêlent les préjugés contre les demi-humains, l'influence de l'Église des Trois Héros et les manœuvres de la famille royale. C'est ici que Naofumi est acclamé comme sauveur avant d'être publiquement condamné, puis qu'il apprend à négocier chaque repas et chaque pièce d'équipement sans pouvoir compter sur personne. À mesure qu'il protège les villages pendant les Vagues, le contraste grandit entre sa réputation officielle et les actes dont les habitants sont témoins. Melromarc devient ainsi le lieu de sa chute sociale, puis celui où la vérité commence lentement à renverser le récit imposé.",
            location: "Continent principal"
        ),
        WorkLocation(
            name: "Village de Lurolona",
            cover: "",
            image: "",
            summary:
                "Village natal de Raphtalia, détruit lors d'une Vague puis reconstruit par Naofumi.",
            details:
                "Lurolona était un paisible village côtier de demi-humains avant qu'une Vague ne détruise ses maisons, disperse ses survivants et emporte les parents de Raphtalia. Sa reconstruction dépasse largement le simple rétablissement des bâtiments : Naofumi rachète des habitants réduits en esclavage, rassemble les enfants perdus et tente de créer une communauté capable de se défendre lorsque la prochaine catastrophe frappera. Les champs, ateliers et terrains d'entraînement deviennent les fondations d'une autonomie nouvelle. Pour Raphtalia, chaque rue reconstruite confronte le souvenir de l'enfance au devoir de protéger ceux qui reviennent. Lurolona incarne la finalité concrète du combat des héros : non pas accumuler des niveaux, mais rendre aux gens un foyer et la possibilité d'imaginer un avenir.",
            location: "Territoire de Melromarc"
        ),
        WorkLocation(
            name: "Îles Cal Mira",
            cover: "",
            image: "",
            summary:
                "Archipel utilisé par les héros pour gagner de l'expérience lors d'un événement spécial.",
            details:
                "L'archipel de Cal Mira connaît périodiquement un phénomène d'activation qui augmente fortement les gains d'expérience et attire aventuriers comme Héros cardinaux. Sous ses plages lumineuses et son atmosphère de villégiature se prépare pourtant une Vague maritime, annoncée par le sablier du dragon. Naofumi profite de l'expédition pour renforcer son groupe, explorer les fonds sous-marins et tester une coopération encore fragile avec les autres héros. Lorsque la Vague s'ouvre sur l'océan, des navires deviennent des plateformes de combat et les frontières entre alliés et ennemis se brouillent avec l'apparition de Glass, L'Arc et Therese. Cal Mira élargit alors le conflit : les Vagues ne sont plus seulement des invasions de monstres, mais le point de rencontre tragique entre des mondes qui luttent chacun pour leur propre survie.",
            location: "Archipel de Cal Mira"
        ),
    ]
    
    let shieldEvents = [
        WorkEvent(
            title: "Invocation de Naofumi",
            cover: "",
            image: "",
            description:
                "Un livre mystérieux transporte Naofumi dans la salle du trône de Melromarc aux côtés de Ren, Motoyasu et Itsuki. Chacun porte déjà une arme légendaire et reçoit la mission de repousser les Vagues, catastrophes récurrentes qui déversent des monstres sur le royaume. L'enthousiasme initial se brise lorsque les aventuriers choisissent les trois héros offensifs et laissent le porteur du Bouclier presque seul. La princesse Malty se propose de l'accompagner, puis l'accuse faussement et lui vole son équipement, déclenchant une condamnation publique sans véritable enquête. L'invocation censée produire un sauveur engendre ainsi un paria. Cet événement définit toute la trajectoire de Naofumi : apprendre les règles de ce monde tout en refusant le rôle de monstre que ses dirigeants ont écrit pour lui.",
            period: "Début de l'histoire",
            year: 1
        ),
        WorkEvent(
            title: "Première Vague défendue par Naofumi",
            cover: "",
            image: "",
            description:
                "Lorsque le sablier du dragon atteint son terme, la première Vague vécue par Naofumi l'envoie avec les autres héros au milieu d'une région attaquée. Tandis que Ren, Motoyasu et Itsuki cherchent la gloire au cœur du combat, Naofumi et Raphtalia se tournent vers le village de Riyute, dont les habitants risquent d'être massacrés par les monstres qui franchissent les défenses. Le Bouclier organise l'évacuation, retient les assaillants et transforme des soldats ordinaires en ligne de protection. Cette stratégie révèle une conception différente de l'héroïsme : gagner ne consiste pas seulement à abattre le boss, mais à réduire le nombre de vies perdues pendant la bataille. Les survivants découvrent alors un homme très éloigné du criminel décrit par la cour, première fissure dans le mensonge qui l'isole.",
            period: "Premiers mois à Melromarc",
            year: 1
        ),
        WorkEvent(
            title: "Réveil de la Tortue Spirituelle",
            cover: "",
            image: "",
            description:
                "La Tortue Spirituelle, bête gardienne gigantesque comparable à une montagne en marche, se réveille prématurément et avance vers les populations en absorbant les âmes nécessaires à son pouvoir. Sa carapace abrite un véritable territoire, son corps engendre des familiers et la destruction de sa tête ne suffit pas à interrompre sa progression. Naofumi doit coordonner les armées de plusieurs royaumes, combattre simultanément les manifestations extérieures et comprendre le rôle mystérieux d'Ost Hourai. Au cœur de la créature, le groupe découvre que Kyo Ethnina détourne l'énergie collectée et retient les autres Héros cardinaux. La victoire exige de frapper le cœur et le noyau tout en acceptant le sacrifice d'Ost, puis ouvre une poursuite vers un autre monde afin de récupérer l'énergie volée. L'événement transforme une catastrophe naturelle en conflit interdimensionnel et place Rishia au centre de la solution.",
            period: "Après les premières Vagues",
            year: 2
        ),
    ]
    
    let shieldHero = Work(
        type: .anime,
        title: "The Rising of the Shield Hero",
        image: "the_rising_of_the_shield_hero-cover",
        genres: [.fantasy, .action, .adventure, .drama],
        ageRating: 16,
        nbSeasons: 4,
        nbEpisodes: 62,
        airedDate: makeGregorianDate(year: 2019, month: 1, day: 9),
        summary:
            "Invoqué dans un autre monde comme Héros au Bouclier, Naofumi Iwatani doit surmonter une trahison, former sa propre équipe et protéger les royaumes contre des catastrophes appelées Vagues.",
        locations: shieldLocations,
        characters: shieldCharacters,
        datesChronology: shieldEvents,
        organizations: shieldOrganizations,
        streamingPlatforms: ["logo_crunchyroll", "logo_disney_plus", "logo_canal_vod", "logo_netflix", "logo_prime_video"],
        duration: 24,
        url: URL(
            string:
                "https://www.youtube.com/watch?v=WJVyL6bzS3s"
        )
    )
    
        // MARK: - The Witcher
    
    let schoolOfTheWolf = WorkOrganization(
        team: "École du Loup",
        cover: "",
        imageTeam: "",
        details:
            "L'École du Loup a formé à Kaer Morhen des générations de sorceleurs grâce à un entraînement brutal, à l'étude des monstres et aux mutations de l'Épreuve des Herbes. Ses membres apprennent à lire une piste, préparer des huiles et potions, manier les signes et combattre avec deux épées selon la nature de leur cible. Les massacres et la disparition progressive du savoir nécessaire aux mutations ont réduit l'ordre à une poignée de survivants dispersés sur le Continent. Geralt, Vesemir, Eskel et Lambert partagent moins une hiérarchie qu'une fraternité forgée par les mêmes souffrances. Lorsque Ciri arrive à Kaer Morhen, l'École doit choisir si son héritage consiste seulement à fabriquer des tueurs de monstres ou à transmettre une discipline capable de protéger sans détruire.",
        role: "Vesemir",
        speciality: "Chasse aux monstres",
        staff: 4
    )
    
    let brotherhoodOfSorcerers = WorkOrganization(
        team: "Confrérie des magiciens",
        cover: "",
        imageTeam: "",
        details:
            "La Confrérie des magiciens rassemble les praticiens du chaos et place nombre d'entre eux comme conseillers auprès des souverains du Continent. Aretuza façonne leur apparence, leur maîtrise et leur loyauté, puis le Chapitre tente de préserver un équilibre entre royaumes qui repose en réalité sur d'innombrables secrets. Les mages se présentent comme une communauté au-dessus des frontières, mais leurs attachements politiques, leurs ambitions et la montée de Nilfgaard divisent peu à peu l'institution. Tissaia défend encore l'idéal d'une fraternité responsable, tandis que Vilgefortz et d'autres manipulent le conclave pour leurs propres objectifs. Le coup d'État de Thanedd révèle que la neutralité de la Confrérie n'était plus qu'une façade et disperse ses membres au moment où le Continent aurait le plus besoin d'une autorité commune.",
        role: "Tissaia de Vries",
        speciality: "Magie et diplomatie",
        staff: 100
    )
    
    let nilfgaard = WorkOrganization(
        team: "Empire de Nilfgaard",
        cover: "",
        imageTeam: "",
        details:
            "Nilfgaard est une puissance impériale du Sud dont les armées disciplinées avancent vers les Royaumes du Nord sous des étendards noirs et or. Son expansion mêle conquête militaire, vassalisation politique, espionnage et usage stratégique de la magie. La destruction de Cintra n'est pas seulement une victoire territoriale : l'empire recherche Ciri, héritière du Sang Ancien, dont le pouvoir pourrait modifier l'équilibre du monde. Des figures comme Cahir et Fringilla servent cette ambition tout en découvrant que la foi, la peur et les intérêts personnels compliquent l'obéissance à l'Empereur. Dans la série, Nilfgaard agit comme une force qui resserre progressivement les trois trajectoires de Geralt, Yennefer et Ciri jusqu'à rendre leur fuite commune impossible à éviter.",
        role: "Emhyr var Emreis",
        speciality: "Conquête militaire",
        staff: 100000
    )
    
    let witcherOrganizations = [
        schoolOfTheWolf, brotherhoodOfSorcerers, nilfgaard,
    ]
    
    let witcherCharacters = [
        WorkCharacter(
            name: "Geralt de Riv",
            summary: "Sorceleur mutant connu sous le nom de Loup Blanc.",
            description:
                "Geralt de Riv a survécu enfant aux mutations de l'Épreuve des Herbes, qui ont affûté ses sens, ralenti son vieillissement et fait de lui un chasseur de monstres professionnel. Il traverse le Continent avec Ablette, négociant des contrats auprès de villages qui ont besoin de lui tout en méprisant ce qu'il représente. Son expérience lui a appris que les créatures les plus effrayantes ne sont pas toujours celles que les hommes appellent monstres ; il enquête avant de tirer l'épée et cherche souvent une solution qui évite une mort inutile. Sous son silence et son ironie sèche se cache un attachement profond qu'il redoute de reconnaître. Le droit de Surprise le lie à Ciri, tandis que son histoire passionnelle avec Yennefer défie son désir de rester seul. En acceptant enfin cette famille choisie, Geralt passe du rôle de survivant solitaire à celui de père prêt à affronter royaumes, mages et prophéties.",
            cover: "",
            identityImage: "",
            detailImage: "",
            todayImage: "",
            groups: [schoolOfTheWolf],
            skills: ["Escrime", "Signes de sorceleur", "Alchimie"],
            species: ["Humain mutant", "Sorceleur"]
        ),
        WorkCharacter(
            name: "Ciri de Cintra",
            summary:
                "Princesse héritière dotée du Sang Ancien et liée à Geralt par le destin.",
            description:
                "Cirilla est la petite-fille de la reine Calanthe et l'héritière d'un royaume anéanti sous ses yeux par l'invasion nilfgaardienne. Sa fuite la jette sur les routes, où elle apprend que son nom attire soldats, espions et forces surnaturelles. Le Sang Ancien dont elle est porteuse provoque visions, cris capables d'ébranler la matière et passages incontrôlés entre les espaces, pouvoirs aussi précieux que dangereux. À Kaer Morhen, Geralt lui enseigne le mouvement, l'épée et l'endurance sans lui imposer les mutations des sorceleurs ; auprès de Yennefer, elle commence à donner une forme consciente à son chaos. Ciri reste pourtant plus qu'une prophétie ou une arme convoitée. Son parcours est celui d'une adolescente endeuillée qui refuse d'être définie par sa naissance et trouve auprès de Geralt et Yennefer une famille construite au milieu de la guerre.",
            cover: "",
            identityImage: "",
            detailImage: "",
            todayImage: "",
            groups: [],
            skills: ["Sang Ancien", "Téléportation", "Combat à l'épée"],
            species: ["Humaine", "Descendante des Aen Elle"]
        ),
        WorkCharacter(
            name: "Yennefer de Vengerberg",
            summary:
                "Puissante magicienne liée à Geralt et figure maternelle de Ciri.",
            description:
                "Vendue à Tissaia après une enfance de rejet, Yennefer découvre à Aretuza que le chaos exige contrôle, sacrifice et volonté. Elle endure une transformation douloureuse pour conquérir l'apparence et la place politique qu'on lui refusait, au prix de sa fertilité, décision dont le poids nourrit ensuite son obsession de retrouver le choix qu'elle estime avoir perdu. Conseillère, combattante de Sodden puis fugitive, elle refuse de rester une pièce sur l'échiquier de la Confrérie. Sa relation avec Geralt est faite d'attraction, de blessures et d'une peur commune de dépendre de quelqu'un. Avec Ciri, Yennefer découvre une forme de transmission qui dépasse l'apprentissage magique : elle devient protectrice et figure maternelle, sans perdre son ambition ni son goût de la liberté. Sa puissance réside autant dans sa maîtrise des portails et du feu que dans sa capacité à se reconstruire après chaque perte.",
            cover: "",
            identityImage: "",
            detailImage: "",
            todayImage: "",
            groups: [brotherhoodOfSorcerers],
            skills: ["Magie du chaos", "Portails", "Enchantements"],
            species: ["Humaine", "Magicienne"]
        ),
        WorkCharacter(
            name: "Jaskier",
            summary:
                "Barde voyageur, ami de Geralt et chroniqueur de ses aventures.",
            description:
                "Jaskier rencontre Geralt comme un barde avide d'histoires et comprend aussitôt que le sorceleur silencieux peut devenir la matière d'une légende. Ses chansons, notamment celles qui célèbrent le Loup Blanc, transforment la réputation de Geralt et font voyager une version romancée de leurs aventures bien plus vite qu'eux. Volubile, théâtral et souvent attiré par les ennuis, il paraît d'abord incapable de prendre quoi que ce soit au sérieux. Pourtant, il revient lorsque le danger devient réel, protège des fugitifs et utilise son réseau, son charme et sa célébrité là où une épée serait inutile. Jaskier sert aussi de mémoire humaine à Geralt : il nomme les émotions que son ami tait et rappelle que la compagnie, même bruyante et imparfaite, peut être une forme de refuge.",
            cover: "",
            identityImage: "",
            detailImage: "",
            todayImage: "",
            groups: [],
            skills: ["Chant", "Luth", "Diplomatie"],
            species: ["Humain"]
        ),
    ]
    
    let witcherLocations = [
        WorkLocation(
            name: "Kaer Morhen",
            cover: "",
            image: "",
            summary: "Forteresse isolée de l'École du Loup.",
            details:
                "Kaer Morhen surgit au fond des montagnes de Kaedwen comme la carcasse d'une époque disparue, forteresse immense dont les salles vides témoignent du déclin des sorceleurs. Les remparts, parcours d'obstacles, laboratoires et médaillons conservés racontent une formation qui a produit des combattants exceptionnels au prix de nombreux enfants morts pendant les épreuves. Geralt y ramène Ciri parce qu'il considère ce lieu isolé comme le seul refuge encore hors d'atteinte de Nilfgaard. Sous la direction de Vesemir, elle court le pendule, apprend l'épée et partage le quotidien rugueux des Loups. Mais l'apparition de nouveaux monstres et les pouvoirs de Ciri font entrer le monde extérieur dans la forteresse. Kaer Morhen cesse alors d'être un tombeau pour devenir, brièvement, le foyer fragile d'une famille qui ne sait pas encore comment se protéger elle-même.",
            location: "Montagnes de Kaedwen"
        ),
        WorkLocation(
            name: "Cintra",
            cover: "",
            image: "",
            summary: "Royaume natal de Ciri conquis par Nilfgaard.",
            details:
                "Cintra est un royaume côtier fier, gouverné par la reine Calanthe et protégé par une cour qui croit encore pouvoir tenir Nilfgaard à distance. Ses banquets ont autrefois lié le destin de Geralt à l'enfant à naître de Pavetta par le droit de Surprise. Des années plus tard, les murailles cèdent sous l'invasion impériale et la ville familière de Ciri devient en quelques heures un paysage de feu, de cris et de fuite. La princesse emporte les dernières instructions de sa grand-mère sans comprendre encore qui est Geralt ni pourquoi elle doit le trouver. Cintra demeure ensuite une blessure politique et intime : un royaume convoité, une lignée dispersée et le souvenir d'un foyer que Ciri tente de préserver alors que chacun veut faire de son héritage une arme.",
            location: "Royaumes du Nord"
        ),
        WorkLocation(
            name: "Aretuza",
            cover: "",
            image: "",
            summary:
                "Académie où sont formées les magiciennes du Continent.",
            details:
                "Édifiée sur l'île de Thanedd, Aretuza forme les jeunes magiciennes dans un palais aussi somptueux qu'impitoyable. Sous la conduite de Tissaia, les élèves y apprennent que la magie ne crée rien sans échange et que le chaos peut consumer celles qui cherchent à le forcer. Pour Yennefer, l'académie est simultanément le lieu de son émancipation, de sa transformation et du prix imposé à son ambition. Plus tard, galeries, salles de bal et portails accueillent un conclave destiné à réunir les mages face à la guerre. Les alliances secrètes transforment pourtant la nuit en coup d'État, et le décor de formation devient un champ de bataille où s'effondre l'ordre magique. Aretuza concentre ainsi toute l'ambivalence du pouvoir : promesse de maîtrise, instrument de contrôle et ruine des certitudes.",
            location: "Île de Thanedd"
        ),
    ]
    
    let witcherEvents = [
        WorkEvent(
            title: "Chute de Cintra",
            cover: "",
            image: "",
            description:
                "Nilfgaard lance ses forces contre Cintra et submerge les défenses du royaume malgré la résistance menée par Calanthe et Eist. La bataille gagne les rues, le château devient un dernier refuge et la population découvre la violence d'une conquête qui ne cherche pas seulement un territoire, mais une enfant précise. Blessée, Calanthe ordonne enfin à Ciri de retrouver Geralt de Riv, reconnaissant trop tard le lien créé par le droit de Surprise. La princesse s'échappe tandis que sa ville s'effondre derrière elle et que ses pouvoirs se manifestent sous l'effet de la peur. La chute disperse les survivants, ouvre la progression nilfgaardienne vers le Nord et met en mouvement la rencontre que Geralt avait longtemps tenté d'éviter.",
            period: "Début de la guerre du Nord",
            year: 1263
        ),
        WorkEvent(
            title: "Bataille de Sodden",
            cover: "",
            image: "",
            description:
                "Face à l'avancée de Nilfgaard, un groupe de mages choisit de défendre la colline de Sodden malgré les hésitations et calculs politiques de la Confrérie. Le fort devient un verrou stratégique où quelques dizaines de combattants doivent ralentir une armée, des archers et des magiciens prêts à sacrifier leurs propres hommes. Tissaia coordonne la défense tandis que Yennefer, poussée au bord de ses forces, libère une vague de feu qui ravage le champ de bataille et brise l'assaut. La victoire sauve temporairement les Royaumes du Nord, mais laisse morts, traumatismes et divisions parmi les survivants. Sodden transforme Yennefer en symbole et rappelle que la magie la plus spectaculaire possède toujours un coût humain que les récits héroïques tendent à effacer.",
            period: "Première guerre contre Nilfgaard",
            year: 1263
        ),
        WorkEvent(
            title: "Coup d'État de Thanedd",
            cover: "",
            image: "",
            description:
                "Le conclave organisé à Aretuza devait restaurer l'unité des mages face à Nilfgaard, mais chaque conversation du bal dissimule une allégeance, un soupçon ou une tentative de manipulation. Geralt et Yennefer reconstituent peu à peu un complot dont Vilgefortz est le centre, tandis que les partisans des Royaumes du Nord décident d'arrêter les supposés traîtres avant l'aube. Les factions s'affrontent dans le palais, les protections de Thanedd tombent et les Scoia'tael rejoignent la bataille. Ciri, recherchée pour son Sang Ancien, devient l'enjeu autour duquel convergent mages, soldats et chasseurs. Le chaos sépare la jeune fille de Geralt et Yennefer, détruit la Confrérie et met fin à l'illusion qu'une institution magique pouvait encore rester au-dessus de la guerre.",
            period: "Conclave des mages",
            year: 1267
        ),
    ]
    
    let theWitcher = Work(
        type: .series,
        title: "The Witcher",
        image: "the_witcher-cover",
        genres: [.fantasy, .action, .adventure, .drama],
        ageRating: 16,
        nbSeasons: 4,
        nbEpisodes: 32,
        airedDate: makeGregorianDate(year: 2019, month: 12, day: 20),
        summary:
            "Le sorceleur Geralt de Riv traverse un Continent ravagé par les monstres et les ambitions politiques, tandis que son destin se lie à la magicienne Yennefer et à la princesse Ciri.",
        locations: witcherLocations,
        characters: witcherCharacters,
        datesChronology: witcherEvents,
        organizations: witcherOrganizations,
        streamingPlatforms: ["logo_crunchyroll", "logo_disney_plus", "logo_canal_vod", "logo_netflix", "logo_prime_video"],
        duration: 55,
        url: URL(string: "https://www.youtube.com/watch?v=bGFpSNKtLlc")
    )
    
    
    // MARK: - L'Attaque des Titans

    let surveyCorps = WorkOrganization(
        team: "Bataillon d'Exploration",
        cover: "aot-survey_corps-cover",
        imageTeam: "aot-survey_corps-detail",
        details:
            "Le Bataillon d'Exploration est la branche de l'armée chargée de mener des expéditions au-delà des Murs afin d'étudier les Titans, récupérer les territoires perdus et découvrir la vérité sur le monde extérieur. Ses soldats affrontent un taux de mortalité extrêmement élevé, mais leur détermination permet progressivement à l'humanité de comprendre l'origine de ses ennemis et les secrets dissimulés par les autorités. Sous le commandement d'Erwin Smith puis de Hansi Zoe, le Bataillon devient le symbole de la quête de liberté et de vérité.",
        role: "Erwin Smith",
        speciality: "Expéditions et combat contre les Titans",
        staff: 300
    )

    let garrison = WorkOrganization(
        team: "Garnison",
        cover: "aot-garrison-cover",
        imageTeam: "aot-garrison-detail",
        details:
            "La Garnison constitue la principale force chargée de protéger les villes et les Murs contre les attaques de Titans. Ses soldats entretiennent les défenses, manient les canons installés sur les remparts et interviennent lors des évacuations. Moins exposée que le Bataillon d'Exploration en temps normal, elle devient essentielle lorsque les Titans franchissent les Murs et menacent directement les populations civiles.",
        role: "Dot Pixis",
        speciality: "Défense des Murs",
        staff: 30000
    )

    let militaryPolice = WorkOrganization(
        team: "Brigades Spéciales",
        cover: "aot-military_police-cover",
        imageTeam: "aot-military_police-detail",
        details:
            "Les Brigades Spéciales constituent l'unité militaire la plus prestigieuse à l'intérieur des Murs. Seuls les meilleurs diplômés peuvent théoriquement rejoindre leurs rangs. Leur mission principale consiste à maintenir l'ordre dans les zones centrales et à protéger les autorités. Leur proximité avec le pouvoir les place cependant au cœur de nombreux secrets politiques et conflits internes.",
        role: "Nile Dok",
        speciality: "Sécurité intérieure",
        staff: 5000
    )

    let titanOrganizations = [
        surveyCorps,
        garrison,
        militaryPolice
    ]


    let titanCharacters = [

        WorkCharacter(
            name: "Eren Jäger",
            summary:
                "Jeune soldat déterminé à éliminer les Titans et à découvrir le monde au-delà des Murs.",
            description:
                "Eren Jäger grandit dans le district de Shiganshina avec Mikasa Ackerman et Armin Arlert. Depuis son enfance, il rêve de découvrir le monde extérieur décrit dans les livres d'Armin et refuse d'accepter une vie enfermée derrière les Murs. La destruction de Shiganshina et la mort de sa mère renforcent sa haine des Titans et le poussent à rejoindre l'armée. Après avoir découvert sa capacité à se transformer en Titan, Eren devient à la fois l'une des principales armes de l'humanité et le centre de nombreux conflits. Sa quête de liberté évolue progressivement jusqu'à remettre en question ses convictions, ses alliances et le prix qu'il est prêt à payer pour atteindre son objectif.",
            cover: "aot-eren-cover",
            identityImage: "aot-eren-id_card",
            detailImage: "aot-eren-detail",
            todayImage: "aot-eren-today",
            groups: [surveyCorps],
            skills: [
                "Transformation en Titan",
                "Équipement tridimensionnel",
                "Combat rapproché"
            ],
            species: [
                "Humain",
                "Titan Primordial"
            ]
        ),

        WorkCharacter(
            name: "Mikasa Ackerman",
            summary:
                "Combattante exceptionnelle et amie d'enfance d'Eren.",
            description:
                "Mikasa Ackerman est recueillie par la famille Jäger après la mort de ses parents. Elle développe un lien extrêmement fort avec Eren et décide de le suivre lorsqu'il rejoint l'armée. Grâce aux capacités particulières de la famille Ackerman, Mikasa possède une force, des réflexes et une maîtrise du combat largement supérieurs à ceux d'un soldat ordinaire. Elle devient rapidement l'un des membres les plus redoutables du Bataillon d'Exploration.",
            cover: "aot-mikasa-cover",
            identityImage: "aot-mikasa-id_card",
            detailImage: "aot-mikasa-detail",
            todayImage: "aot-mikasa-today",
            groups: [surveyCorps],
            skills: [
                "Équipement tridimensionnel",
                "Combat rapproché",
                "Force Ackerman"
            ],
            species: ["Humaine"]
        ),

        WorkCharacter(
            name: "Armin Arlert",
            summary:
                "Stratège brillant dont l'intelligence devient essentielle au Bataillon d'Exploration.",
            description:
                "Armin Arlert est l'ami d'enfance d'Eren et Mikasa. Physiquement moins puissant que ses camarades, il se distingue par son intelligence, sa capacité d'analyse et son imagination stratégique. Son rêve de voir l'océan et les territoires décrits dans un livre interdit nourrit en grande partie le désir de liberté d'Eren. Au fil des batailles, Armin devient un stratège essentiel et apprend à prendre des décisions difficiles lorsque la survie de ses compagnons est en jeu.",
            cover: "aot-armin-cover",
            identityImage: "aot-armin-id_card",
            detailImage: "aot-armin-detail",
            todayImage: "aot-armin-today",
            groups: [surveyCorps],
            skills: [
                "Stratégie",
                "Analyse",
                "Équipement tridimensionnel"
            ],
            species: [
                "Humain",
                "Titan Primordial"
            ]
        ),

        WorkCharacter(
            name: "Levi Ackerman",
            summary:
                "Caporal du Bataillon d'Exploration considéré comme le soldat le plus puissant de l'humanité.",
            description:
                "Levi Ackerman est le capitaine de l'escouade des opérations spéciales du Bataillon d'Exploration. Son enfance dans les bas-fonds l'a rendu extrêmement pragmatique et indépendant. Derrière son attitude froide et son obsession pour la propreté se cache un soldat profondément attaché à ses camarades. Sa maîtrise exceptionnelle de l'équipement tridimensionnel et les capacités héritées de la famille Ackerman font de lui l'un des combattants les plus dangereux face aux Titans.",
            cover: "aot-levi-cover",
            identityImage: "aot-levi-id_card",
            detailImage: "aot-levi-detail",
            todayImage: "aot-levi-today",
            groups: [surveyCorps],
            skills: [
                "Équipement tridimensionnel",
                "Combat anti-Titan",
                "Force Ackerman"
            ],
            species: ["Humain"]
        )
    ]


    let titanLocations = [

        WorkLocation(
            name: "District de Shiganshina",
            cover: "aot-shiganshina-cover",
            image: "aot-shiganshina-detail",
            summary:
                "Ville natale d'Eren, Mikasa et Armin située au sud du Mur Maria.",
            details:
                "Shiganshina est un district situé à l'extrémité sud du Mur Maria. Sa position avancée en fait l'un des premiers points exposés à une invasion. La destruction de sa porte par le Titan Colossal puis l'arrivée du Titan Cuirassé provoquent la chute du Mur Maria et bouleversent définitivement la vie d'Eren, Mikasa et Armin. Des années plus tard, le district devient également le lieu d'une bataille décisive pour récupérer les territoires perdus et atteindre la cave de la famille Jäger.",
            location: "Mur Maria"
        ),

        WorkLocation(
            name: "District de Trost",
            cover: "aot-trost-cover",
            image: "aot-trost-detail",
            summary:
                "District militaire situé au sud du Mur Rose.",
            details:
                "Trost devient le théâtre de l'une des premières grandes batailles auxquelles participent Eren et ses camarades après leur formation militaire. Lorsque le Titan Colossal détruit la porte extérieure, les recrues sont envoyées au combat avant même d'avoir rejoint définitivement leur corps d'armée. La capacité d'Eren à se transformer en Titan permet finalement d'élaborer un plan pour refermer la brèche.",
            location: "Mur Rose"
        ),

        WorkLocation(
            name: "Paradis",
            cover: "aot-paradis-cover",
            image: "aot-paradis-detail",
            summary:
                "Île où vivent les habitants des trois Murs.",
            details:
                "L'île de Paradis abrite les populations vivant derrière les Murs Maria, Rose et Sina. Pendant des générations, ses habitants pensent être les derniers humains encore en vie. La découverte de la vérité sur le monde extérieur transforme cependant leur perception de l'histoire et révèle que l'île est au centre d'un conflit beaucoup plus vaste impliquant Eldiens, Mahr et Titans.",
            location: "Île de Paradis"
        )
    ]


    let titanEvents = [

        WorkEvent(
            title: "Chute de Shiganshina",
            cover: "aot-fall_shiganshina-cover",
            image: "aot-fall_shiganshina-detail",
            description:
                "L'apparition soudaine du Titan Colossal devant la porte de Shiganshina met fin à un siècle de paix derrière les Murs. Après la destruction de la porte extérieure, le Titan Cuirassé ouvre une seconde brèche et permet aux Titans d'envahir le territoire humain. Eren assiste à la mort de sa mère et jure d'exterminer tous les Titans. Cet événement entraîne l'abandon du Mur Maria et devient le point de départ de toute l'histoire.",
            period: "Chute du Mur Maria",
            year: 845
        ),

        WorkEvent(
            title: "Bataille de Trost",
            cover: "aot-battle_trost-cover",
            image: "aot-battle_trost-detail",
            description:
                "Cinq ans après la chute de Shiganshina, le Titan Colossal apparaît devant Trost et détruit une nouvelle fois la porte extérieure. Les jeunes recrues sont immédiatement envoyées au combat. Eren découvre alors qu'il peut se transformer en Titan. Malgré la méfiance de l'armée, Armin propose d'utiliser cette capacité pour transporter un énorme rocher et refermer la brèche.",
            period: "Défense du Mur Rose",
            year: 850
        ),

        WorkEvent(
            title: "Retour à Shiganshina",
            cover: "aot-return_shiganshina-cover",
            image: "aot-return_shiganshina-detail",
            description:
                "Le Bataillon d'Exploration retourne à Shiganshina afin de reprendre le Mur Maria et d'atteindre la cave de Grisha Jäger. Les soldats affrontent simultanément le Titan Bestial, le Titan Cuirassé et le Titan Colossal. La bataille coûte la vie à une grande partie du Bataillon, mais permet finalement aux survivants de découvrir la vérité sur les Titans et l'existence du monde extérieur.",
            period: "Reconquête du Mur Maria",
            year: 850
        )
    ]


    let attackOnTitan = Work(
        type: .anime,
        title: "L'Attaque des Titans",
        image: "attack_on_titan-cover",
        genres: [
            .action,
            .darkFantasy,
            .drama
        ],
        ageRating: 16,
        nbSeasons: 4,
        nbEpisodes: 94,
        airedDate: makeGregorianDate(
            year: 2013,
            month: 4,
            day: 7
        ),
        summary:
            "Après la destruction de sa ville par les Titans, Eren Jäger rejoint l'armée avec Mikasa et Armin afin de combattre ces créatures et découvrir la vérité sur leur monde.",
        locations: titanLocations,
        characters: titanCharacters,
        datesChronology: titanEvents,
        organizations: titanOrganizations,
        streamingPlatforms: [
            "logo_crunchyroll",
            "logo_netflix",
            "logo_prime_video"
        ],
        duration: 24,
        url: URL(
            string: "https://www.youtube.com/watch?v=MGRm4IzK1SQ"
        )
    )
    
    
        // MARK: - Star Wars: Starfighter
        // Les personnages, lieux, organisations et événements ci-dessous sont fictifs.
        // Ils servent de données de démonstration en attendant les informations officielles.
    
    let horizonSquadron = WorkOrganization(
        team: "Escadron Horizon",
        cover: "",
        imageTeam: "",
        details:
            "Dans ces données fictives de démonstration, l'Escadron Horizon rassemble d'anciens pilotes militaires, des mécaniciens itinérants et des volontaires issus de systèmes que les grandes puissances ne protègent plus. Depuis la chute du Premier Ordre, les routes hyperspatiales secondaires sont devenues le territoire de pirates et de trafiquants capables d'isoler une planète entière en détruisant une balise. Horizon escorte les convois, répond aux signaux de détresse et refuse de prêter allégeance à un gouvernement unique. Ses appareils portent les réparations de dizaines de ports et ses membres prennent leurs décisions autour d'une table plutôt que dans une chaîne de commandement rigide. L'arrivée du prototype Asterion transforme cette modeste force de protection en enjeu galactique et met à l'épreuve son idéal d'indépendance.",
        role: "Kael Varyn",
        speciality: "Combat spatial",
        staff: 24
    )
    
    let pathfinderCorps = WorkOrganization(
        team: "Corps des Éclaireurs",
        cover: "",
        imageTeam: "",
        details:
            "Le Corps des Éclaireurs fictif explore les régions où les cartes impériales sont devenues inexactes après des décennies de guerre et de phénomènes hyperspatiaux. Ses équipes déposent des balises, analysent les anomalies gravitationnelles et ouvrent des corridors capables de reconnecter des mondes coupés du reste de la galaxie. Chaque mission associe pilotes, astronomes, droïdes cartographes et spécialistes du premier contact, car découvrir une route signifie aussi bouleverser les sociétés qui vivaient derrière elle. Soren Kade dirige le Corps avec une prudence née d'une expédition ancienne dont plusieurs membres ne sont jamais revenus. Les coordonnées confiées à Nira suggèrent que cette disparition et le projet Asterion pourraient provenir du même secret.",
        role: "Soren Kade",
        speciality: "Cartographie hyperspatiale",
        staff: 80
    )
    
    let obsidianSyndicate = WorkOrganization(
        team: "Syndicat d'Obsidienne",
        cover: "",
        imageTeam: "",
        details:
            "Le Syndicat d'Obsidienne fictif prospère dans les espaces laissés vacants par la disparition du Premier Ordre, achetant des chantiers, soudoyant des gouverneurs et contrôlant les passages dont dépendent les colonies isolées. Son pouvoir ne repose pas sur une flotte immense, mais sur l'information : manifeste falsifié, balise sabotée ou dette soigneusement rachetée suffisent à mettre une planète à genoux. Vexa Rhun commande ses opérations avec la conviction que la paix n'est qu'un marché encore mal organisé. En s'emparant de l'Asterion, le Syndicat pourrait ouvrir des routes impossibles à surveiller et imposer un monopole sur les échanges entre les systèmes libres. Ses agents suivent donc Nira et l'Escadron Horizon non pour conquérir un territoire, mais pour contrôler la géographie même de la galaxie.",
        role: "Vexa Rhun",
        speciality: "Contrebande et sabotage",
        staff: 150
    )
    
    let starfighterOrganizations = [
        horizonSquadron, pathfinderCorps, obsidianSyndicate,
    ]
    
    let starfighterCharacters = [
        WorkCharacter(
            name: "Kael Varyn",
            summary:
                "Pilote vétéran recruté pour protéger un prototype expérimental.",
            description:
                "Personnage entièrement fictif, Kael Varyn a piloté pendant les dernières campagnes contre le Premier Ordre avant de quitter une armée incapable, selon lui, de protéger les mondes une fois les batailles terminées. Il gagne désormais sa vie en convoyant médicaments et pièces de rechange à bord d'un chasseur reconstruit tant de fois qu'aucun registre ne s'accorde sur son modèle d'origine. Pilote instinctif, il lit un champ de débris comme d'autres lisent une carte et préfère désactiver un adversaire plutôt que l'abattre. Le projet Asterion réveille cependant le souvenir d'une mission où il obéit aux ordres au lieu de répondre à un appel de détresse. En protégeant Nira et ses coordonnées, Kael ne cherche pas une dernière victoire spectaculaire : il tente de prouver qu'un pilote peut choisir les vies placées devant lui plutôt que la bannière peinte sur son aile.",
            cover: "",
            identityImage: "",
            detailImage: "",
            todayImage: "",
            groups: [horizonSquadron],
            skills: ["Pilotage", "Combat spatial", "Mécanique"],
            species: ["Humain"]
        ),
        WorkCharacter(
            name: "Nira Vale",
            summary:
                "Jeune navigatrice capable de lire des cartes stellaires anciennes.",
            description:
                "Personnage entièrement fictif, Nira Vale a grandi dans un observatoire de Nydor Prime où sa famille entretenait des cartes stellaires antérieures à l'Empire. Elle perçoit dans les vibrations et les silences de l'espace des motifs que les calculateurs de navigation considèrent comme du bruit, intuition qui pourrait être une sensibilité encore informe à la Force. Après la disparition de sa mère, un astrolabe crypté révèle une route traversant la dérive de Kharon et fait de Nira la cible de plusieurs factions. Elle refuse pourtant le rôle de simple clé vivante : elle apprend à piloter, déchiffre les choix cachés dans la carte et questionne le droit de quiconque à ouvrir un passage sans consulter les mondes situés à son extrémité. Son voyage transforme un héritage familial en responsabilité politique.",
            cover: "",
            identityImage: "",
            detailImage: "",
            todayImage: "",
            groups: [horizonSquadron],
            skills: [
                "Astrogation", "Décryptage", "Perception de la Force",
            ],
            species: ["Humaine"]
        ),
        WorkCharacter(
            name: "Soren Kade",
            summary:
                "Commandant des Éclaireurs chargé de sécuriser les nouvelles routes.",
            description:
                "Personnage entièrement fictif, Soren Kade commande le Corps des Éclaireurs avec la précision d'un homme qui connaît le prix d'une coordonnée erronée. Des années plus tôt, il a dirigé la première tentative de traversée de Kharon ; la mission s'est achevée par la perte de plusieurs vaisseaux et par la découverte d'un signal qu'il a choisi de classer. Depuis, Soren privilégie la stabilité, négocie avec des systèmes rivaux et refuse toute exploration dont les conséquences ne peuvent être contenues. L'apparition de l'Asterion l'oblige à reconnaître que son silence a permis au Syndicat d'Obsidienne de reconstituer une partie des données. Mentor exigeant pour Nira et allié méfiant de Kael, il doit décider si protéger la galaxie signifie fermer une route dangereuse ou révéler enfin toute la vérité.",
            cover: "",
            identityImage: "",
            detailImage: "",
            todayImage: "",
            groups: [pathfinderCorps],
            skills: ["Commandement", "Stratégie", "Diplomatie"],
            species: ["Humain"]
        ),
        WorkCharacter(
            name: "Vexa Rhun",
            summary:
                "Mercenaire à la tête des opérations du Syndicat d'Obsidienne.",
            description:
                "Personnage entièrement fictif, Vexa Rhun a survécu à l'effondrement de plusieurs régimes en comprenant que les idéologies passent tandis que les routes commerciales demeurent. Ancienne spécialiste du renseignement, elle bâtit le Syndicat d'Obsidienne en réunissant contrebandiers, ingénieurs et administrateurs que les vainqueurs avaient abandonnés. Elle ne se considère pas comme une conquérante : à ses yeux, rendre chaque passage prévisible et payant constitue la seule forme durable d'ordre. Excellente tireuse et stratège patiente, Vexa préfère offrir à un adversaire un contrat impossible à refuser avant de recourir à la violence. L'Asterion lui donnerait pourtant un pouvoir sans précédent, celui de décider quels mondes peuvent se rencontrer. Sa confrontation avec Kael oppose ainsi deux visions de la liberté nées du même chaos d'après-guerre.",
            cover: "",
            identityImage: "",
            detailImage: "",
            todayImage: "",
            groups: [obsidianSyndicate],
            skills: ["Espionnage", "Tir de précision", "Sabotage"],
            species: ["Humaine"]
        ),
    ]
    
    let starfighterLocations = [
        WorkLocation(
            name: "Nydor Prime",
            cover: "",
            image: "",
            summary:
                "Monde frontière reconstruit après la chute du Premier Ordre.",
            details:
                "Monde fictif de cette proposition narrative, Nydor Prime tourne autour d'une étoile pâle qui colore de cuivre ses déserts et les coques assemblées dans ses chantiers orbitaux. Après la chute du Premier Ordre, des ingénieurs réfugiés y ont transformé d'anciens docks militaires en coopératives capables de réparer presque n'importe quel appareil. La planète vit au rythme des sirènes de lancement, des marchés de pièces détachées et des convois qui relient les colonies voisines. Le prototype Asterion est construit dans un anneau officiellement désaffecté, alimenté par des recherches sur une forme de navigation que peu de techniciens comprennent entièrement. Lorsque son existence est révélée, les cantinas se remplissent d'espions et chaque départ de cargo peut masquer une opération du Syndicat.",
            location: "Bordure médiane"
        ),
        WorkLocation(
            name: "Dérive de Kharon",
            cover: "",
            image: "",
            summary:
                "Région instable traversée par des courants hyperspatiaux imprévisibles.",
            details:
                "Région fictive, la dérive de Kharon est un océan d'ombres gravitationnelles où les voies hyperspatiales se déplacent comme des courants sous l'effet d'étoiles mortes. Les instruments y produisent des positions contradictoires, les communications reviennent parfois avant d'avoir été émises et les épaves de plusieurs époques dérivent entre les éclairs bleus. Les anciennes cartes de la famille Vale ne tracent pas une ligne fixe : elles décrivent un rythme que le navigateur doit interpréter en temps réel. Traverser Kharon exige donc autant d'intuition que de calcul, et la moindre hésitation peut projeter un vaisseau à des années-lumière de toute balise. La bataille qui s'y déroule transforme le décor en protagoniste, forçant poursuivants et fugitifs à choisir entre tirer sur l'ennemi ou survivre au prochain basculement du courant.",
            location: "Régions inconnues"
        ),
        WorkLocation(
            name: "Station Vespera",
            cover: "",
            image: "",
            summary:
                "Station commerciale neutre construite autour d'une ancienne balise impériale.",
            details:
                "Station fictive construite autour d'une balise impériale abandonnée, Vespera s'est développée couche après couche jusqu'à devenir un labyrinthe de docks, de serres et de quartiers suspendus. Sa neutralité repose sur une règle simple : aucun pavillon ne commande au-delà de son propre sas. Marchands, réfugiés, droïdes sans propriétaire et émissaires de systèmes rivaux y partagent un équilibre maintenu par la dépendance de tous à l'air, à l'eau et aux réparations de la station. Lorsque l'Escadron Horizon s'y réfugie, Vexa encercle Vespera et transforme cette neutralité en ultimatum. Les habitants doivent alors choisir si leur indépendance consiste à rester en dehors du conflit ou à défendre le droit de ne pas vendre leurs routes au plus puissant.",
            location: "Secteur Vespera"
        ),
    ]
    
    let starfighterEvents = [
        WorkEvent(
            title: "Vol du prototype Asterion",
            cover: "",
            image: "",
            description:
                "Événement fictif, le vol de l'Asterion commence pendant une fausse alerte solaire qui évacue une partie des chantiers de Nydor Prime. Des agents d'Obsidienne infiltrés depuis des mois coupent les communications, remplacent les droïdes de sécurité et tentent d'emporter le prototype avant même la fin de ses essais. Nira déclenche involontairement le système de navigation en approchant l'astrolabe de sa famille, révélant que le vaisseau a été conçu autour des mêmes coordonnées. Kael improvise alors un lancement sous le feu, sans équipage complet ni route de sortie stable. Leur fuite sauve l'appareil, mais diffuse sa signature à travers le secteur et transforme une opération clandestine en chasse ouverte. Dès cet instant, posséder l'Asterion signifie porter à son bord la future carte politique de centaines de mondes.",
            period: "Cinq ans après L'Ascension de Skywalker",
            year: 40
        ),
        WorkEvent(
            title: "Bataille de Kharon",
            cover: "",
            image: "",
            description:
                "Événement fictif, la bataille de Kharon éclate lorsque le Syndicat rejoint l'Escadron Horizon au moment précis où la dérive modifie son courant principal. Les escadrilles ne peuvent maintenir une formation classique : chaque pilote disparaît dans l'hyperespace pendant quelques secondes avant de réapparaître à une distance imprévisible. Nira guide les appareils alliés en lisant les pulsations de l'ancienne carte, tandis que Kael utilise les épaves et les distorsions comme autant de passages tactiques. Vexa comprend qu'abattre l'Asterion détruirait ce qu'elle convoite et tente plutôt de l'isoler du reste de l'escadron. La victoire d'Horizon repose finalement sur un choix risqué : partager une partie des données de navigation avec tous les pilotes présents, brisant momentanément le monopole que chaque camp cherchait à préserver.",
            period: "Poursuite de l'Asterion",
            year: 40
        ),
        WorkEvent(
            title: "Siège de Vespera",
            cover: "",
            image: "",
            description:
                "Événement fictif, le siège commence lorsque la flotte d'Obsidienne verrouille les voies d'approche de Vespera et exige la remise de Nira, de l'Asterion et des archives de Kharon. La station ne possède pas d'armée ; ses habitants transforment donc remorqueurs, balises de maintenance et réseaux d'énergie en défense improvisée. Soren révèle publiquement le rapport de son ancienne expédition, prouvant que la route mène à des systèmes habités qui ont choisi l'isolement après les guerres galactiques. Kael retient les chasseurs ennemis pendant que Nira diffuse un protocole permettant à ces mondes de décider eux-mêmes quand ouvrir leurs frontières. Vexa perd ainsi la possibilité d'un monopole, mais l'affrontement se résout moins par sa défaite que par la disparition de l'information exclusive qu'elle voulait posséder. Vespera devient le symbole d'une galaxie où la liberté de circuler doit aussi respecter la liberté de rester caché.",
            period: "Fin de la crise de l'Asterion",
            year: 40
        ),
    ]
    
    let starfighter = Work(
        type: .movie,
        title: "Star Wars: Starfighter",
        image: "star_wars_starfighter-cover",
        genres: [.scienceFiction, .action, .adventure],
        ageRating: 0,
        nbSeasons: nil,
        nbEpisodes: nil,
        airedDate: makeGregorianDate(year: 2027, month: 5, day: 28),
        summary:
            "Aventure Star Wars indépendante située environ cinq ans après L'Ascension de Skywalker. Les détails officiels de l'intrigue n'étant pas encore révélés, les données imbriquées proposées ici sont fictives.",
        locations: starfighterLocations,
        characters: starfighterCharacters,
        datesChronology: starfighterEvents,
        organizations: starfighterOrganizations,
        streamingPlatforms: [],
        duration: 0,
        url: nil
    )
    
    return [
        onePiece,
        frieren,
        jujutsuKaisen,
        shieldHero,
        theWitcher,
        attackOnTitan,
        starfighter
    ]
}()

var user: User = User(name: "", image: "", ageRating: 0, favoriteType: .movie, favoriteGenres: [.action], favoriteWorks: [works[0]], statCharacter: 0, statOrganization: 0, statLocation: 0, statChronology: 0)

var userLogged: User = User(name: "Lloys", image: "frieren-id_card", ageRating: 18, favoriteType: .anime, favoriteGenres: Genre.allCases, favoriteWorks: [works[0], works[1]], statCharacter: 24, statOrganization: 5, statLocation: 7, statChronology: 12)
