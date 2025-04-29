package text.french
{
   public class skills
   {
      public static var WEP_EFFECTS:String = "\n • L\'élément et les effets dépendent de l\'arme équipée.";
      
      public static var WEP_EFFECTS_2:String = "\n • Les effets de l\'arme sont amplifiés.";
      
      public static var LOW_ACC:String = "\n • Faible précision.";
      
      public static var HIGH_ACC:String = "\n • Haute précision.";
      
      public static var HIGH_ACC_2:String = "\n • Très haute précision.";
      
      public static var HIGH_CRITS:String = "\n • Fort taux de critiques.";
      
      public static var RETARGETS:String = "\n • Change de cible quand la précédente meurt.";
      
      public static var RETARGETS_2:String = "\n • Passe à la cible suivante quand la précédente meurt.";
      
      public static var LIMIT_BREAK:String = "Limit Break ! ";
      
      public static var ALTERNATIVE_ALL:String = " Peut aussi cibler tous les ennemis pour des dégâts identiques. ";
      
      public static var ALTERNATIVE_ONE:String = " Peut aussi être concentré sur une cible pour une puissance accrue.";
      
      public static var MAY_SURRENDER:String = " Peut faire déserter les ennemis, même les plus coriaces. ";
      
      public static var SWORD_DANCE:String = " Frappe une même cible 3 fois, et change de cible si elle meurt.";
      
      public static var EXTRA_HITS:String = " Un coup en plus est porté pour chaque ennemi tué.";
      
      public static var DISPEL_ALL:String = " Dissipe les bonus et bienfaits de tous les ennemis.";
      
      public static var HITS_RANDOM_FOES:String = " Tire une flèche par ennemi, mais elles atteignent leur cible au hasard.";
      
      public static var COOLDOWN_2:String = "\n • Se recharge après 1 tour. ";
      
      public static var COOLDOWN_3:String = "\n • Se recharge après 2 tours. ";
      
      public static var COOLDOWN_4:String = "\n • Se recharge après 3 tours. ";
      
      public static var COOLDOWN_6:String = "\n • Se recharge après 5 tours. ";
      
      public static var COOLDOWN_11:String = "\n • Se recharge après 10 tours. ";
      
      public static var defend:Object = {
         "name":"Défense",
         "desc":"Tous les dégâts subis sont réduits de moitié pour un tour. Certains équipements ajoutent d\'autres effets."
      };
      
      public static var swap:Object = {
         "name":"Changer de Joueur",
         "desc":"Sélectionnez un autre joueur à contrôler. Cette action ne met pas fin au tour."
      };
      
      public static var flee:Object = {
         "name":"Fuite",
         "desc":"Met fin au combat. Il n\'y a aucune pénalité."
      };
      
      public static var skip:Object = {
         "name":"Passer le tour",
         "desc":"Passe le tour du joueur sans rien faire."
      };
      
      public static var scan:Object = {
         "name":"Scanner les ennemis",
         "desc":"Scanne tous les ennemis présents pour révéler leurs faiblesses. L\'info est ensuite archivée dans le bestiaire."
      };
      
      public static var capture:Object = {
         "name":"Capture",
         "desc":"Tente de capturer un ennemi. Il est plus facile de capturer un ennemi blessé avec des malus ; certains ennemis ne peuvent pas être capturés."
      };
      
      public static var bring1:Object = {
         "name":"Amener Matt",
         "desc":"Envoie un joueur en réserve et le remplace par Matt. Cette action ne met pas fin au tour."
      };
      
      public static var bring2:Object = {
         "name":"Amener Natalie",
         "desc":"Envoie un joueur en réserve et le remplace par Natalie. Cette action ne met pas fin au tour."
      };
      
      public static var bring3:Object = {
         "name":"Amener Lance",
         "desc":"Envoie un joueur en réserve et le remplace par Lance. Cette action ne met pas fin au tour."
      };
      
      public static var bring4:Object = {
         "name":"Amener Anna",
         "desc":"Envoie un joueur en réserve et le remplace par Anna. Cette action ne met pas fin au tour."
      };
      
      public static var bring5:Object = {
         "name":"Amener Pad’Pat",
         "desc":"Envoie un joueur en réserve et le remplace par Pad\'Pat. Cette action ne met pas fin au tour."
      };
      
      public static var swordslash:Object = {
         "name":"Attaque de Base",
         "desc":"Frappe une cible d\'un simple coup d\'épée." + WEP_EFFECTS
      };
      
      public static var earthedge:Object = {
         "name":"Tremblement",
         "desc":"Attaque de Terre simple qui frappe une seule cible."
      };
      
      public static var quakespikes:Object = {
         "name":"Séisme",
         "desc":"Attaque de Terre avancée qui frappe une seule cible."
      };
      
      public static var cataclysmiccut:Object = {
         "name":"Cataclysme",
         "desc":"Attaque de Terre surpuissante qui frappe une seule cible." + HIGH_CRITS
      };
      
      public static var geysergush:Object = {
         "name":"Geyser",
         "desc":"Attaque d\'Eau simple qui frappe une seule cible." + equips.MAY_WET
      };
      
      public static var pouringpike:Object = {
         "name":"Torrent",
         "desc":"Attaque d\'Eau avancée qui touche une seule cible." + equips.MAY_WET
      };
      
      public static var surgingskewer:Object = {
         "name":"Typhon",
         "desc":"Puissante attaque d\'Eau qui frappe une seule cible." + equips.MAY_WET + HIGH_CRITS
      };
      
      public static var frostfragment:Object = {
         "name":"Toundra",
         "desc":"Attaque de Glace avancée qui frappe une seule cible." + equips.MAY_CHILL
      };
      
      public static var glacialglaive:Object = {
         "name":"Iceberg",
         "desc":"Puissante attaque de Glace qui frappe une seule cible." + equips.MAY_CHILL
      };
      
      public static var firespire:Object = {
         "name":"Magma",
         "desc":"Attaque de Feu avancée qui frappe une seule cible." + equips.MAY_DRY
      };
      
      public static var lavalance:Object = {
         "name":"Eruption",
         "desc":"Puissante attaque de Feu qui frappe une seule cible." + equips.MAY_DRY
      };
      
      public static var nettleknife:Object = {
         "name":"Ronces",
         "desc":"Attaque Bio simple qui frappe une seule cible." + equips.MAY_POISON
      };
      
      public static var shreddingshrub:Object = {
         "name":"Mur de Ronces",
         "desc":"Puissante attaque Bio qui frappe une seule cible." + equips.MAY_POISON
      };
      
      public static var slicingcyclone:Object = {
         "name":"Cyclone Tranchant",
         "desc":"Puissante attaque qui touche plusieurs fois tous les ennemis." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var stealitem:Object = {
         "name":"Larcin",
         "desc":"Vole un objet aléatoire à une seule cible. Améliorer cette compétence permet de voler de meilleurs objets." + LOW_ACC
      };
      
      public static var legend:Object = {
         "name":"Légende",
         "desc":"Attaque surpuissante qui touche une seule cible plusieurs fois." + WEP_EFFECTS + COOLDOWN_3
      };
      
      public static var lightblade:Object = {
         "name":"Lumi-Lame",
         "desc":"Attaque Sacrée avancée qui frappe une seule cible."
      };
      
      public static var holysword:Object = {
         "name":"Lame Sainte",
         "desc":"Puissante attaque Sacrée qui frappe une seule cible." + equips.MAY_DISPEL
      };
      
      public static var unleash:Object = {
         "name":"Déchainement",
         "desc":"Une attaque qui libère le potentiel caché de votre arme." + WEP_EFFECTS + WEP_EFFECTS_2
      };
      
      public static var quickslash:Object = {
         "name":"Attaque Éclair",
         "desc":"Attaque une seule cible avec une très haute précision." + WEP_EFFECTS
      };
      
      public static var temper:Object = {
         "name":"Affutage",
         "desc":"Booste l\'attaque d\'un allié, et lui donne le statut Bravoure. " + COOLDOWN_2
      };
      
      public static var revenge:Object = {
         "name":"Vengeance",
         "desc":"Une attaque au potentiel dévastateur qui frappe une seule cible. La puissance augmente quand les HP de Matt diminuent ou quand ses alliés sont morts." + WEP_EFFECTS
      };
      
      public static var cleaver:Object = {
         "name":"Boucherie",
         "desc":LIMIT_BREAK + "Inflige des dégâts physiques monstrueux à une cible en la tranchant plusieurs fois." + WEP_EFFECTS + RETARGETS + HIGH_ACC + HIGH_CRITS
      };
      
      public static var ragnarok:Object = {
         "name":"Ragnarok",
         "desc":LIMIT_BREAK + "Frappe tous les ennemis avec des dégâts massifs non-élémentaires, puis booste l\'attaque de tous les alliés, même en réserve, et leur donne le bienfait Bravoure." + HIGH_ACC
      };
      
      public static var staffstrike:Object = {
         "name":"Attaque de Base",
         "desc":"Frappe une cible avec une simple attaque physique, qui libère le pouvoir magique de l\'arme." + WEP_EFFECTS
      };
      
      public static var blessedbunny:Object = {
         "name":"Purge",
         "desc":"Dissipe les malus d\'un allié, soigne ses altérations d\'état, et lui donne le statut Béni."
      };
      
      public static var luckystar:Object = {
         "name":"Etoile Filante",
         "desc":"Magie simple non-élémentaire qui inflige des dégâts très variables à une seule cible." + HIGH_CRITS
      };
      
      public static var starshower:Object = {
         "name":"Pluie d\'Étoiles",
         "desc":"Puissante magie non-élémentaire qui inflige des dégâts très variables à tous les ennemis." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var starpower:Object = {
         "name":"Bonne Etoile",
         "desc":"Booste l\'attaque magique d\'un allié, et lui donne le statut Bonheur." + COOLDOWN_2
      };
      
      public static var intoxicate:Object = {
         "name":"Toxic",
         "desc":"Magie Bio simple qui empoisonne fortement une seule cible."
      };
      
      public static var fireball:Object = {
         "name":"Feu",
         "desc":"Magie de Feu basique qui frappe une seule cible." + equips.MAY_BURN
      };
      
      public static var fireblast:Object = {
         "name":"Boule de Feu",
         "desc":"Magie de Feu avancée qui frappe une seule cible." + equips.MAY_BURN
      };
      
      public static var firestorm:Object = {
         "name":"Brasier",
         "desc":"Puissante magie de Feu qui frappe tous les ennemis." + ALTERNATIVE_ONE + equips.MAY_BURN
      };
      
      public static var thunderbolt:Object = {
         "name":"Eclair",
         "desc":"Magie de Foudre basique qui frappe une seule cible." + equips.MAY_STUN
      };
      
      public static var thundershock:Object = {
         "name":"Foudre",
         "desc":"Magie de Foudre avancée qui frappe une seule cible." + equips.MAY_STUN
      };
      
      public static var thunderstorm:Object = {
         "name":"Orage",
         "desc":"Puissante magie de Foudre qui frappe tous les ennemis." + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var iceshard:Object = {
         "name":"Glaçon",
         "desc":"Magie de Glace basique qui frappe une seule cible." + equips.MAY_FREEZE
      };
      
      public static var iceshatter:Object = {
         "name":"Shrapnels Glacés",
         "desc":"Magie de Glace avancée qui frappe une seule cible." + equips.MAY_FREEZE
      };
      
      public static var icestorm:Object = {
         "name":"Tempête Glaciaire",
         "desc":"Puissante magie de Glace qui frappe tous les ennemis." + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var darkpulse:Object = {
         "name":"Pulsation",
         "desc":"Magie de Ténèbres avancée qui frappe une seule cible." + equips.MAY_HEAVY
      };
      
      public static var darkpulsar:Object = {
         "name":"Pulsar",
         "desc":"Magie de Ténèbres surpuissante qui frappe tous les ennemis." + equips.MAY_HEAVY + COOLDOWN_3
      };
      
      public static var spectralflash:Object = {
         "name":"Spectre",
         "desc":"Magie avancée qui frappe une seule cible." + WEP_EFFECTS
      };
      
      public static var rainbowblast:Object = {
         "name":"Souffle d’Arcs-en-ciel",
         "desc":"Puissante magie qui frappe tous les ennemis." + ALTERNATIVE_ONE + WEP_EFFECTS
      };
      
      public static var holylight:Object = {
         "name":"Rayonnement",
         "desc":"Magie Sacrée avancée qui frappe une seule cible." + equips.MAY_WEAKEN
      };
      
      public static var divinejudgement:Object = {
         "name":"Jugement",
         "desc":"Attaque Sacrée surpuissante qui écrase une seule cible et draine ses Points de Vie." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var syphon:Object = {
         "name":"Mutisme",
         "desc":"Réduit un ennemi au Silence, l\'empêchant d\'utiliser presque toutes les attaques magiques." + COOLDOWN_3
      };
      
      public static var syphon2:Object = {
         "name":"Syphon",
         "desc":"Réduit tous les ennemis au Silence, les empêchant d\'utiliser presque toutes les attaques magiques. L\'effet peut aussi être concentrée sur un seul ennemi pour un Silence plus efficace." + COOLDOWN_3
      };
      
      public static var genesis:Object = {
         "name":"Genèse",
         "desc":LIMIT_BREAK + "Inflige des dégâts sacrées massifs à tous les ennemis, et ressuscite ou donne le bienfait Halo à tous les alliés. \n • Inclut les joueurs en réserve." + HIGH_ACC
      };
      
      public static var kyun:Object = {
         "name":"7ème Ciel",
         "desc":LIMIT_BREAK + "Soigne tous les alliés retire leurs altérations d\'état, et booste leur attaque, attaque magique, défense et défense magique. \n • Inclut les joueurs en réserve. \n • Donne le statut Adorable à Natalie."
      };
      
      public static var pistolwhip:Object = {
         "name":"Attaque de Base",
         "desc":"Frappe deux fois une même cible au corps-à-corps." + WEP_EFFECTS
      };
      
      public static var snipe:Object = {
         "name":"Snipe",
         "desc":"Tire sur une cible avec une très haute précision." + WEP_EFFECTS + HIGH_CRITS + COOLDOWN_2
      };
      
      public static var doubleshot:Object = {
         "name":"Tir Double",
         "desc":"Une attaque qui tire deux fois sur la même cible." + WEP_EFFECTS + WEP_EFFECTS_2 + RETARGETS
      };
      
      public static var unload:Object = {
         "name":"Fusillade",
         "desc":"Attaque surpuissante qui tire sur une même cible 6 fois." + WEP_EFFECTS + RETARGETS + HIGH_CRITS + COOLDOWN_6
      };
      
      public static var flameshot:Object = {
         "name":"Tir de Feu",
         "desc":"Tir de Feu basique qui touche un seul ennemi." + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var flameburst:Object = {
         "name":"Tir Explosif",
         "desc":"Tir de Feu avancé qui touche tous les ennemis." + ALTERNATIVE_ONE + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var bullethell:Object = {
         "name":"Enfer de Balles",
         "desc":"Puissant tir de Feu qui se concentre sur un ennemi, les autres subissent 1/3 des dégâts ." + ALTERNATIVE_ALL + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var plasmashot:Object = {
         "name":"Tir de Plasma",
         "desc":"Tir de Foudre basique qui touche un seul ennemi." + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmawave:Object = {
         "name":"Onde de Plasma",
         "desc":"Tir de Foudre avancé qui touche tous les ennemis." + ALTERNATIVE_ONE + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmafield:Object = {
         "name":"Champ de Plasma",
         "desc":"Puissant tir de Foudre qui se concentre sur un ennemi, les autres subissent 1/3 des dégâts. " + ALTERNATIVE_ALL + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var darkshot:Object = {
         "name":"Tir Sombre",
         "desc":"Tir de Ténèbres basique qui touche un seul ennemi." + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var gravitysurge:Object = {
         "name":"Décharge Gravitationnelle",
         "desc":"Tir de Ténèbres avancé qui touche tous les ennemis." + ALTERNATIVE_ONE + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var antimatterflux:Object = {
         "name":"Flux Antimatière",
         "desc":"Puissant tir de Ténèbres qui se concentre sur un ennemi, les autres subissent 1/3 des dégâts." + ALTERNATIVE_ALL + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var poisongas:Object = {
         "name":"Gaz Toxiques",
         "desc":"Empoisonne fortement tous les ennemis en infligeant des dégâts Bio magiques." + COOLDOWN_4
      };
      
      public static var airstrike1:Object = {
         "name":"Missile Air-Sol",
         "desc":"Explose sur un seul ennemi pour de gros dégâts d\'explosifs magiques." + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike2:Object = {
         "name":"Bombardement",
         "desc":"Explose sur tous les ennemis pour de gros dégâts d\'explosifs magiques." + ALTERNATIVE_ONE + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike3:Object = {
         "name":"M.O.A.B",
         "desc":"Explose sur tous les ennemis pour de très lourds dégâts d’explosifs magiques. Met très longtemps à se recharger." + equips.MAY_STAGGER + COOLDOWN_11
      };
      
      public static var medipack1:Object = {
         "name":"Kit de Soins",
         "desc":"Soigne un allié et guérit toutes ses altérations d\'état. " + COOLDOWN_4
      };
      
      public static var medipack2:Object = {
         "name":"Bombardement Médical",
         "desc":"Soigne tous les alliés et guérit toutes leurs altérations d\'état. " + COOLDOWN_4
      };
      
      public static var tankguns:Object = {
         "name":"Mitrailleuses",
         "desc":"Tire à répétition sur tous les ennemis avec des attaques explosives." + COOLDOWN_2
      };
      
      public static var armorcrush:Object = {
         "name":"Écrasement",
         "desc":"Écrase une cible avec une attaque de mêlée, et dissipe ses bonus et bienfaits." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var hyperbeam:Object = {
         "name":"Ultralaser",
         "desc":"S\'utilise en deux tours: Charge à la première utilisation et tire à la seconde. Inflige d\'immense dégâts magiques à tous les ennemis." + WEP_EFFECTS
      };
      
      public static var nuke:Object = {
         "name":"Bombe Atomique",
         "desc":LIMIT_BREAK + "Inflige des dégâts magiques de Feu massifs à tous les ennemis, et brûle tous les alliés et ennemis." + HIGH_ACC + "\n • Remplace la météo par Radiations pour 5 tours. "
      };
      
      public static var oblivion:Object = {
         "name":"Extinction",
         "desc":LIMIT_BREAK + "Inflige des dégâts physiques d\'explosifs massifs à tous les ennemis. Le tank de Lance est détruit, mais il en a de rechange." + HIGH_ACC
      };
      
      public static var arrowslash:Object = {
         "name":"Attaque de base",
         "desc":"Frappe une cible avec une flèche, littéralement." + WEP_EFFECTS
      };
      
      public static var bowwhack:Object = {
         "name":"Claque à l\'Arc",
         "desc":"Claque un ennemi avec votre arc, les faisant considérer la désertion. Même les ennemis coriaces ne sont pas immunisés." + "\n • Cette compétence ne tue jamais les ennemis." + WEP_EFFECTS
      };
      
      public static var gust:Object = {
         "name":"Courant d’air",
         "desc":"Magie de Vent basique qui frappe une seule cible." + equips.MAY_LIGHT
      };
      
      public static var whirlwind:Object = {
         "name":"Tornade",
         "desc":"Magie de Vent avancée qui frappe une seule cible." + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var hurricane:Object = {
         "name":"Ouragan",
         "desc":"Puissante magie de Vent qui frappe tous les ennemis." + ALTERNATIVE_ONE + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var logjab:Object = {
         "name":"Bûche",
         "desc":"Attaque de Terre basique qui frappe une seule cible." + equips.MAY_STAGGER
      };
      
      public static var lumbertrap:Object = {
         "name":"Empalement",
         "desc":"Puissante attaque de Terre qui frappe plusieurs fois la même cible." + equips.MAY_STAGGER
      };
      
      public static var leafblade:Object = {
         "name":"Lame-Feuille",
         "desc":"Attaque Bio basique qui frappe deux fois une même cible." + HIGH_CRITS
      };
      
      public static var razorleaf:Object = {
         "name":"Tranch\'Herbes",
         "desc":"Puissante attaque Bio qui frappe tous les ennemis plusieurs fois." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var soularrow:Object = {
         "name":"Flèche Sacrée",
         "desc":"Attaque Sacrée avancée qui frappe un seul ennemi." + equips.MAY_WEAKEN
      };
      
      public static var frostarrow:Object = {
         "name":"Flèche de Givre",
         "desc":"Attaque de Glace avancée qui frappe un seul ennemi." + equips.MAY_FREEZE
      };
      
      public static var aquaarrow:Object = {
         "name":"Flèche Aqueuse",
         "desc":"Attaque d\'Eau avancée qui frappe un seul ennemi." + equips.MAY_WET
      };
      
      public static var nitroarrow:Object = {
         "name":"Nitro Flèche",
         "desc":"Attaque avancée d\'explosifs qui frappe un seul ennemi." + equips.MAY_DISPEL
      };
      
      public static var sparkarrow:Object = {
         "name":"Flèche Foudroyante",
         "desc":"Attaque de Foudre avancée qui frappe un seul ennemi." + equips.MAY_STUN
      };
      
      public static var soularrow2:Object = {
         "name":"Déferlement Sacré",
         "desc":"Puissante attaque Sacré :" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WEAKEN
      };
      
      public static var frostarrow2:Object = {
         "name":"Déluge de Givre",
         "desc":"Puissante attaque de Glace :" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var aquaarrow2:Object = {
         "name":"Volée Aqueuse",
         "desc":"Puissante attaque d’Eau :" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WET
      };
      
      public static var nitroarrow2:Object = {
         "name":"Nitro Tempète",
         "desc":"Puissante attaque Explosive :" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_DISPEL
      };
      
      public static var sparkarrow2:Object = {
         "name":"Douche Foudroyante",
         "desc":"Puissante attaque de Foudre :" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var piercingshot:Object = {
         "name":"Tir Perçant",
         "desc":"Attaque avec un tir à très haute précision." + equips.IGNORES_BUFFS + HIGH_CRITS + WEP_EFFECTS
      };
      
      public static var comboshot:Object = {
         "name":"Tir Multiple",
         "desc":"Attaque puissante qui envoie plusieurs flèches à haute précision." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var arrowrain:Object = {
         "name":"Pluie de Flèches",
         "desc":"Tire une volée de flèches qui touchent tous les ennemis plusieurs fois." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var renew:Object = {
         "name":"Renouveau",
         "desc":"Magie de guérison simple qui soigne un allié."
      };
      
      public static var remedy:Object = {
         "name":"Rafraichissement",
         "desc":"Magie de guérison avancée qui soigne un allié et lui donne le bienfait Béni."
      };
      
      public static var motherearth:Object = {
         "name":"Mère Nature",
         "desc":LIMIT_BREAK + "Inflige des dégâts Bio magiques massifs à tous les ennemis et les empoisonne. \n • Béni tous les alliés, même en réserve. " + HIGH_ACC + "\n • Dégage le ciel pour 5 tours."
      };
      
      public static var mightyoak:Object = {
         "name":"Grand Chêne",
         "desc":LIMIT_BREAK + "Inflige des dégâts physiques de Terre massifs à tous les ennemis en frappant plusieurs fois." + HIGH_ACC
      };
      
      public static var backstab:Object = {
         "name":"Attaque Simple",
         "desc":"Poignarde une seule cible en se faufilant dans son dos." + WEP_EFFECTS
      };
      
      public static var multistab:Object = {
         "name":"Escrime",
         "desc":"Attaque simple qui frappe 4 fois un même ennemi." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var bladeblitz:Object = {
         "name":"Lames Furieuses",
         "desc":"Puissante attaque qui assène frénétiquement 11 coups à une même cible." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var swiftslash:Object = {
         "name":"Vive-tranche",
         "desc":"Une attaque extrêmement rapide qui frappe tous les ennemis." + WEP_EFFECTS + HIGH_ACC + COOLDOWN_2
      };
      
      public static var ninelives:Object = {
         "name":"Neuf Vies",
         "desc":"Soigne tous les alliés, leur donne le bienfait Halo, et ressuscite les alliés morts. Met longtemps à se recharger." + COOLDOWN_11
      };
      
      public static var starblast:Object = {
         "name":"Souffle Étoilé",
         "desc":"Frappe tous les ennemis avec une attaque magique non-élémentaire. Met longtemps à se recharger." + equips.MAY_DISPEL + HIGH_ACC + COOLDOWN_11
      };
      
      public static var sworddance:Object = {
         "name":"Bond",
         "desc":"Attaque de mélée simple :" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance2:Object = {
         "name":"Danse-lame",
         "desc":"Attaque de mélée avancée :" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance3:Object = {
         "name":"Super Tranche",
         "desc":"Puissante attaque de mêlée" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var darkslash:Object = {
         "name":"Frappe de l\'Ombre",
         "desc":"Attaque avancée de Ténèbres :" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var darkslash2:Object = {
         "name":"Tango Vespéral",
         "desc":"Puissante attaque de Ténèbres :" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var holyslash:Object = {
         "name":"Estoc Sacré",
         "desc":"Attaque Sacrée avancée :" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var holyslash2:Object = {
         "name":"Danse des Déesses",
         "desc":"Puissante attaque Sacrée :" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var lightningslash:Object = {
         "name":"Frappe du Tonnerre",
         "desc":"Attaque avancée de Foudre :" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var lightningslash2:Object = {
         "name":"Boogie Survolté",
         "desc":"Puissante attaque de Foudre :" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var windslash:Object = {
         "name":"Frappe Soupirée",
         "desc":"Attaque avancée de Vent :" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var windslash2:Object = {
         "name":"Tornade Capricieuse",
         "desc":"Puissante attaque de Vent :" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var waterslash:Object = {
         "name":"Frappe Moussante",
         "desc":"Attaque avancée d\'Eau :" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var waterslash2:Object = {
         "name":"Danse du Tourbillon",
         "desc":"Puissante attaque d\'Eau :" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var sushicat:Object = {
         "name":"Sushi Cat",
         "desc":"Rebondit en frappant 3 fois un ennemi au hasard, puis soigne les 2 joueurs les plus blessés." + COOLDOWN_3
      };
      
      public static var sushicat2:Object = {
         "name":"Sushi Cat !",
         "desc":"Rebondit en frappant 3 fois un ennemi au hasard, puis soigne les 2 joueurs les plus blessés. \n • Donne le bienfait Bonheur aux joueurs soignés." + COOLDOWN_3
      };
      
      public static var berserk:Object = {
         "name":"Rage",
         "desc":"Enrage une cible, allié ou ennemi, la faisant attaquer sans réfléchir avec une puissance accrue. " + COOLDOWN_2
      };
      
      public static var berserk2:Object = {
         "name":"Rage Furieuse ",
         "desc":"Enrage tous les joueurs. Il est aussi possible de concentrer l\'effet sur un joueur ou un ennemi. " + COOLDOWN_3
      };
      
      public static var cherish:Object = {
         "name":"Charme",
         "desc":"Rend la cible adorable, l\'empêchant d\'être ciblé par les attaques mono-cibles. " + COOLDOWN_3
      };
      
      public static var cherish2:Object = {
         "name":"Aura de Séduction",
         "desc":"Rend tous les joueurs adorables. L\'effet peut aussi être concentré sur un seul joueur. " + COOLDOWN_4
      };
      
      public static var thecreator:Object = {
         "name":"Le Créateur",
         "desc":LIMIT_BREAK + "Inflige des dégâts sacrés massifs à tous les ennemis. \n • Donne le bienfait Bonheur à tous les alliés, même en réserve." + HIGH_ACC + "\n • Dégage le ciel pour 5 tours."
      };
      
      public static var thedestroyer:Object = {
         "name":"Le Destructeur",
         "desc":LIMIT_BREAK + "Inflige des dégâts massifs de ténèbres à tous les ennemis en les frappant plusieurs fois." + DISPEL_ALL + HIGH_ACC
      };
      
      public static var snowbunny:Object = {
         "name":"Lapins de Neige",
         "desc":"Magie de Glace qui frappe tous les ennemis." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var snowcat:Object = {
         "name":"Chatons de Neige",
         "desc":"Puissante magie de Glace qui frappe tous les ennemis, et permet un combo de givre." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var ivy:Object = {
         "name":"Lierre",
         "desc":"Attaque Bio qui frappe une seule cible." + equips.MAY_POISON
      };
      
      public static var vines:Object = {
         "name":"Vignes",
         "desc":"Puissante attaque Bio qui frappe une même cible plusieurs fois." + equips.MAY_POISON + equips.DEBUFF_EVA
      };
      
      public static var energy:Object = {
         "name":"Énergie",
         "desc":"Magie Explosive basique qui touche une seule cible." + HIGH_CRITS
      };
      
      public static var energy2:Object = {
         "name":"Bombe d\'Énergie",
         "desc":"Magie Explosive avancée qui touche une seule cible." + HIGH_CRITS
      };
      
      public static var energy3:Object = {
         "name":"Barrage Énergétique",
         "desc":"Puissante magie Explosive qui touche tous les ennemis." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var bubbles:Object = {
         "name":"Bulle",
         "desc":"Magie d\'Eau basique qui frappe une seule cible." + equips.MAY_WET
      };
      
      public static var whirlpool:Object = {
         "name":"Tourbillon",
         "desc":"Magie d\'Eau avancée qui frappe une seule cible." + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var vortex:Object = {
         "name":"Crève-Bulle",
         "desc":"Puissante magie d\'Eau qui frappe tous les ennemis." + ALTERNATIVE_ONE + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var laserblade:Object = {
         "name":"Coup d\'Jus",
         "desc":"Attaque avancée de Foudre qui frappe une seule cible." + equips.MAY_STAGGER
      };
      
      public static var lasersword:Object = {
         "name":"Décharge",
         "desc":"Puissante attaque de Foudre qui frappe une seule cible." + equips.MAY_STAGGER
      };
      
      public static var bulletbob:Object = {
         "name":"Bob Balle",
         "desc":"Attaque explosive avancée qui frappe une seule cible." + HIGH_CRITS
      };
      
      public static var bigbullet:Object = {
         "name":"Balle Géante",
         "desc":"Puissante attaque explosive qui frappe une seule cible." + HIGH_CRITS
      };
      
      public static var gale:Object = {
         "name":"Bourrasque",
         "desc":"Attaque de vent avancée qui frappe une seule cible." + equips.MAY_LIGHT
      };
      
      public static var tempest:Object = {
         "name":"Tempête",
         "desc":"Puissante attaque de vent qui frappe une seule cible." + equips.MAY_LIGHT
      };
      
      public static var powermetal:Object = {
         "name":"Power Metal",
         "desc":"Inflige des dégâts magiques de vent à tous les ennemis, et soigne tous les alliés." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var air:Object = {
         "name":"Air",
         "desc":"Magie basique de Vent qui frappe une seule cible." + equips.MAY_STAGGER
      };
      
      public static var air2:Object = {
         "name":"Onde",
         "desc":"Magie avancée de Vent qui frappe une seule cible." + equips.MAY_STAGGER
      };
      
      public static var air3:Object = {
         "name":"Onde de Choc",
         "desc":"Puissante magie de Vent qui frappe tous les ennemis." + ALTERNATIVE_ONE + equips.MAY_STAGGER
      };
      
      public static var sawblade:Object = {
         "name":"Scie Circulaire",
         "desc":"Attaque non-élémentaire avancée qui frappe une seule cible." + equips.IGNORES_BUFFS + equips.MAY_DEATH
      };
      
      public static var sawblades:Object = {
         "name":"Déchiqueteur",
         "desc":"Puissante attaque non-élémentaire qui frappe tous les ennemis." + equips.IGNORES_BUFFS + equips.MAY_DEATH + COOLDOWN_2
      };
      
      public static var gaia:Object = {
         "name":"Graine de Gaïa",
         "desc":"Magie de Terre basique qui frappe une seule cible." + equips.MAY_TIRE
      };
      
      public static var gaia2:Object = {
         "name":"Bourgeon de Gaïa",
         "desc":"Magie de Terre avancée qui frappe une seule cible." + equips.MAY_TIRE
      };
      
      public static var gaia3:Object = {
         "name":"Fleur de Gaïa",
         "desc":"Puissante magie de Terre qui frappe tous les ennemis." + ALTERNATIVE_ONE + equips.MAY_TIRE
      };
      
      public static var firespin:Object = {
         "name":"Roue de Feu",
         "desc":"Forte magie de Feu qui touche tous les ennemis." + equips.MAY_BURN + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var purgingflame:Object = {
         "name":"Flamme Purificatrice",
         "desc":"Magie Sacrée qui dissipe les bonus d\'une seule cible et réduit son attaque magique." + HIGH_ACC
      };
      
      public static var screamer:Object = {
         "name":"Effroi",
         "desc":"Inflige des dégâts de Ténèbres à tous les ennemis et réduit leur attaque." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var heal:Object = {
         "name":"Soin",
         "desc":"Magie de guérison simple qui soigne un allié." + COOLDOWN_2
      };
      
      public static var healmore:Object = {
         "name":"Soin Majeur",
         "desc":"Puissante magie de guérison qui soigne tous les alliés. Le sort peut être concentré sur un seul allié pour le soigner davantage." + COOLDOWN_2
      };
      
      public static var revive:Object = {
         "name":"Résurrection",
         "desc":"Ressuscite un allié mort ou donne le statut Halo à un allié vivant. "
      };
      
      public static var purify:Object = {
         "name":"Purification",
         "desc":"Guérit les altérations d\'états courantes soit des alliés, soit des ennemis. N\'inclut pas les effets neutres comme Trempé ou Desséché. " + COOLDOWN_3
      };
      
      public static var lockon:Object = {
         "name":"Verrouillage",
         "desc":"Booste la précision d\'un allié et lui prodigue le bienfait Bonheur. " + COOLDOWN_2
      };
      
      public static var protect:Object = {
         "name":"Carapace",
         "desc":"Booste la défense de tous les alliés, y compris ceux en réserve." + COOLDOWN_6
      };
      
      public static var barrier:Object = {
         "name":"Blindage",
         "desc":"Booste la défense magique de tous les alliés, y compris ceux en réserve." + COOLDOWN_6
      };
      
      public static var reflex:Object = {
         "name":"Réflexes",
         "desc":"Booste l\'esquive de tous les alliés, y compris ceux en réserve, et retire le statut Dissimulé des alliés en combat. " + COOLDOWN_6
      };
      
      public static var guardian:Object = {
         "name":"Égide",
         "desc":"Booste la défense et la défense magique d\'un allié. " + COOLDOWN_2
      };
      
      public static var dispel:Object = {
         "name":"Dissipation",
         "desc":"Dissipe les bonus et bienfaits de tous les ennemis. Peut aussi être utilisé sur les alliés pour retirer les malus. " + COOLDOWN_6
      };
      
      public static var flare:Object = {
         "name":"Flash",
         "desc":"Réduit la précision de tous les ennemis." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var bind:Object = {
         "name":"Filet",
         "desc":"Réduit l\'esquive de tous les ennemis." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var debilitate:Object = {
         "name":"Fragilité",
         "desc":"Réduit la défense de tous les ennemis." + COOLDOWN_6
      };
      
      public static var enfeeble:Object = {
         "name":"Défaillance",
         "desc":"Réduit la défense magique de tous les ennemis." + COOLDOWN_6
      };
      
      public static var teradrill:Object = {
         "name":"Giga Foreuse",
         "desc":"Puissante attaque de Terre qui frappe une seule cible. Fait bien plus de dégâts si la cible a un bonus de défense, défense magique ou est en position de Défense. " + COOLDOWN_3
      };
      
      public static var encore:Object = {
         "name":"Encore",
         "desc":"Donne un tour supplémentaire à un allié. Inutile de l\'utiliser sur soi-même." + COOLDOWN_3
      };
      
      public static var firecrackers:Object = {
         "name":"Pétards",
         "desc":"Porte malheur à tous les ennemis et bonheur à tous les alliés, y compris ceux en réserve." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var abzero:Object = {
         "name":"Zéro Absolu",
         "desc":LIMIT_BREAK + "Inflige de gros dégâts magiques de Glace à tous les ennemis, réduit leur esquive, et les gèle. \n • Annule les temps de recharge de tous les joueurs." + HIGH_ACC
      };
      
      public static var tsunami:Object = {
         "name":"Tsunami",
         "desc":LIMIT_BREAK + "Inflige des dégâts physiques ou magiques d\'Eau massifs à tous les ennemis et les trempe. \n • Les dégâts se basent sur la stat la plus élevée." + equips.MAY_DEATH + HIGH_ACC_2
      };
      
      public static var supernova:Object = {
         "name":"Supernova",
         "desc":LIMIT_BREAK + "Inflige des dégâts magique de Feu massifs à tous les ennemis et alliés, et les brûle. \n • Ne peut pas être esquivé."
      };
      
      public static var deathmetal:Object = {
         "name":"Death Metal",
         "desc":LIMIT_BREAK + "Inflige des dégâts magiques de Vent massifs à tous les ennemis. Soigne tous les alliés, même en réserve, et leur donne le bienfait Moral." + HIGH_ACC
      };
      
      public static var annihilate:Object = {
         "name":"Annihilation",
         "desc":LIMIT_BREAK + "Attaque avec une grande chance de tuer instantanément tous les ennemis. Peu efficace contre les boss et n\'a pas une grande précision."
      };
      
      public static var ion:Object = {
         "name":"Canon à Ion",
         "desc":LIMIT_BREAK + "Inflige des dégâts magique de Foudre massifs à tous les ennemis et peut les paralyser. \n • Charge également l\'Ultralaser de Lance." + HIGH_ACC_2
      };
      
      public static var blackhole:Object = {
         "name":"Trou Noir",
         "desc":LIMIT_BREAK + "Inflige des dégâts magiques de Ténèbres massifs à tous les ennemis et les alourdit. Mais tue le lanceur." + HIGH_ACC
      };
      
      public static var rapture:Object = {
         "name":"Puissance cachée",
         "desc":LIMIT_BREAK + "Inflige des dégâts physiques ou magiques massifs à tous les ennemis. \n • Les dégâts se basent sur la stat la plus élevée." + WEP_EFFECTS + HIGH_ACC
      };
      
      public static var bones:String = "Nonoss";
      
      public static var bonestar:String = "Pentacle Osseux";
      
      public static var groundblade:String = "Lame des Morts";
      
      public static var fallingstar:String = "Tombe Étoile";
      
      public static var firerock:String = "Roche Magmatique";
      
      public static var stalactite:String = "Stalactite";
      
      public static var stalactite2:String = "Stalactites";
      
      public static var fume:String = "Fumerolle Ardente";
      
      public static var eruption:String = "Eruption";
      
      public static var scald:String = "Fumerolle Bouillante";
      
      public static var rain:String = "Pluie";
      
      public static var sandstorm:String = "Tempête de Sable";
      
      public static var hail:String = "Grêle";
      
      public static var nitro:String = "Charge Nitro";
      
      public static var acid:String = "Acide Corrosif";
      
      public static var bamboo:String = "Bambou";
      
      public static var bamboo2:String = "Piège de Bambou";
      
      public static var bluebolt:String = "Rayon Noir";
      
      public static var deepfreeze:String = "Grand Froid";
      
      public static var wafer:String = "Gaufrette";
      
      public static var present:String = "Cadeau Farceur";
      
      public static var plasmacage:String = "Cage de Plasma";
      
      public static var tankcannon:String = "Canon de Tank";
      
      public static var candycanes:String = "Sucres d\'Orge";
      
      public static var bonefish:String = "Arette";
      
      public static var riceball:String = "Bombe de Riz";
      
      public static var mushroom:String = "Champignons";
      
      public static var lifedrain:String = "Vampirisme";
      
      public static var smokepuff:String = "Souffle Fumigène";
      
      public static var confusion:String = "Confusion";
      
      public static var ink:String = "Tache d\'Encre";
      
      public static var chocolate:String = "Tache de Chocolat";
      
      public static var tentacles:String = "Tentacules";
      
      public static var slowdown:String = "Ralentissement";
      
      public static var speedup:String = "Accélération";
      
      public static var poisonroot:String = "Racine Toxique";
      
      public static var burningroot:String = "Racine Brûlante";
      
      public static var searoot:String = "Racine Marine";
      
      public static var bombblast:String = "Détonation";
      
      public static var bigblast:String = "Explosion";
      
      public static var cactus:String = "Cactus";
      
      public static var cacti:String = "Cactus +";
      
      public static var spark:String = "Etincelle";
      
      public static var bigspark:String = "Arc Électrique";
      
      public static var talisman:String = "Sceau du Talisman";
      
      public static var ember:String = "Flammèche";
      
      public static var fireblast2:String = "Souffle Ardent";
      
      public static var firecrystals:String = "Cristaux de Feu";
      
      public static var zephyrcrystals:String = "Cristaux du Zéphyr";
      
      public static var frost:String = "Coup de Froid";
      
      public static var rockslide:String = "Éboulement";
      
      public static var avalanche:String = "Avalanche";
      
      public static var blackspikes:String = "Pieux Noirs";
      
      public static var stonefist:String = "Poing de Roche";
      
      public static var spiderweb:String = "Toile d\'Araignée";
      
      public static var spiders:String = "Essaim Arachnéen";
      
      public static var geometry2:String = "Distorsion Spatiale";
      
      public static var geometry3:String = "Champ de Distorsion";
      
      public static var sacrifice:String = "Sacrifice";
      
      public static var bigroot:String = "Grosse Racine";
      
      public static var seabomb:String = "Bombe Sous-marine";
      
      public static var fairy:String = "Fée Kamikaze";
      
      public static var fly:String = "Mouche Explosive";
      
      public static var starpunch:String = "Frappe Etoilée";
      
      public static var darken:String = "Invisibilité";
      
      public static var lighten:String = "Enchantement";
      
      public static var SlimeChocolate:String = "Crache sur une seule cible, infligeant des dégâts de Terre et réduisant sa précision.";
      
      public static var SlimeIcecream:String = "Utilise une magie de Glace basique qui fait grelotter une seule cible.";
      
      public static var SlimeSand:String = "Lance une attaque Bio basique qui peut paralyser une seule cible.";
      
      public static var SlimeLava:String = "Fait une attaque de Feu basique qui dessèche une seule cible.";
      
      public static var SlimeMouse:String = "Fait une faible attaque de Foudre qui paralyse une seule cible à coup sûr.";
      
      public static var SlimeWater:String = "Fait une attaque Eau pathétiquement faible sur une seule cible.";
      
      public static var SlimeMud:String = "Fait une attaque Bio basique sur une seule cible.";
      
      public static var SlimeBunny:String = "Donne le bienfait Régénération à tous les alliés, même ceux en réserve, les soignant pendant plusieurs tours.";
      
      public static var SpriteFire:String = "Change la météo actuelle par Pluie de cendres pour 5 tours.";
      
      public static var SpriteIce:String = "Change la météo actuelle par Blizzard pour 5 tours.";
      
      public static var SpriteThunder:String = "Change la météo actuelle par Charge statique pour 5 tours.";
      
      public static var SpriteRock:String = "Change la météo actuelle par Secousse pour 5 tours.";
      
      public static var SpriteWind:String = "Change la météo actuelle par Venteux pour 5 tours.";
      
      public static var ChomperLeafy:String = "Change la météo actuelle par Brise pour 5 tours.";
      
      public static var ChomperSeaweed:String = "Change la météo actuelle par Pluie pour 5 tours.";
      
      public static var ChomperMagma:String = "Change la météo actuelle par Ensoleillé pour 5 tours.";
      
      public static var ChomperMutant:String = "Change la météo actuelle par Pluie acide pour 5 tours.";
      
      public static var CreepThorny:String = "Pique avec une attaque de Terre avancée, pouvant paralyser la cible.";
      
      public static var CreepIcicle:String = "Pique avec une attaque de Glace avancée, pouvant faire grelotter la cible.";
      
      public static var CreepHermit:String = "Coupe l’ennemi avec une attaque avancée non-élémentaire.";
      
      public static var CreepGreen:String = "Rebondit 3 fois sur une cible en lui infligeant de puissant dégâts non élémentaires." + RETARGETS_2;
      
      public static var CreepRed:String = "Se jette sur un ennemi pour une puissante attaque de Vent qui surprend la cible.";
      
      public static var CreepBlue:String = "Provoque une puissante explosion qui paralyse la cible.";
      
      public static var Defender1:String = "Atomise tous les ennemis avec une puissante décharge électrique qui peut aussi les surprendre.";
      
      public static var Defender2:String = "Tire une puissante rafale d\'eau sur une seule cible, ce qui peut aussi la tremper. ";
      
      public static var DogFriend:String = "Donne le bienfait Adorable à tous les alliés, faisant hésiter les ennemis à les attaquer.";
      
      public static var DogMaxi:String = DogFriend;
      
      public static var DogTanuki:String = "Bondit sur un ennemi pour une attaque de feu et le brûle.";
      
      public static var DogWolf:String = "Bondit sur un ennemi pour une attaque de glace et le gèle.";
      
      public static var DogZap:String = "Bondit sur tous les ennemis pour une attaque de foudre hallucinante qui peut les surprendre.";
      
      public static var DogMage:String = "Frappe tous les ennemis avec un sort sacré malfaisant qui les maudit.";
      
      public static var ChibiKnightUltra:String = "Booste l\'attaque de tous les alliés, même ceux en réserve, puis attaque plusieurs fois un même ennemi." + RETARGETS_2;
      
      public static var BushGreen:String = "Hurle sur les ennemis pour réduire un peu leur attaque.";
      
      public static var BushRed:String = "Hurle sur les ennemis pour réduire un peu leur défense.";
      
      public static var BushDark:String = "Siffle vicieusement aux ennemis pour réduire leur esquive.";
      
      public static var BushMud:String = "Hurle sur les ennemis pour réduire un peu leur attaque magique.";
      
      public static var BushSand:String = "Siffle vicieusement aux ennemis pour réduire leur défense magique.";
      
      public static var GolemTopaz:String = "Roue une cible de puissants coups de poings électriques qui peuvent la paralyser .";
      
      public static var GolemPearl:String = "Une puissante magie de glace rend tous les ennemis grelottant, et remplace le temps par Grèle pour 5 tours.";
      
      public static var GolemAmethyst:String = "Se jette sur tous les ennemis pour des dégâts non-élémentaire qui peuvent les surprendre.";
      
      public static var FishSteam:String = "Plonge sur les ennemis à la vitesse du son et peut les alléger.";
      
      public static var FishGold:String = "Tire sur tous les ennemis avec un rayon magique sacré qui peut les dessécher.";
      
      public static var FishJet:String = "Mitraille tous les ennemis avec une attaque explosive basique.";
      
      public static var HandSkeleton:String = "Donne le bienfait Bonheur à tous les alliés, même ceux en réserve, ce qui augmente leur chance pour les effets aléatoires.";
      
      public static var HandZombie:String = "Condamne tous les ennemis, provoquant leur mort instantanée après 3 tours.";
      
      public static var HandMagma:String = "Enrage tous les alliés, les faisant attaquer sans réfléchir avec une puissance accrue.";
      
      public static var FlybotBlue:String = "Inverse les bonus/malus de tous les alliés, transformant les positifs en négatifs et vice-versa .";
      
      public static var FlybotYellow:String = "Inverse les bonus/malus de tous les ennemis, transformant les positifs en négatifs et vice-versa.";
      
      public static var FlybotRed:String = "Inverse les bonus/malus d\'un seul allié ou ennemi, transformant les positifs en négatifs et vice-versa.";
      
      public static var FallenLost:String = "Une attaque de vent qui tranche un ennemi et donne le bienfait Moral à tous les alliés, même en réserve.";
      
      public static var FallenCrucified:String = "Découpe un ennemi avec une attaque sacrée qui peut le tuer instantanément.";
      
      public static var FallenDrowned:String = "Dissipe avec élégance les malus de tous les alliés en combat.";
      
      public static var FallenBurned:String = "Une attaque de feu qui dessèche tous les ennemis et remplace le temps par Sirocco pour 5 tours.";
      
      public static var FallenBeheaded:String = "Cogne un ennemi avec une attaque de Ténèbres et prodigue le bienfait Bravoure à tous les alliés, même en réserve.";
      
      public static var PixelSlime:String = "Frappe un seul ennemi avec une faible magie bio qui le crève considérablement.";
      
      public static var PixelBush:String = "Frappe un seul ennemi avec une faible magie de feu qui le dessèche considérablement.";
      
      public static var PixelBat:String = "Frappe un seul ennemi avec une faible magie de ténèbre qui l’affecte d’un grand malheur.";
      
      public static var PixelIdol:String = "Frappe un seul ennemi avec une faible magie explosive qui l’affaiblit considérablement.";
      
      public static var MonolithViking:String = "Donne le statut Célérité à tous les alliés, leur donnant généralement un tour supplémentaire chacun.";
      
      public static var MonolithAncient:String = "Donne le status Défense à tous les alliés, qui offre une excellente protection pour un tour.";
      
      public static var MonolithCosmic:String = "Oblitère le champ de bataille avec une magie noire dévastatrice qui frappe tous les ennemis.";
      
      public static var IdolGem:String = "Allège tous les alliés, même ceux en réserve, pour les protéger des dégâts de Terre.";
      
      public static var IdolStone:String = "Dessèche tous les alliés, même ceux en réserve, pour les protéger des dégâts de Foudre et de Glace.";
      
      public static var IdolMetal:String = "Alourdit tous les alliés, même ceux en réserve, pour les protéger des dégâts de Vent.";
      
      public static var IdolWood:String = "Béni tous les alliés, même ceux en réserve, pour les protéger des altérations d\'état.";
      
      public static var MirrorWise:String = IdolWood;
      
      public static var MirrorAngel:String = "Enchante tous les alliés, les immunisant à la magie mais les rendant vulnérables aux attaques physiques.";
      
      public static var MirrorDemon:String = "Rend invisible tous les alliés, les immunisant aux attaques physiques mais les rendant vulnérable à la magie.";
      
      public static var MirrorHaunted:String = "Mord l’ennemi avec une une puissante attaque de Ténèbres et le maudit.";
      
      public static var MammothWooly:String = "Plaque un ennemi et lui inflige des dégâts non-élémentaire massifs, les autres ennemis prenant 1/3 des dégâts." + equips.MAY_STUN;
      
      public static var MammothCamel:String = "Booste la défense magique de tous les alliés, même en réserve, puis frappe tous les ennemis avec une attaque de Terre.";
      
      public static var MammothWar:String = "Booste la défense de tous les alliés, même en réserve, puis provoque une explosion magique qui frappe tous les ennemis." + equips.MAY_STAGGER;
      
      public static var SquidPink:String = "Crache de l\'encre sur un seul ennemi et lui inflige des dégâts massifs de ténèbres, réduisant sa précision et le rendant invisible.";
      
      public static var SquidPurple:String = "Réduit la précision de tous les ennemis et peut les condamner.";
      
      public static var SquidLime:String = "Transperce tous les ennemis avec une puissante attaque de foudre qui les paralyse à coup sûr.";
      
      public static var Underlegs:String = "Dissipe les bonus de tous les ennemis avant de lâcher une avalanche de coups non-élémentaires.";
      
      public static var SlimeBigSand:String = "Une puissante attaque Bio qui frappe un seul ennemi et peut le paralyser.";
      
      public static var SlimeBigLava:String = "Frappe un seul ennemi avec une puissante attaque de feu et le brûle gravement.";
      
      public static var SlimeBigMud:String = "Lance une attaque Bio à base de champignon sur tous les ennemis avec des spores qui peuvent les paralyser.";
      
      public static var SlimeBigIcecream:String = "Refroidit et fait grelotter tous les ennemis avec une faible magie de glace, arrangeant un combo eau et glace.";
      
      public static var SlimeBigChocolate:String = "Vomit du chocolat partout sur les ennemis, leur infligeant des dégâts magiques de Terre et les alourdissant.";
      
      public static var WormPutrid:String = "Crache une faible toile sur un ennemi pour baisser drastiquement son esquive.";
      
      public static var WormScaly:String = "Mouille tous les alliés, même en réserve, pour les protéger des dégâts de feu.";
      
      public static var WormFuzzy:String = "Une faible morsure non-élémentaire qui peut transmettre un virus redoutable à la cible.";
      
      public static var WormCutie:String = "Retire les effets de statut neutres de tous les alliés, comme: Trempé, Grelottant, Sec, Lourd, Léger, Enchanté et Invisible.";
      
      public static var WraithIce:String = "Perce le coeur d\'un ennemi avec une attaque de glace qui peut le tuer instantanément.";
      
      public static var WraithFire:String = "Attaque l’ennemi avec une magie de feu infernale qui l\'enrage. \n • Il vaut mieux qu\'il ne survive pas.";
      
      public static var WraithSteel:String = "Bombarde plusieurs fois un même un ennemi, ce qui réduit sa défense et peut le surprendre.";
      
      public static var WraithLeaf:String = "Tire plusieurs fois sur un ennemi pour lui infliger des dégâts bio, l\'empoisonner et réduire sa défense magique.";
      
      public static var WraithMaster:String = "Lance une magie de ténèbres sur un ennemi et le réduit au silence pour longtemps.";
      
      public static var Glitch2:String = "???-?eII OBJET INTROUVABLE! ### \nERREUR: 0x000002";
      
      public static var Glitch1:String = "??-//DANGER: ##NÉANT## GARANTI SI SCEAU ##BRISÉ##!! 0?-//??";
      
      public static var GloopStone:String = "Rend un ennemi invisible, afin qu\'il subisse deux fois plus de dégâts magiques.";
      
      public static var GloopCrystal:String = "Enchante un ennemi, afin qu\'il subisse deux fois plus de dégâts physiques.";
      
      public static var GloopAsh:String = "Donne le statut Bravoure à tous les alliés, même en réserve, pour améliorer leur taux de coups critiques.";
      
      public static var GloopWood:String = "Donne le statut Moral à tous les alliés, même en réserve, pour les protéger d\'une mort instantanée.";
      
      public static var HydraZombie:String = "Tue instantanément tous les ennemis et frappe les éventuels survivants avec une attaque de ténèbres";
      
      public static var HydraMagma:String = "Écrase les ennemis sous une puissante magie de feu qui les brûle.";
      
      public static var HydraIce:String = "Mord plusieurs fois un même ennemi et lui inflige des dégâts de glace monstrueux.";
      
      public static var DragonEarth:String = "Réduit la défense magique de tous les ennemis avant de leur cracher un acide mortel, causant des dégâts magiques de type bio.";
      
      public static var DragonSky:String = "Réduit la défense de tous les ennemis avant leur envoyer une tempête de plumes tranchantes, infligeant des dégâts physiques de Vent.";
      
      public static var DragonSea:String = "Réduit l\'attaque de tous les ennemis avant de leur infliger des dégâts magiques d\'eau massifs qui les trempent.";
      
      public static var DragonOmega:String = "Réduit l\'attaque magique de tous les ennemis avant de les annihiler avec un sort sacré surpuissant.";
      
      public static var BatBlood:String = "Draine les Points de Vie d\'un ennemi avec une attaque bio basique, et les transmet au lanceur de l\'invocation.";
      
      public static var BatSnow:String = "Rend tous les alliés grelottant, même ceux en réserve, pour les protéger des dégâts bio.";
      
      public static var BatThunder:String = "Rends tous les alliés confus pour un long moment, ce qui fait basiquement passer en mode combat automatique.  \n • Evitez ça contre un boss.";
      
      public static var BatBone:String = "Transfère un virus à tous les alliés, même s\'ils y sont immunisés.";
      
      public static var BearBrown:String = "Martèle un ennemi d\'attaques non-élémentaires. Fait bien plus de dégâts quand le lanceur est blessé ou lorsque des alliés sont morts \n • La puissance maximale est de 1000.";
      
      public static var BearGrolar:String = "Écrase tous les ennemis sous une avalanche d’attaques de glace qui peut les geler.";
      
      public static var BearPanda:String = "Transperce tous les ennemis avec une pluie d\'attaques bio qui peuvent les empoisonner.";
      
      public static var BitIce:String = "Lance un sort Blindage boostant la défense magique de tous les alliés, même ceux en réserve.";
      
      public static var BitThunder:String = "Lance un sort Carapace qui booste la défense de tous les alliés, même ceux en réserve. ";
      
      public static var BitHoly:String = "Lance un puissant sort de guérison qui soigne tous les alliés.";
      
      public static var BitFire:String = "Assaille un ennemi avec une attaque de feu qui réduit sa défense et peut le brûler.";
      
      public static var BitWind:String = "Assaille un ennemi avec une attaque de Vent qui réduit sa défense magique et peut le paralyser.";
      
      public static var BitWater:String = "Asperge d’eau tous les ennemis avec une faible attaque magique qui les trempe, pour permettre des combos de glace ou de foudre.";
      
      public static var BitPoison:String = "Empoisonne tous les ennemis avec une faible magie bio, leur infligeant des dégâts sur plusieurs tours.";
      
      public static var BoulderCoral:String = "Bondit sur une seule cible pour une attaque d\'eau qui peut surprendre la cible.";
      
      public static var BoulderMarble:String = "Frappe tous les ennemis avec une magie de vent et les réduit au silence pour longtemps.";
      
      public static var BoulderObsidian:String = "Frappe tous les ennemis avec un d20, infligeant des dégâts de feu très variables et les brûlant.";
      
      public static var BoulderDirt:String = "Lance une attaque de Terre sur tous les ennemis pour les crever.";
      
      public static var BoulderSandstone:String = "Bondit sur une seule cible et lui inflige des dégâts de terre massifs.";
      
      public static var CatNinja:String = "Donne un tour supplémentaire à un allié.";
      
      public static var CatSniper:String = "Tire sur un ennemi en pleine tête, ce qui peut le tuer instantanément avec un peu de chance.";
      
      public static var CatWizard:String = "Lance un simple sort de guérison qui soigne un allié.";
      
      public static var CatBomber:String = "Envoie une bombe sur un ennemi, pour le surprendre et lui infliger des dégâts magiques.";
      
      public static var CatWarrior:String = "Tranche un ennemi avec un enchaînement d\'attaques non-élémentaires.";
      
      public static var DollMatt:String = "Booste fortement l\'attaque d\'un allié et lui donne le bienfait Béni.";
      
      public static var DollNatalie:String = "Booste fortement l\'attaque magique d\'un allié et lui donne le bienfait Moral.";
      
      public static var DollLance:String = "Frappe tous les ennemis avec une puissante magie explosive qui peut les surprendre.";
      
      public static var DollAnna:String = "Envoie une flèche bio perçante, qui inflige davantage de dégâts quand la cible a un bonus de défense, de défense magique ou est en position de défense.";
      
      public static var DollNoLegs:String = "Miaule sinistrement aux ennemis, pour réduire leur esquive et leur porter Malheur.";
      
      public static var BossCyclopsDesert:String = "Frappe tous les ennemis plusieurs fois avec des dégâts magiques massifs et explosifs, pouvant les paralyser.";
      
      public static var BossCyclopsGlacial:String = "Roue un ennemi de puissants coups de glace, les autres ennemis prenant 1/3 des dégâts. \n • Tous les ennemis encourent le risque d\'être gelé. ";
      
      public static var BossCyclopsInfernal:String = "Écrase plusieurs fois un ennemi avec de puissantes attaques de feu, les autres ennemis prenant 1/3 des dégâts. \n • Tous les ennemis encourent le risque d\'être brûlé. ";
      
      public static var BossGolemWater:String = "Frappe tous les ennemis avec de surpuissantes attaques d\'eau, qui peuvent les tremper.";
      
      public static var BossGolemFire:String = "Explose tous les ennemis avec de surpuissantes attaque de feu, qui brûlent les éventuels survivants.";
      
      public static var BossNestCat:String = "Booste l\'attaque magique de tous les alliés, même en réserve, puis tranche tous les ennemis avec une série d\'attaques bio. ";
      
      public static var BossNestNinja:String = "Frappe tous les ennemis avec une magie noire surpuissante qui les maudit.";
      
      public static var EvilMatt:String = "Écrase les ennemis un à un avec de surpuissantes attaques de terre." + HIGH_CRITS;
      
      public static var EvilNatalie:String = "Explose les ennemis un à un avec une magie sacrée surpuissante." + HIGH_CRITS;
      
      public static var EvilLance:String = "Explose les ennemis un à un avec une explosion magique surpuissante." + HIGH_CRITS;
      
      public static var EvilAnna:String = "Tranche les ennemis un à un avec une attaque de vent surpuissante." + HIGH_CRITS;
      
      public static var EvilNoLegs:String = "Invoque la plus puissante magie de l\'univers et oblitère tous les ennemis avec des dégâts non-élémentaires indécents.";
      
      public static var WraithOrigami:String = "Découpe un ennemi avec une attaque non-élémentaires, et inflige dissipation.";
      
      public static var GloopFab:String = "Change la météo actuelle par Printemps pour 5 tours.";
      
      public static var CatSkeleton:String = "Poignarde un ennemi, lui infligeant des dégâts physique de Ténèbres, et lui flanquant aussi le pire niveau de Malchance.";
      
      public static var HydraOrigami:String = "Envoie des épées de papier non-élémentaires à tous les ennemis, et augmente l\'esquive de tous les joueurs, même ceux en réserve.";
      
      public static var Defender3:String = "Balance une déflagration sur tous les ennemis, leur infligeant des dégâts physiques de Ténèbres. \n • Inflige toujours des coups critiques.";
      
      public static var BearBlack:String = "Tranche une cible, lui infligeant des dégâts physiques de feu et le pire niveau de Dessèchement.";
      
      public static var GolemBone:String = "Empale tous les ennemis avec des attaques non-élémentaires, et peut les affaiblir.";
      
      public static var WormBook:String = "Augmente la précision de tous les joueurs au front.";
      
      public static var BossGigalith:String = "Envoie une déflagration magique non-élémentaire sur tous les ennemis et les grille gravement, réduisant leur HP max avec le temps.";
      
      public static var BossDevourer:String = "Termine la simulation en cours.";
      
      public static var SketchPapalotl:String = "Empale tous les ennemis pour d\'énormes dégâts physiques non-élémentaires, qui ignorent complètement les bonus défensifs (mais pas les malus)";
      
      public static var SketchGuncat:String = "Envoie une déflagration explosive à moitié physique moitié magique sur tous les ennemis, et qui ignore les bonus défensifs. (mais pas les malus)";
      
      public static var SketchXolotl:String = "Frappe tous les ennemis avec des dégâts physique non-élémentaires, qui les affaiblit et ignore les bonus défensifs. (mais pas les malus)";
      
      public static var SketchGlaurung:String = "Inflige des dégâts magiques de vent à tous les ennemis, dissipe leurs bonus, et ignore les bonus défensifs (mais pas les malus)";
      
      public static var ArcadeGuoye:String = "Augmente drastiquement la précision de tous les alliés au front.";
      
      public static var ArcadeTotom:String = "Soigne complètement tous les alliés au front, et retire tous leurs malus et altérations.";
      
      public static var ArcadeChair:String = "Réduit beaucoup l\'attaque magique de tous les ennemis, en plus d\'infliger quelques dégâts magiques explosifs.";
      
      public static var ArcadePumpkus:String = "Elle ne fait rien de base, mais elle s\'énerve si on l\'appelle plus d\'une fois par tour. Dans ce cas, elle frappe violemment des ennemis au hasard.";
      
      public static var ArcadeGlob:String = "Lache sa mauvaise haleine sur une cible, qui va dissiper ses bonus, la crever, la maudir, l’affaiblir, lui porter malheur, et la dissimuler - dans cet ordre. Inflige aussi des dégâts non-élémentaires magiques.";
      
      public static var ArcadeSnek:String = "Mord une cible, lui infligeant des dégâts physiques non-élémentaires, et infligeant les pires niveaux de brûlure et poison.";
      
      public static var ArcadeRobo:String = "Foudroie une cible de dégâts magiques, la paralyse, et réduit grandement sa précision.";
      
      public static var ArcadeBosh:String = "Réduit grandement l\'attaque de tous les ennemis.";
      
      public static var ArcadeTreagure:String = "Inflige des dégâts d\'un élément aléatoire à des ennemis aléatoires, en leur infligeant des altérations aléatoires. \n • Les altérations possibles sont Gel, Grillade, Paralysie, Silence, Surprise, Condamnation et Malheur.";
      
      public static var ArcadePhoenix:String = "Ressuscite tous les alliés au front, ou leur donne l\'effet Halo s\'ils sont encore en vie.";
      
      public static var ArcadeMermaid:String = "Augmente drastiquement l\'esquive de tous les alliés, même en réserve.";
      
      public static var ArcadeMaw:String = "Infecte tous les ennemis avec un virus mortel, et leur inflige des dégâts bio magiques.";
      
      public static var ClassicSlime:String = "Lance une attaque non-élémentaire pathétiquement faible sur une cible.";
      
      public static var ClassicSlimeKing:String = "Lance un puissant sort de soin sur tous les alliés, même en réserve. \n • Retire également toutes les altérations.";
      
      public static var ClassicTree:String = "Inflige de très faibles dégâts bio à tous les ennemis, et peut les paralyser un instant.";
      
      public static var ClassicEyeball:String = "Frappe simplement tous les ennemis avec une magie non-élémentaire.";
      
      public static var ClassicBeholder:String = "Ligote une victime malheureuse avec ses tentacules, lui infligeant des dégâts bio et l\'empoisonnant gravement.";
      
      public static var ClassicWaspRed:String = "Réduit grandement l\'attaque magique d\'une cible.";
      
      public static var ClassicWaspBlack:String = "Réduit grandement l\'attaque d\'une cible.";
      
      public static var ClassicSandworm:String = "Vomit profusément sur tous les ennemis, leur infligeant des dégâts bio magiques, et réduisant leur attaque, défense, attaque magique et défense magique.";
      
      public static var ClassicEaterIce:String = "Un souffle magique glacial s\'abat sur les ennemis. Les dégâts sont faibles, mais les chances de geler sont élevées.";
      
      public static var ClassicEaterFire:String = "Un souffle magique ardent s\'abat sur les ennemis, et les dessèche.";
      
      public static var ClassicClayBlue:String = "Lance un sort de Vent sur une cible, lui infligeant le pire niveau de Légèreté.";
      
      public static var ClassicClayRed:String = "Frappe une cible avec une attaque de Terre, lui infligeant le pire niveau de Lourdeur.";
      
      public static var ClassicClayDark:String = "Lance un sort de Ténèbres sur une cible, la condamnant, réduisant aussi son attaque, défense, attaque magique, et défense magique.";
      
      public static var ClassicClayLight:String = "Lance un sort de soin majeur à tous les alliés, même en réserve.";
      
      public static var ClassicProtector:String = "Déchaîne un rayon magique foudroyant sur tous les ennemis. Ceux qui y survivent seront paralysés pendant plusieurs tours.";
      
      public static var ClassicSlingerGun:String = "Tente de tirer sur une cible avec une puissante attaque explosive.\n • Les chances de réussite seront toujours de 50%.\n • Ignore l\'esquive de la cible et ses bonus défensifs.";
      
      public static var ClassicSlingerSword:String = "Tente de transpercer une cible avec une puissante attaque non-élémentaire.\n • Les chances de réussite seront toujours de 50%.\n • Ignore l\'esquive de la cible et ses bonus défensifs.";
      
      public static var ClassicPraetorian:String = "Donne le statut Défense à tous les alliés au front. Inflige ensuite des dégâts non-élémentaires à tous les ennemis, qui peuvent mourir instantanément, ignorant leurs bonus défensifs (mais pas leur malus). ";
      
      public static var ClassicCrystalRed:String = "Envoie une déflagration magique de feu sur une cible, avec pour effet de la griller.";
      
      public static var ClassicCrystalBlue:String = "Ne fait pas tellement de dégâts, mais a de très fortes chances de geler la cible pour de nombreux tours.";
      
      public static var ClassicGigaGolem:String = "Écrase un ennemi avec une énorme attaque physique, soit de Feu soit de Glace - c\'est complétement aléatoire ! ";
      
      public static var ClassicRafflesia:String = "Inflige d\'énormes dégâts physiques bio à tous les ennemis.";
      
      public static var ClassicJack:String = "Augmente drastiquement l\'attaque et l\'attaque magique de tous les alliés, même en réserve.";
      
      public static var arcadePoison:String = "Bulle Toxique";
      
      public static var arcadeNettle:String = "Étreinte de Ronces";
      
      public static var arcadeTeeth:String = "Crocs Acérés";
      
      public static var bonePillar:String = "Colonne d\'Os";
      
      public static var hellfire:String = "Flammes Infernales";
      
      public static var pixelswords:String = "Tornade de Lames";
      
      public static var pixelfork:String = "Fourchettes Frénétiques";
      
      public static var paperSword:String = "Rapapière";
      
      public static var paperStars:String = "Feuilles Volantes";
      
      public static var swordswirl:String = "Tourbilames";
      
      public static var iceneedle:String = "Aiguilles de Glace";
      
      public static var thunderblast:String = "Coup de Jus";
      
      public static var snowblast:String = "Coup de Froid";
      
      public static var arcadeFlood:String = "Cascade";
      
      public static var ritual:String = "Rituel Impie";
      
      public static var highgravity:String = "Macrogravité";
      
      public static var lowgravity:String = "Apesanteur";
      
      public static var snow:String = "Blizzard";
      
      public static var earthquake:String = "Seisme";
      
      public static var blossom:String = "Printemps";
      
      public static var electrongun:Object = {
         "name":"Canon à Électrons",
         "desc":"Magie de Foudre qui paralyse une cible." + COOLDOWN_6
      };
      
      public static var sharpen:Object = {
         "name":"Extension",
         "desc":"Prolonge l\'effet des altérations de tous les ennemis. On peut également l\'utiliser sur tous les alliés, même en réserve, pour prolonger les bienfaits. Cela n\'affecte ni Célérité ni Défense." + COOLDOWN_6
      };
      
      public static var sand:Object = {
         "name":"Jet de Sable",
         "desc":"Attaque de Terre avancée qui touche un seul ennemi." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var sanddune:Object = {
         "name":"Dune de Sable",
         "desc":"Puissante attaque de Terre qui touche un seul ennemi." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var acid3:Object = {
         "name":"Acide",
         "desc":"Magie Bio avancée qui touche un seul ennemi." + equips.DEBUFF_MDEF
      };
      
      public static var acid2:Object = {
         "name":"Jet d\'Acide",
         "desc":"Puissante magie Bio qui touche tous les ennemis." + ALTERNATIVE_ONE + equips.DEBUFF_MDEF
      };
      
      public static var bubblering:Object = {
         "name":"Cercle de Bulles",
         "desc":"Attaque d\'Eau qui réduit une cible au silence. \n • La nature des dégâts est calculée en fonction de la stat la plus élevée."
      };
      
      public static var musicalblast:Object = {
         "name":"Bénédiction de Phyrnna",
         "desc":"Augmente l\'attaque magique de tous les alliés, même en réserve, et leur confère le statut Régénération. " + COOLDOWN_11
      };
      
      public static var geometry:Object = {
         "name":"Géométrie",
         "desc":"Puissante attaque non-élémentaire qui touche une seule cible. \n • La nature des dégâts est calculée en fonction de la stat la plus élevée." + HIGH_ACC + HIGH_CRITS + COOLDOWN_3
      };
      
      public static var fairy2:Object = {
         "name":"Fées Kamikazes",
         "desc":"Puissante magie Sacrée qui touche tous les ennemis. " + HIGH_ACC + COOLDOWN_2
      };
      
      public static var death:Object = {
         "name":"La Faucheuse",
         "desc":"Attaque de Ténèbres qui tue instantanément la cible. " + LOW_ACC + COOLDOWN_6
      };
      
      public static var retroswords:Object = {
         "name":"Lames Démoniaques",
         "desc":"Puissante attaque de Ténèbres qui touche tous les ennemis." + ALTERNATIVE_ONE + COOLDOWN_2
      };
      
      public static var artattack:Object = {
         "name":"Ballet de Papier",
         "desc":LIMIT_BREAK + "Soigne tous les alliés et retirent leurs altérations, et augmente leur HP, esquive et précision. \n • Inclut les alliés en réserve."
      };
      
      public static var sevenswords:Object = {
         "name":"Sept Lames",
         "desc":LIMIT_BREAK + "Inflige d\'immenses dégâts physiques sacrés à tous les ennemis" + HIGH_ACC
      };
      
      public function skills()
      {
         super();
      }
   }
}

