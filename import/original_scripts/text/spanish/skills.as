package text.spanish
{
   public class skills
   {
      public static var WEP_EFFECTS:String = "\n • El elemento y los efectos dependen del arma equipada.";
      
      public static var WEP_EFFECTS_2:String = "\n • Los efectos del arma son mayores de lo normal.";
      
      public static var LOW_ACC:String = "\n • Precisión baja.";
      
      public static var HIGH_ACC:String = "\n • Precisión alta.";
      
      public static var HIGH_ACC_2:String = "\n • Precisión muy alta.";
      
      public static var HIGH_CRITS:String = "\n • Alta probabilidad de golpes críticos.";
      
      public static var RETARGETS:String = "\n • Golpea a un nuevo enemigo si el objetivo muere.";
      
      public static var RETARGETS_2:String = "\n • Selecciona un nuevo objetivo si el actual muere.";
      
      public static var LIMIT_BREAK:String = "¡Límite! ";
      
      public static var ALTERNATIVE_ALL:String = " También puede dañar a todos los enemigos de manera equitativa. ";
      
      public static var ALTERNATIVE_ONE:String = " También puede concentrarse el daño en un solo objetivo.";
      
      public static var MAY_SURRENDER:String = " Puede hacer que los enemigos se rindan, incluso los más fuertes. ";
      
      public static var SWORD_DANCE:String = " Golpea a un objetivo tres veces, pasando a un nuevo enemigo si el objetivo muere.";
      
      public static var EXTRA_HITS:String = " Da un golpe extra por cada enemigo eliminado.";
      
      public static var DISPEL_ALL:String = " Disipa a todos los enemigos, lo que cancela sus aumentos y efectos positivos.";
      
      public static var HITS_RANDOM_FOES:String = " Lanza una flecha por cada enemigo, pero el objetivo de cada impacto se elige al azar.";
      
      public static var COOLDOWN_2:String = "\n • Tiene un turno de recarga. ";
      
      public static var COOLDOWN_3:String = "\n • Tiene 2 turnos de recarga. ";
      
      public static var COOLDOWN_4:String = "\n • Tiene 3 turnos de recarga. ";
      
      public static var COOLDOWN_6:String = "\n • Tiene 5 turnos de recarga. ";
      
      public static var COOLDOWN_11:String = "\n • Tiene 10 turnos de recarga. ";
      
      public static var defend:Object = {
         "name":"Defender",
         "desc":"Todo el daño recibido se reduce en un 50% durante un turno. Algunos objetos de equipamiento añaden efectos extra."
      };
      
      public static var swap:Object = {
         "name":"Cambiar Personaje",
         "desc":"Usa otro personaje primero. Esta acción no gasta el turno."
      };
      
      public static var flee:Object = {
         "name":"Huir",
         "desc":"Huye de la batalla. No hay penalizaciones por hacerlo."
      };
      
      public static var skip:Object = {
         "name":"Pasar el Turno",
         "desc":"Pasa el turno del personaje sin hacer nada."
      };
      
      public static var scan:Object = {
         "name":"Escanear Enemigos",
         "desc":"Escanea a todos los enemigos en el campo y revela sus debilidades. Los datos se guardan permanentemente en el bestiario."
      };
      
      public static var capture:Object = {
         "name":"Capturar Enemigo",
         "desc":"Intenta capturar a un enemigo. Es más fácil si está herido y tiene efectos de estado. Algunos no se pueden capturar."
      };
      
      public static var bring1:Object = {
         "name":"Cambiar por Matt",
         "desc":"Lleva al personaje a la reserva y entra Matt. Esta acción no gasta el turno."
      };
      
      public static var bring2:Object = {
         "name":"Cambiar por Natalie",
         "desc":"Lleva al personaje a la reserva y entra Natalie. Esta acción no gasta el turno."
      };
      
      public static var bring3:Object = {
         "name":"Cambiar por Lance",
         "desc":"Lleva al personaje a la reserva y entra Lance. Esta acción no gasta el turno."
      };
      
      public static var bring4:Object = {
         "name":"Cambiar por Anna",
         "desc":"Lleva al personaje a la reserva y entra Anna. Esta acción no gasta el turno."
      };
      
      public static var bring5:Object = {
         "name":"Cambiar por SinPatas",
         "desc":"Lleva al personaje a la reserva y entra SinPatas. Esta acción no gasta el turno."
      };
      
      public static var swordslash:Object = {
         "name":"Ataque Normal",
         "desc":"Golpea a un objetivo con un espadazo básico." + WEP_EFFECTS
      };
      
      public static var earthedge:Object = {
         "name":"Temblor",
         "desc":"Ataque básico de tipo Tierra que golpea a un solo objetivo."
      };
      
      public static var quakespikes:Object = {
         "name":"Sismo",
         "desc":"Ataque avanzado de tipo Tierra que golpea a un solo objetivo."
      };
      
      public static var cataclysmiccut:Object = {
         "name":"Cataclismo",
         "desc":"Ataque muy poderoso de tipo Tierra que golpea a un solo objetivo." + HIGH_CRITS
      };
      
      public static var geysergush:Object = {
         "name":"Géiser",
         "desc":"Ataque básico de tipo Agua que golpea a un solo objetivo." + equips.MAY_WET
      };
      
      public static var pouringpike:Object = {
         "name":"Torrente",
         "desc":"Ataque avanzado de tipo Agua que golpea a un solo objetivo." + equips.MAY_WET
      };
      
      public static var surgingskewer:Object = {
         "name":"Tifón",
         "desc":"Ataque muy poderoso de tipo Agua que golpea a un solo objetivo." + equips.MAY_WET + HIGH_CRITS
      };
      
      public static var frostfragment:Object = {
         "name":"Tundra",
         "desc":"Ataque avanzado de tipo Hielo que golpea a un solo objetivo." + equips.MAY_CHILL
      };
      
      public static var glacialglaive:Object = {
         "name":"Iceberg",
         "desc":"Ataque muy poderoso de tipo Hielo que golpea a un solo objetivo." + equips.MAY_CHILL
      };
      
      public static var firespire:Object = {
         "name":"Magma",
         "desc":"Ataque avanzado de tipo Fuego que golpea a un solo objetivo." + equips.MAY_DRY
      };
      
      public static var lavalance:Object = {
         "name":"Erupción",
         "desc":"Ataque poderoso de tipo Fuego que golpea a un solo objetivo." + equips.MAY_DRY
      };
      
      public static var nettleknife:Object = {
         "name":"Ortiga",
         "desc":"Ataque básico de tipo Bío que golpea a un solo objetivo." + equips.MAY_POISON
      };
      
      public static var shreddingshrub:Object = {
         "name":"Sobrecrecimiento",
         "desc":"Ataque poderoso de tipo Bío que golpea dos veces a un solo objetivo." + equips.MAY_POISON
      };
      
      public static var slicingcyclone:Object = {
         "name":"Ciclón Cortante",
         "desc":"Ataque poderoso que golpea a todos los enemigos varias veces." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var stealitem:Object = {
         "name":"Robar Objeto",
         "desc":"Roba un objeto al azar de un objetivo. Se pueden robar mejores objetos cuanto mayor es el nivel de esta habilidad." + LOW_ACC
      };
      
      public static var legend:Object = {
         "name":"Leyenda",
         "desc":"Ataque muy poderoso que golpea varias veces a un solo objetivo." + WEP_EFFECTS + COOLDOWN_3
      };
      
      public static var lightblade:Object = {
         "name":"Espada de Luz",
         "desc":"Ataque avanzado de tipo Sacro que golpea a un solo objetivo."
      };
      
      public static var holysword:Object = {
         "name":"Seiken",
         "desc":"Ataque poderoso de tipo Sacro que golpea a un solo objetivo." + equips.MAY_DISPEL
      };
      
      public static var unleash:Object = {
         "name":"Desatar",
         "desc":"Un ataque que libera el potencial latente del arma." + WEP_EFFECTS + WEP_EFFECTS_2
      };
      
      public static var quickslash:Object = {
         "name":"Corte Rápido",
         "desc":"Ataca con gran precisión a un solo objetivo." + WEP_EFFECTS
      };
      
      public static var temper:Object = {
         "name":"Templanza",
         "desc":"Aumenta el Ataque de un aliado y le proporciona el estado Valentía. " + COOLDOWN_2
      };
      
      public static var revenge:Object = {
         "name":"Venganza",
         "desc":"Un ataque potencialmente devastador que golpea a un solo objetivo. Su poder aumenta si a Matt le quedan pocos Puntos de Salud o si sus aliados están muertos. El poder mostrado es el máximo posible." + WEP_EFFECTS
      };
      
      public static var cleaver:Object = {
         "name":"Carnicería",
         "desc":LIMIT_BREAK + "Inflige un gran daño físico dando varios cortes a un solo objetivo." + WEP_EFFECTS + RETARGETS + HIGH_ACC + HIGH_CRITS
      };
      
      public static var ragnarok:Object = {
         "name":"Ragnarok",
         "desc":LIMIT_BREAK + "Inflige un enorme daño físico no elemental a todos los enemigos. También aumenta el poder de ataque de todos los aliados, incluyendo los que están en la reserva, y les proporciona el estado Valentía." + HIGH_ACC
      };
      
      public static var staffstrike:Object = {
         "name":"Ataque Normal",
         "desc":"Golpea a un objetivo con un ataque físico básico, lo cual libera el poder mágico del arma." + WEP_EFFECTS
      };
      
      public static var blessedbunny:Object = {
         "name":"Restauración",
         "desc":"Disipa las reducciones de atributos de un aliado, cura sus estados negativos y le proporciona el estado Bendición."
      };
      
      public static var luckystar:Object = {
         "name":"Estrella Afortunada",
         "desc":"Magia básica no elemental que inflige un daño muy aleatorio a un solo objetivo." + HIGH_CRITS
      };
      
      public static var starshower:Object = {
         "name":"Lluvia de Estrellas",
         "desc":"Magia poderosa no elemental que inflige un daño muy aleatorio a todos los enemigos." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var starpower:Object = {
         "name":"Poder Estelar",
         "desc":"Aumenta el Ataque Mágico de un aliado y le proporciona el estado Fortuna." + COOLDOWN_2
      };
      
      public static var intoxicate:Object = {
         "name":"Tóxico",
         "desc":"Magia simple de tipo Bío que envenena gravemente a un solo objetivo."
      };
      
      public static var fireball:Object = {
         "name":"Fuego",
         "desc":"Magia básica de tipo Fuego que golpea a un solo objetivo." + equips.MAY_BURN
      };
      
      public static var fireblast:Object = {
         "name":"Bola Ígnea",
         "desc":"Magia avanzada de tipo Fuego que golpea a un solo objetivo." + equips.MAY_BURN
      };
      
      public static var firestorm:Object = {
         "name":"Tormenta Ígnea",
         "desc":"Magia poderosa de tipo Fuego que golpea a todos los enemigos." + ALTERNATIVE_ONE + equips.MAY_BURN
      };
      
      public static var thunderbolt:Object = {
         "name":"Rayo",
         "desc":"Magia básica de tipo Rayo que golpea a un solo objetivo." + equips.MAY_STUN
      };
      
      public static var thundershock:Object = {
         "name":"Trueno",
         "desc":"Magia avanzada de tipo Rayo que golpea a un solo objetivo." + equips.MAY_STUN
      };
      
      public static var thunderstorm:Object = {
         "name":"Tormenta Eléctrica",
         "desc":"Magia poderosa de tipo Rayo que golpea a todos los enemigos." + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var iceshard:Object = {
         "name":"Hielo",
         "desc":"Magia básica de tipo Hielo que golpea a un solo objetivo." + equips.MAY_FREEZE
      };
      
      public static var iceshatter:Object = {
         "name":"Fragmento Gélido",
         "desc":"Magia avanzada de tipo Hielo que golpea a un solo objetivo." + equips.MAY_FREEZE
      };
      
      public static var icestorm:Object = {
         "name":"Tormenta Gélida",
         "desc":"Magia poderosa de tipo Hielo que golpea a todos los enemigos." + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var darkpulse:Object = {
         "name":"Esfera Oscura",
         "desc":"Magia avanzada de tipo Oscuridad que golpea a un solo objetivo." + equips.MAY_HEAVY
      };
      
      public static var darkpulsar:Object = {
         "name":"Púlsar",
         "desc":"Magia muy poderosa de tipo Oscuridad que golpea a todos los enemigos." + equips.MAY_HEAVY + COOLDOWN_3
      };
      
      public static var spectralflash:Object = {
         "name":"Espectro de Luz",
         "desc":"Magia avanzada que golpea a un solo objetivo." + WEP_EFFECTS
      };
      
      public static var rainbowblast:Object = {
         "name":"Onda Arcoíris",
         "desc":"Magia poderosa que golpea a todos los enemigos." + ALTERNATIVE_ONE + WEP_EFFECTS
      };
      
      public static var holylight:Object = {
         "name":"Luz Sagrada",
         "desc":"Magia avanzada de tipo Sacro que golpea a un solo objetivo." + equips.MAY_WEAKEN
      };
      
      public static var divinejudgement:Object = {
         "name":"Sentencia",
         "desc":"Magia muy poderosa de tipo Sacro que golpea a un solo objetivo y drena sus Puntos de Salud." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var syphon:Object = {
         "name":"Mutis",
         "desc":"Enmudece a un enemigo, lo que le impide usar la mayoría de los ataques mágicos." + COOLDOWN_3
      };
      
      public static var syphon2:Object = {
         "name":"Silencio",
         "desc":"Enmudece a todos los enemigos, lo que les impide usar la mayoría de los ataques mágicos. También puede usarse contra un solo objetivo y causar un mayor efecto." + COOLDOWN_3
      };
      
      public static var genesis:Object = {
         "name":"Génesis",
         "desc":LIMIT_BREAK + "Inflige un enorme daño de tipo Sacro a todos los enemigos. También resucita a los aliados o les proporciona el estado Resurrección. \n • También funciona con los aliados en la reserva." + HIGH_ACC
      };
      
      public static var kyun:Object = {
         "name":"Séptimo Cielo",
         "desc":LIMIT_BREAK + "Cura los Puntos de Salud y los estados negativos de los aliados, además de aumentarles el Ataque, el Ataque Mágico, la Defensa y la Defensa Mágica. \n • También funciona con los aliados en la reserva. \n • Proporciona a Natalie el estado Ternura."
      };
      
      public static var pistolwhip:Object = {
         "name":"Ataque Normal",
         "desc":"Ataque básico cuerpo a cuerpo que golpea dos veces a un solo objetivo." + WEP_EFFECTS
      };
      
      public static var snipe:Object = {
         "name":"Disparo Certero",
         "desc":"Dispara con gran precisión a un solo objetivo." + WEP_EFFECTS + HIGH_CRITS + COOLDOWN_2
      };
      
      public static var doubleshot:Object = {
         "name":"Doble Disparo",
         "desc":"Dispara dos veces a un solo objetivo." + WEP_EFFECTS + WEP_EFFECTS_2 + RETARGETS
      };
      
      public static var unload:Object = {
         "name":"Tiroteo",
         "desc":"Dispara a un objetivo seis veces. Ataque muy poderoso." + WEP_EFFECTS + RETARGETS + HIGH_CRITS + COOLDOWN_6
      };
      
      public static var flameshot:Object = {
         "name":"Disparo Ígneo",
         "desc":"Disparo básico de tipo Fuego contra un solo objetivo." + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var flameburst:Object = {
         "name":"Ráfaga Incendiaria",
         "desc":"Disparo avanzado de tipo Fuego contra todos los enemigos." + ALTERNATIVE_ONE + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var bullethell:Object = {
         "name":"Lluvia de Balas",
         "desc":"Disparo poderoso de tipo Fuego concentrado en un enemigo. Los demás reciben un tercio del daño." + ALTERNATIVE_ALL + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var plasmashot:Object = {
         "name":"Disparo de Plasma",
         "desc":"Disparo básico de tipo Rayo contra un solo objetivo." + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmawave:Object = {
         "name":"Onda de Plasma",
         "desc":"Disparo avanzado de tipo Rayo contra todos los enemigos." + ALTERNATIVE_ONE + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmafield:Object = {
         "name":"Campo de Plasma",
         "desc":"Disparo poderoso de tipo Rayo concentrado en un enemigo. Los demás reciben un tercio del daño." + ALTERNATIVE_ALL + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var darkshot:Object = {
         "name":"Disparo Oscuro",
         "desc":"Disparo básico de tipo Oscuridad contra un solo objetivo." + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var gravitysurge:Object = {
         "name":"Onda Gravitatoria",
         "desc":"Disparo avanzado de tipo Oscuridad contra todos los enemigos." + ALTERNATIVE_ONE + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var antimatterflux:Object = {
         "name":"Flujo de Antimateria",
         "desc":"Disparo poderoso de tipo Oscuridad concentrado en un enemigo. Los demás reciben un tercio del daño." + ALTERNATIVE_ALL + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var poisongas:Object = {
         "name":"Gas Venenoso",
         "desc":"Envenena gravemente a todos los enemigos e inflige algo de daño mágico de tipo Bío." + COOLDOWN_4
      };
      
      public static var airstrike1:Object = {
         "name":"Bomba",
         "desc":"Bombardea a un solo enemigo con un gran daño mágico de tipo Explosivo." + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike2:Object = {
         "name":"Ataque Aéreo",
         "desc":"Bombardea a todos los enemigos con un gran daño mágico de tipo Explosivo." + ALTERNATIVE_ONE + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike3:Object = {
         "name":"MOAB",
         "desc":"Bombardea a todos los enemigos con un enorme daño mágico de tipo Explosivo. Tarda mucho en recargarse." + equips.MAY_STAGGER + COOLDOWN_11
      };
      
      public static var medipack1:Object = {
         "name":"Botiquín",
         "desc":"Cura a un aliado y le elimina los estados negativos que tenga." + COOLDOWN_4
      };
      
      public static var medipack2:Object = {
         "name":"Suministros Médicos",
         "desc":"Cura a todos los aliados y les elimina los estados negativos que tengan." + COOLDOWN_4
      };
      
      public static var tankguns:Object = {
         "name":"Ametralladoras",
         "desc":"Dispara a todos los enemigos varias veces e inflige daño de tipo Explosivo." + COOLDOWN_2
      };
      
      public static var armorcrush:Object = {
         "name":"Rompecoraza",
         "desc":"Machaca a un objetivo con un ataque cuerpo a cuerpo, además de disiparlo." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var hyperbeam:Object = {
         "name":"Hiperrayo",
         "desc":"Requiere dos turnos: se carga durante el primero y se dispara durante el segundo. Inflige un enorme daño mágico a todos los enemigos." + WEP_EFFECTS
      };
      
      public static var nuke:Object = {
         "name":"Bomba Nuclear",
         "desc":LIMIT_BREAK + "Inflige un enorme daño de tipo Fuego a todos los enemigos. Quema a todos los combatientes." + HIGH_ACC + "\n • Sustituye el clima actual por Radiación durante cinco turnos. "
      };
      
      public static var oblivion:Object = {
         "name":"Extinción",
         "desc":LIMIT_BREAK + "Inflige un enorme daño físico de tipo Explosivo a todos los enemigos. El tanque de Lance queda hecho añicos, pero tiene más." + HIGH_ACC
      };
      
      public static var arrowslash:Object = {
         "name":"Ataque Normal",
         "desc":"Ataque básico cuerpo a cuerpo que corta a un objetivo." + WEP_EFFECTS
      };
      
      public static var bowwhack:Object = {
         "name":"Golpe con Arco",
         "desc":"Golpea con el arco a un enemigo, lo que puede provocar su rendición. Ni siquiera los enemigos más fuertes son inmunes." + WEP_EFFECTS + "\n • Esta habilidad no puede matar a los enemigos."
      };
      
      public static var gust:Object = {
         "name":"Ráfaga",
         "desc":"Magia básica de tipo Viento que golpea a un solo objetivo." + equips.MAY_LIGHT
      };
      
      public static var whirlwind:Object = {
         "name":"Torbellino",
         "desc":"Magia avanzada de tipo Viento que golpea a un solo objetivo." + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var hurricane:Object = {
         "name":"Huracán",
         "desc":"Magia poderosa de tipo Viento que golpea a todos los enemigos." + ALTERNATIVE_ONE + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var logjab:Object = {
         "name":"Leño",
         "desc":"Ataque básico de tipo Tierra que golpea a un solo objetivo." + equips.MAY_STAGGER
      };
      
      public static var lumbertrap:Object = {
         "name":"Troncos",
         "desc":"Ataque poderoso de tipo Tierra que golpea varias veces a un solo objetivo." + equips.MAY_STAGGER
      };
      
      public static var leafblade:Object = {
         "name":"Hoja Afilada",
         "desc":"Ataque simple de tipo Bío que golpea dos veces a un solo objetivo." + HIGH_CRITS
      };
      
      public static var razorleaf:Object = {
         "name":"Hoja Navaja",
         "desc":"Ataque poderoso de tipo Bío que golpea varias veces a todos los enemigos." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var soularrow:Object = {
         "name":"Flecha Bendita",
         "desc":"Ataque avanzado de tipo Sacro que golpea a un solo objetivo." + equips.MAY_WEAKEN
      };
      
      public static var frostarrow:Object = {
         "name":"Flecha Helada",
         "desc":"Ataque avanzado de tipo Hielo que golpea a un solo objetivo." + equips.MAY_FREEZE
      };
      
      public static var aquaarrow:Object = {
         "name":"Flecha Hídrica",
         "desc":"Ataque avanzado de tipo Agua que golpea a un solo objetivo." + equips.MAY_WET
      };
      
      public static var nitroarrow:Object = {
         "name":"Flecha Explosiva",
         "desc":"Ataque avanzado de tipo Explosivo que golpea a un solo objetivo." + equips.MAY_DISPEL
      };
      
      public static var sparkarrow:Object = {
         "name":"Flecha Chispeante",
         "desc":"Ataque avanzado de tipo Rayo que golpea a un solo objetivo." + equips.MAY_STUN
      };
      
      public static var soularrow2:Object = {
         "name":"Aluvión Bendito",
         "desc":"Ataque poderoso de tipo Sacro." + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WEAKEN
      };
      
      public static var frostarrow2:Object = {
         "name":"Aluvión Helado",
         "desc":"Ataque poderoso de tipo Hielo." + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var aquaarrow2:Object = {
         "name":"Aluvión Hídrico",
         "desc":"Ataque poderoso de tipo Agua." + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WET
      };
      
      public static var nitroarrow2:Object = {
         "name":"Aluvión Explosivo",
         "desc":"Ataque poderoso de tipo Explosivo." + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_DISPEL
      };
      
      public static var sparkarrow2:Object = {
         "name":"Aluvión Chispeante",
         "desc":"Ataque poderoso de tipo Rayo." + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var piercingshot:Object = {
         "name":"Flecha Penetrante",
         "desc":"Dispara una flecha con gran precisión." + equips.IGNORES_BUFFS + HIGH_CRITS + WEP_EFFECTS
      };
      
      public static var comboshot:Object = {
         "name":"Disparo Triple",
         "desc":"Ataque poderoso y preciso con múltiples flechas." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var arrowrain:Object = {
         "name":"Lluvia de Flechas",
         "desc":"Ataca con un aluvión de flechas que golpean varias veces a todos los enemigos." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var renew:Object = {
         "name":"Remedio",
         "desc":"Magia simple sanadora que hace efecto sobre un aliado."
      };
      
      public static var remedy:Object = {
         "name":"Revitalización",
         "desc":"Magia avanzada sanadora que hace efecto sobre un aliado y le proporciona el estado Bendición."
      };
      
      public static var motherearth:Object = {
         "name":"Madre Tierra",
         "desc":LIMIT_BREAK + "Inflige un enorme daño mágico de tipo Bío a todos los enemigos y los envenena. \n • Bendice a todos los aliados, incluyendo los que están en la reserva." + HIGH_ACC + "\n • Despeja el clima durante cinco turnos."
      };
      
      public static var mightyoak:Object = {
         "name":"Gran Roble",
         "desc":LIMIT_BREAK + "Inflige un enorme daño físico de tipo Tierra a todos los enemigos golpeándolos varias veces." + HIGH_ACC
      };
      
      public static var backstab:Object = {
         "name":"Ataque Normal",
         "desc":"Sorprende a un enemigo apuñalándolo por detrás." + WEP_EFFECTS
      };
      
      public static var multistab:Object = {
         "name":"Esgrima",
         "desc":"Ataque básico con el que da cuatro cortes a un solo objetivo." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var bladeblitz:Object = {
         "name":"Cortes Relámpago",
         "desc":"Ataque poderoso con el que da once cortes frenéticos a un solo objetivo." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var swiftslash:Object = {
         "name":"Corte Veloz",
         "desc":"Un ataque muy rápido con el que da un corte a todos los enemigos." + WEP_EFFECTS + HIGH_ACC + COOLDOWN_2
      };
      
      public static var ninelives:Object = {
         "name":"Nueve-citos",
         "desc":"Cura a todos los aliados, les proporciona el estado Resurrección y revive a los que hayan caído. Tarda mucho en recargarse." + COOLDOWN_11
      };
      
      public static var starblast:Object = {
         "name":"Impacto Estelar",
         "desc":"Inflige daño mágico no elemental a todos los enemigos. Tarda mucho en recargarse." + equips.MAY_DISPEL + HIGH_ACC + COOLDOWN_11
      };
      
      public static var sworddance:Object = {
         "name":"Corte en Salto",
         "desc":"Ataque básico cuerpo a cuerpo:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance2:Object = {
         "name":"Danza Cortante",
         "desc":"Ataque avanzado cuerpo a cuerpo:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance3:Object = {
         "name":"Corte Final",
         "desc":"Ataque poderoso cuerpo a cuerpo:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var darkslash:Object = {
         "name":"Cuchillada Tenebrosa",
         "desc":"Ataque avanzado de tipo Oscuridad:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var darkslash2:Object = {
         "name":"Tango Tétrico",
         "desc":"Ataque poderoso de tipo Oscuridad:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var holyslash:Object = {
         "name":"Cuchillada Sagrada",
         "desc":"Ataque avanzado de tipo Sacro:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var holyslash2:Object = {
         "name":"Danza Divina",
         "desc":"Ataque poderoso de tipo Sacro:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var lightningslash:Object = {
         "name":"Cuchillada Chispeante",
         "desc":"Ataque avanzado de tipo Rayo:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var lightningslash2:Object = {
         "name":"Ritmo Relámpago",
         "desc":"Ataque poderoso de tipo Rayo:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var windslash:Object = {
         "name":"Cuchillada Huracanada",
         "desc":"Ataque avanzado de tipo Viento:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var windslash2:Object = {
         "name":"Vals Vendaval",
         "desc":"Ataque poderoso de tipo Viento:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var waterslash:Object = {
         "name":"Cuchillada Hídrica",
         "desc":"Ataque avanzado de tipo Agua:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var waterslash2:Object = {
         "name":"Mambo Marino",
         "desc":"Ataque poderoso de tipo Agua:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var sushicat:Object = {
         "name":"Gato del Sushi",
         "desc":"Rebota por todas partes, inflige daño mágico a tres enemigos al azar y cura a los dos aliados que más lo necesiten." + COOLDOWN_3
      };
      
      public static var sushicat2:Object = {
         "name":"¡Gato del Sushi!",
         "desc":"Rebota por todas partes, inflige daño mágico a tres enemigos al azar y cura a los dos aliados que más lo necesiten. \n • Proporciona a los aliados el estado Fortuna." + COOLDOWN_3
      };
      
      public static var berserk:Object = {
         "name":"Furia",
         "desc":"Proporciona a un combatiente el estado Furia, lo que provoca que ataque constantemente con un poder mayor. " + COOLDOWN_2
      };
      
      public static var berserk2:Object = {
         "name":"Rabia Descontrolada",
         "desc":"Proporciona a todos los aliados el estado Furia. También puede concentrarse en un único combatiente y causar un efecto mayor. " + COOLDOWN_3
      };
      
      public static var cherish:Object = {
         "name":"Aprecio",
         "desc":"Proporciona al objetivo el estado Ternura, lo que impide que sea objetivo de la mayoría de los ataques de objetivo único." + COOLDOWN_3
      };
      
      public static var cherish2:Object = {
         "name":"Aura Adorable",
         "desc":"Proporciona a todos los aliados el estado Ternura. También puede concentrarse en un único aliado y causar un efecto mayor. " + COOLDOWN_4
      };
      
      public static var thecreator:Object = {
         "name":"El Creador",
         "desc":LIMIT_BREAK + "Inflige un enorme daño mágico de tipo Sacro a todos los enemigos. \n • Proporciona a todos los aliados el estado Fortuna, incluyendo los que están en la reserva." + HIGH_ACC + "\n • Despeja el clima durante cinco turnos."
      };
      
      public static var thedestroyer:Object = {
         "name":"El Destructor",
         "desc":LIMIT_BREAK + "Inflige un enorme daño físico de tipo Oscuridad a todos los enemigos golpeándolos varias veces." + DISPEL_ALL + HIGH_ACC
      };
      
      public static var snowbunny:Object = {
         "name":"Conejos de Nieve",
         "desc":"Magia de tipo Hielo que golpea a todos los enemigos." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var snowcat:Object = {
         "name":"Gatos de Nieve",
         "desc":"Magia poderosa de tipo Hielo que golpea a todos los enemigos. Prepara combos de Congelación." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var ivy:Object = {
         "name":"Hiedra",
         "desc":"Ataque de tipo Bío que golpea a un solo objetivo." + equips.MAY_POISON
      };
      
      public static var vines:Object = {
         "name":"Lianas",
         "desc":"Ataque poderoso de tipo Bío que golpea varias veces a un solo objetivo." + equips.MAY_POISON + equips.DEBUFF_EVA
      };
      
      public static var energy:Object = {
         "name":"Energía",
         "desc":"Magia básica de tipo Explosivo que golpea a un solo objetivo." + HIGH_CRITS
      };
      
      public static var energy2:Object = {
         "name":"Bomba de Energía",
         "desc":"Magia avanzada de tipo Explosivo que golpea a un solo objetivo." + HIGH_CRITS
      };
      
      public static var energy3:Object = {
         "name":"Explosión de Energía",
         "desc":"Magia poderosa de tipo Explosivo que golpea a todos los enemigos." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var bubbles:Object = {
         "name":"Burbuja",
         "desc":"Magia básica de tipo Agua que golpea a un solo objetivo." + equips.MAY_WET
      };
      
      public static var whirlpool:Object = {
         "name":"Torbellino de Agua",
         "desc":"Magia avanzada de tipo Agua que golpea a un solo objetivo." + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var vortex:Object = {
         "name":"Vórtice Burbuja",
         "desc":"Magia poderosa de tipo Agua que golpea a todos los enemigos." + ALTERNATIVE_ONE + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var laserblade:Object = {
         "name":"Descarga",
         "desc":"Ataque avanzado de tipo Rayo que golpea a un solo objetivo." + equips.MAY_STAGGER
      };
      
      public static var lasersword:Object = {
         "name":"Sobrecarga",
         "desc":"Ataque poderoso de tipo Rayo que golpea a un solo objetivo." + equips.MAY_STAGGER
      };
      
      public static var bulletbob:Object = {
         "name":"Bullet Bob",
         "desc":"Ataque avanzado de tipo Explosivo que golpea a un solo objetivo." + HIGH_CRITS
      };
      
      public static var bigbullet:Object = {
         "name":"Bala Gigante",
         "desc":"Ataque poderoso de tipo Explosivo que golpea a un solo objetivo." + HIGH_CRITS
      };
      
      public static var gale:Object = {
         "name":"Ráfaga",
         "desc":"Ataque avanzado de tipo Viento que golpea a un solo objetivo." + equips.MAY_LIGHT
      };
      
      public static var tempest:Object = {
         "name":"Tempestad",
         "desc":"Ataque poderoso de tipo Viento que golpea a un solo objetivo." + equips.MAY_LIGHT
      };
      
      public static var powermetal:Object = {
         "name":"Power Metal",
         "desc":"Inflige daño mágico de tipo Viento a todos los enemigos y cura a todos los aliados." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var air:Object = {
         "name":"Vendaval",
         "desc":"Magia básica de tipo Viento que golpea a un solo objetivo." + equips.MAY_STAGGER
      };
      
      public static var air2:Object = {
         "name":"Onda Aérea",
         "desc":"Magia avanzada de tipo Viento que golpea a un solo objetivo." + equips.MAY_STAGGER
      };
      
      public static var air3:Object = {
         "name":"Onda de Choque",
         "desc":"Magia poderosa de tipo Viento que golpea a todos los enemigos." + ALTERNATIVE_ONE + equips.MAY_STAGGER
      };
      
      public static var sawblade:Object = {
         "name":"Sierra",
         "desc":"Ataque avanzado no elemental que golpea a un solo objetivo." + equips.IGNORES_BUFFS + equips.MAY_DEATH
      };
      
      public static var sawblades:Object = {
         "name":"Picadora",
         "desc":"Ataque poderoso no elemental que afecta a todos los enemigos." + equips.IGNORES_BUFFS + equips.MAY_DEATH + COOLDOWN_2
      };
      
      public static var gaia:Object = {
         "name":"Semilla de Gaia",
         "desc":"Magia básica de tipo Tierra que golpea a un solo objetivo." + equips.MAY_TIRE
      };
      
      public static var gaia2:Object = {
         "name":"Capullo de Gaia",
         "desc":"Magia avanzada de tipo Tierra que golpea a un solo objetivo." + equips.MAY_TIRE
      };
      
      public static var gaia3:Object = {
         "name":"Flor de Gaia",
         "desc":"Magia poderosa de tipo Tierra que afecta a todos los enemigos." + ALTERNATIVE_ONE + equips.MAY_TIRE
      };
      
      public static var firespin:Object = {
         "name":"Giro Fuego",
         "desc":"Magia poderosa de tipo Fuego que afecta a todos los enemigos." + equips.MAY_BURN + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var purgingflame:Object = {
         "name":"Fuego Sagrado",
         "desc":"Magia de tipo Sacro que disipa a un solo enemigo y disminuye su Ataque Mágico." + HIGH_ACC
      };
      
      public static var screamer:Object = {
         "name":"Alarido",
         "desc":"Inflige daño mágico de tipo Oscuridad a todos los enemigos y disminuye su Ataque." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var heal:Object = {
         "name":"Sanar",
         "desc":"Magia simple sanadora que cura a un solo aliado." + COOLDOWN_2
      };
      
      public static var healmore:Object = {
         "name":"Sanar Más",
         "desc":"Magia poderosa sanadora que cura a todos los aliados. También puede concentrarse en un solo aliado para que la curación sea mayor." + COOLDOWN_2
      };
      
      public static var revive:Object = {
         "name":"Revivir",
         "desc":"Revive a un aliado muerto o proporciona el estado Resurrección a uno que esté con vida. "
      };
      
      public static var purify:Object = {
         "name":"Purificar",
         "desc":"Cura los problemas de estado comunes a todos los aliados o a todos los enemigos. No incluye estados neutros como Humedad o Sequedad." + COOLDOWN_3
      };
      
      public static var lockon:Object = {
         "name":"Apuntar",
         "desc":"Aumenta la Precisión de un aliado y le proporciona el estado Fortuna." + COOLDOWN_2
      };
      
      public static var protect:Object = {
         "name":"Protección",
         "desc":"Aumenta la Defensa de todos los aliados, incluyendo los que están en la reserva." + COOLDOWN_6
      };
      
      public static var barrier:Object = {
         "name":"Barrera",
         "desc":"Aumenta la Defensa Mágica de todos los aliados, incluyendo los que están en la reserva." + COOLDOWN_6
      };
      
      public static var reflex:Object = {
         "name":"Reflejos",
         "desc":"Aumenta la Evasión de todos los aliados, incluyendo los que están en la reserva." + COOLDOWN_6
      };
      
      public static var guardian:Object = {
         "name":"Escudo Celestial",
         "desc":"Aumenta la Defensa y la Defensa Mágica de un aliado." + COOLDOWN_2
      };
      
      public static var dispel:Object = {
         "name":"Disipar",
         "desc":"Disipa a todos los enemigos, lo que cancela sus aumentos y sus efectos de estado positivos. También se puede usar en los aliados para cancelar sus reducciones de atributos." + COOLDOWN_6
      };
      
      public static var flare:Object = {
         "name":"Destello",
         "desc":"Reduce la Precisión de todos los enemigos." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var bind:Object = {
         "name":"Red",
         "desc":"Reduce la Evasión de todos los enemigos." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var debilitate:Object = {
         "name":"Debilitar",
         "desc":"Reduce la Defensa de todos los enemigos." + COOLDOWN_6
      };
      
      public static var enfeeble:Object = {
         "name":"Enflaquecer",
         "desc":"Reduce la Defensa Mágica de todos los enemigos." + COOLDOWN_6
      };
      
      public static var teradrill:Object = {
         "name":"Gigataladro",
         "desc":"Ataque poderoso de tipo Tierra que golpea a un solo objetivo. Inflige mucho más daño si el objetivo tiene aumentos de Defensa o de Defensa Mágica, o si se está defendiendo." + COOLDOWN_3
      };
      
      public static var encore:Object = {
         "name":"Bis",
         "desc":"Otorga un turno extra a un aliado. No sirve de nada usar esto sobre el propio personaje que lo ejecuta." + COOLDOWN_3
      };
      
      public static var firecrackers:Object = {
         "name":"Petardos",
         "desc":"Inflige el estado Desdicha a los enemigos y proporciona el estado Fortuna a los aliados, incluyendo los que están en la reserva." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var abzero:Object = {
         "name":"Cero Absoluto",
         "desc":LIMIT_BREAK + "Inflige un gran daño mágico de tipo Hielo a todos los enemigos, reduce su Evasión y los congela. \n • Elimina los tiempos de recarga activos de todos los aliados." + HIGH_ACC
      };
      
      public static var tsunami:Object = {
         "name":"Tsunami",
         "desc":LIMIT_BREAK + "Inflige un enorme daño físico o mágico de tipo Agua a todos los enemigos y los empapa. \n • El daño se calcula tomando en cuenta el atributo con mayor valor de los dos." + equips.MAY_DEATH + HIGH_ACC_2
      };
      
      public static var supernova:Object = {
         "name":"Supernova",
         "desc":LIMIT_BREAK + "Inflige un enorme daño mágico de tipo Fuego a todos los combatientes, además de quemarlos. \n • No se puede esquivar."
      };
      
      public static var deathmetal:Object = {
         "name":"Death Metal",
         "desc":LIMIT_BREAK + "Inflige un enorme daño mágico de tipo Viento a todos los enemigos. Cura a todos los aliados, incluyendo los que están en la reserva, y les proporciona el estado Moral." + HIGH_ACC
      };
      
      public static var annihilate:Object = {
         "name":"Aniquilación",
         "desc":LIMIT_BREAK + "Ataque con una probabilidad alta de matar instantáneamente a todos los enemigos. No sirve contra los jefes y tiene poca precisión."
      };
      
      public static var ion:Object = {
         "name":"Cañón de Iones",
         "desc":LIMIT_BREAK + "Inflige un enorme daño mágico de tipo Rayo a todos los enemigos y puede paralizarlos. \n • También carga el Hiperrayo de Lance." + HIGH_ACC_2
      };
      
      public static var blackhole:Object = {
         "name":"Agujero Negro",
         "desc":LIMIT_BREAK + "Inflige un enorme daño mágico de tipo Oscuridad a todos los enemigos, además de proporcionarles el estado Pesadez. El personaje muere." + HIGH_ACC
      };
      
      public static var rapture:Object = {
         "name":"Poder Oculto",
         "desc":LIMIT_BREAK + "Inflige un enorme daño físico o mágico a todos los enemigos. \n • El daño se calcula tomando en cuenta el atributo con mayor valor de los dos." + WEP_EFFECTS + HIGH_ACC
      };
      
      public static var bones:String = "Huesos";
      
      public static var bonestar:String = "Estrella Ósea";
      
      public static var groundblade:String = "Hoja Viviente";
      
      public static var fallingstar:String = "Estrella Fugaz";
      
      public static var firerock:String = "Roca Ígnea";
      
      public static var stalactite:String = "Estalactita";
      
      public static var stalactite2:String = "Estalactitas";
      
      public static var fume:String = "Vapor Ardiente";
      
      public static var eruption:String = "Erupción";
      
      public static var scald:String = "Vapor Abrasador";
      
      public static var rain:String = "Lluvia";
      
      public static var sandstorm:String = "Tormenta de Arena";
      
      public static var hail:String = "Granizo";
      
      public static var nitro:String = "Nitrollama";
      
      public static var acid:String = "Ácido Abrasador";
      
      public static var bamboo:String = "Bambú";
      
      public static var bamboo2:String = "Trampa de Bambú";
      
      public static var bluebolt:String = "Relámpago Azul";
      
      public static var deepfreeze:String = "Glaciación";
      
      public static var wafer:String = "Barquillo";
      
      public static var present:String = "Regalo Sorpresa";
      
      public static var plasmacage:String = "Jaula de Plasma";
      
      public static var tankcannon:String = "Cañonazo";
      
      public static var candycanes:String = "Bastones de Caramelo";
      
      public static var bonefish:String = "Raspas";
      
      public static var riceball:String = "Bomba de Arroz";
      
      public static var mushroom:String = "Hongo";
      
      public static var lifedrain:String = "Drenaje";
      
      public static var smokepuff:String = "Cortina de Humo";
      
      public static var confusion:String = "Confusión";
      
      public static var ink:String = "Chorro de Tinta";
      
      public static var chocolate:String = "Masa de Chocolate";
      
      public static var tentacles:String = "Tentáculos";
      
      public static var slowdown:String = "Ralentización";
      
      public static var speedup:String = "Aceleración";
      
      public static var poisonroot:String = "Raíz Envenenada";
      
      public static var burningroot:String = "Raíz Ardiente";
      
      public static var searoot:String = "Raíz Marina";
      
      public static var bombblast:String = "Onda Explosiva";
      
      public static var bigblast:String = "Gran Detonación";
      
      public static var cactus:String = "Cactus";
      
      public static var cacti:String = "Multicactus";
      
      public static var spark:String = "Chispa";
      
      public static var bigspark:String = "Gran Chispa";
      
      public static var talisman:String = "Talismán";
      
      public static var ember:String = "Ascuas";
      
      public static var fireblast2:String = "Ráfaga de Llamas";
      
      public static var firecrystals:String = "Cristales de Fuego";
      
      public static var zephyrcrystals:String = "Cristales de Céfiro";
      
      public static var frost:String = "Escarcha Súbita";
      
      public static var rockslide:String = "Alud";
      
      public static var avalanche:String = "Avalancha";
      
      public static var blackspikes:String = "Espinas Negras";
      
      public static var stonefist:String = "Puño Pétreo";
      
      public static var spiderweb:String = "Telaraña";
      
      public static var spiders:String = "Plaga de Arañas";
      
      public static var geometry2:String = "Distorsión Espacial";
      
      public static var geometry3:String = "Campo de Distorsión";
      
      public static var sacrifice:String = "Sacrificio";
      
      public static var bigroot:String = "Gran Raíz";
      
      public static var seabomb:String = "Mina Marina";
      
      public static var fairy:String = "Hada Explosiva";
      
      public static var fly:String = "Mosca Explosiva";
      
      public static var starpunch:String = "Ráfaga Estelar";
      
      public static var darken:String = "Invisibilidad";
      
      public static var lighten:String = "Encantamiento";
      
      public static var SlimeChocolate:String = "Escupe a un solo objetivo, le inflige daño físico de tipo Tierra y le reduce la Precisión.";
      
      public static var SlimeIcecream:String = "Usa una magia básica de tipo Hielo que deja resfriado a un solo objetivo.";
      
      public static var SlimeSand:String = "Usa un ataque básico de tipo Bío que puede paralizar a un solo objetivo.";
      
      public static var SlimeLava:String = "Usa un ataque básico de tipo Fuego que seca a un solo objetivo.";
      
      public static var SlimeMouse:String = "Usa un ataque débil de tipo Rayo que siempre paraliza a un solo objetivo.";
      
      public static var SlimeWater:String = "Usa un patético ataque de tipo Agua sobre un solo objetivo.";
      
      public static var SlimeMud:String = "Usa un ataque básico de tipo Bío sobre un solo objetivo.";
      
      public static var SlimeBunny:String = "Proporciona el estado Regeneración a todos los aliados, incluyendo los que están en reserva, lo cual los cura durante varios turnos.";
      
      public static var SpriteFire:String = "Sustituye el clima actual por Ceniza Candente durante cinco turnos.";
      
      public static var SpriteIce:String = "Sustituye el clima actual por Ventisca durante cinco turnos.";
      
      public static var SpriteThunder:String = "Sustituye el clima actual por Electricidad Estática durante cinco turnos.";
      
      public static var SpriteRock:String = "Sustituye el clima actual por Terremoto durante cinco turnos.";
      
      public static var SpriteWind:String = "Sustituye el clima actual por Tempestad durante cinco turnos.";
      
      public static var ChomperLeafy:String = "Sustituye el clima actual por Brisa durante cinco turnos.";
      
      public static var ChomperSeaweed:String = "Sustituye el clima actual por Lluvia durante cinco turnos.";
      
      public static var ChomperMagma:String = "Sustituye el clima actual por Soleado durante cinco turnos.";
      
      public static var ChomperMutant:String = "Sustituye el clima actual por Lluvia Ácida durante cinco turnos.";
      
      public static var CreepThorny:String = "Pica usando un ataque avanzado de tipo Tierra, que puede paralizar al objetivo.";
      
      public static var CreepIcicle:String = "Pica usando un ataque avanzado de tipo Hielo, que puede dejar resfriado al objetivo.";
      
      public static var CreepHermit:String = "Corta a un solo objetivo usando un ataque avanzado no elemental.";
      
      public static var CreepGreen:String = "Rebota tres veces sobre un objetivo usando poderosos ataques no elementales." + RETARGETS_2;
      
      public static var CreepRed:String = "Impacta usando un poderoso ataque de tipo Viento sobre un objetivo, al cual hace tambalearse.";
      
      public static var CreepBlue:String = "Estalla provocando una poderosa explosión que paraliza al objetivo.";
      
      public static var Defender1:String = "Destroza a todos los enemigos usando un poderoso ataque de tipo Rayo, el cual puede hacer que se tambaleen.";
      
      public static var Defender2:String = "Lanza un poderoso ataque de tipo Agua a un solo objetivo, el cual puede quedar empapado. ";
      
      public static var DogFriend:String = "Otorga el estado Ternura a todos los aliados, lo cual hace que los enemigos duden al atacarlos directamente.";
      
      public static var DogMaxi:String = DogFriend;
      
      public static var DogTanuki:String = "Se abalanza sobre un objetivo usando un ataque de tipo Fuego, el cual lo quema.";
      
      public static var DogWolf:String = "Se abalanza sobre un objetivo usando un ataque de tipo Hielo, el cual lo congela.";
      
      public static var DogZap:String = "Se abalanza sobre todos los enemigos con un ensordecedor ataque de tipo Rayo, lo cual puede hacer que se tambaleen.";
      
      public static var DogMage:String = "Golpea a todos los enemigos usando una magia de tipo Oscuridad, la cual los maldice.";
      
      public static var ChibiKnightUltra:String = "Aumenta el Ataque de todos los aliados, incluyendo los que están en la reserva, y luego ataca a un enemigo varias veces." + RETARGETS_2;
      
      public static var BushGreen:String = "Grita a los enemigos y les reduce ligeramente el Ataque.";
      
      public static var BushRed:String = "Grita a los enemigos y les reduce ligeramente la Defensa.";
      
      public static var BushDark:String = "Sisea agresivamente a los enemigos y les reduce ligeramente la Evasión.";
      
      public static var BushMud:String = "Grita a los enemigos y les reduce ligeramente el Ataque Mágico.";
      
      public static var BushSand:String = "Sisea agresivamente a los enemigos y les reduce ligeramente la Defensa Mágica.";
      
      public static var GolemTopaz:String = "Machaca repetidas veces a un objetivo usando poderosos ataques de tipo Rayo, lo cual puede paralizarlos.";
      
      public static var GolemPearl:String = "Hiela a todos los enemigos con una poderosa magia de Hielo y sustituye el clima actual por Granizo durante cinco turnos.";
      
      public static var GolemAmethyst:String = "Machaca repetidas veces a todos los enemigos usando poderosos ataques no elementales, lo cual puede hacer que se tambaleen.";
      
      public static var FishSteam:String = "Se abalanza sobre los enemigos a velocidades supersónicas, lo cual puede causarles el estado Ligereza.";
      
      public static var FishGold:String = "Destroza a todos los enemigos usando un rayo mágico Sacro, el cual puede causarles el estado Sequedad.";
      
      public static var FishJet:String = "Ametralla a todos los enemigos usando un simple ataque de tipo Explosivo.";
      
      public static var HandSkeleton:String = "Proporciona el estado Fortuna a todos los aliados, incluyendo los que están en la reserva, lo que les da una mayor suerte en los sucesos aleatorios.";
      
      public static var HandZombie:String = "Inflige el estado Condena a todos los enemigos, lo que provoca su muerte instantánea al cabo de tres turnos.";
      
      public static var HandMagma:String = "Proporciona el estado Furia a todos los aliados, lo cual hace que ataquen descontroladamente con un mayor poder.";
      
      public static var FlybotBlue:String = "Invierte los aumentos y las reducciones de atributos de todos los aliados.";
      
      public static var FlybotYellow:String = "Invierte los aumentos y las reducciones de atributos de todos los enemigos.";
      
      public static var FlybotRed:String = "Invierte los aumentos y las reducciones de atributos de un solo aliado o enemigo.";
      
      public static var FallenLost:String = "Corta a un enemigo usando un ataque de tipo Viento y proporciona el estado Moral a todos los aliados, incluyendo los que están en la reserva.";
      
      public static var FallenCrucified:String = "Lanza un ataque cortante de tipo Sacro a un enemigo, lo cual puede matarlo al instante.";
      
      public static var FallenDrowned:String = "Disipa las reducciones de atributos de todos los aliados activos.";
      
      public static var FallenBurned:String = "Seca a todos los enemigos usando un ataque de tipo Fuego y sustituye el clima actual por Tormenta de Arena durante cinco turnos.";
      
      public static var FallenBeheaded:String = "Golpea a un enemigo usando un ataque de tipo Oscuridad y proporciona el estado Valentía a todos los aliados, incluyendo los que están en la reserva.";
      
      public static var PixelSlime:String = "Golpea a un enemigo usando una magia débil de tipo Bío, la cual los deja agotados.";
      
      public static var PixelBush:String = "Golpea a un enemigo usando una magia débil de tipo Fuego, la cual los seca.";
      
      public static var PixelBat:String = "Golpea a un enemigo usando una magia débil de tipo Oscuridad, la cual les da mala suerte.";
      
      public static var PixelIdol:String = "Golpea a un enemigo usando ataques débiles de tipo Explosivo, lo cual los debilita.";
      
      public static var MonolithViking:String = "Proporciona el estado Prisa a todos los aliados, lo que otorga básicamente otro turno a cada uno.";
      
      public static var MonolithAncient:String = "Proporciona el estado Guardia a todos los aliados, lo que ofrece una gran protección por un turno.";
      
      public static var MonolithCosmic:String = "Destruye el campo de batalla con un estallido de magia de tipo Oscuridad que afecta a todos los enemigos.";
      
      public static var IdolGem:String = "Proporciona el estado Ligereza a todos los aliados, incluyendo los que están en la reserva, lo que los protege contra el daño de tipo Tierra.";
      
      public static var IdolStone:String = "Proporciona el estado Sequedad a todos los aliados, incluyendo los que están en la reserva, lo que los protege contra el daño de tipo Hielo y tipo Rayo.";
      
      public static var IdolMetal:String = "Proporciona el estado Pesadez a todos los aliados, incluyendo los que están en la reserva, lo que los protege contra el daño de tipo Viento.";
      
      public static var IdolWood:String = "Proporciona el estado Bendición a todos los aliados, incluyendo los que están en la reserva, lo que los protege contra todos los efectos de estado.";
      
      public static var MirrorWise:String = IdolWood;
      
      public static var MirrorAngel:String = "Proporciona el estado Encantamiento a todos los aliados, lo que los hace inmunes al daño mágico, pero vulnerables contra los ataques físicos.";
      
      public static var MirrorDemon:String = "Proporciona el estado Invisibilidad a todos los aliados, lo que los hace inmunes al daño físico, pero vulnerables contra los ataques mágicos.";
      
      public static var MirrorHaunted:String = "Muerde a un enemigo usando un poderoso ataque de tipo Oscuridad, el cual también los maldice.";
      
      public static var MammothWooly:String = "Se abalanza sobre un enemigo y le inflige un enorme daño físico no elemental. Los demás enemigos reciben un tercio del daño." + equips.MAY_STUN;
      
      public static var MammothCamel:String = "Aumenta la Defensa Mágica de todos los aliados, incluyendo los que están en la reserva, y luego golpea a todos los enemigos con un ataque de tipo Tierra.";
      
      public static var MammothWar:String = "Aumenta la Defensa de todos los aliados, incluyendo los que están en la reserva, y luego golpea a todos los enemigos con magia de tipo Explosivo." + equips.MAY_STAGGER;
      
      public static var SquidPink:String = "Escupe tinta a un enemigo y le inflige un enorme daño de tipo Oscuridad, lo cual también le reduce la Precisión y lo deja invisible.";
      
      public static var SquidPurple:String = "Reduce la Precisión de todos los enemigos y también puede infligirles el estado Condena.";
      
      public static var SquidLime:String = "Acuchilla a todos los enemigos usando ataques poderosos de tipo Rayo y los paraliza.";
      
      public static var Underlegs:String = "Disipa los aumentos de atributos de todos los enemigos y luego libera una avalancha de intensos ataques no elementales sobre ellos.";
      
      public static var SlimeBigSand:String = "Usa un poderoso ataque de tipo Bío que golpea a un solo objetivo y puede paralizarlo.";
      
      public static var SlimeBigLava:String = "Usa un poderoso ataque de tipo Fuego que golpea a un solo enemigo y lo quema severamente.";
      
      public static var SlimeBigMud:String = "Usa ataques fúngicos de tipo Bío contra todos los enemigos y puede paralizarlos con esporas.";
      
      public static var SlimeBigIcecream:String = "Hiela a todos los enemigos con una magia débil de tipo Hielo que abre las posibilidades de hacer combinaciones con Agua y Hielo.";
      
      public static var SlimeBigChocolate:String = "Vomita chocolate sobre todos los enemigos, inflige daño mágico de tipo Tierra y les proporciona el estado Pesadez.";
      
      public static var WormPutrid:String = "Usa un ataque débil no elemental con una red que reduce drásticamente la Evasión de un enemigo.";
      
      public static var WormScaly:String = "Proporciona el estado Humedad a todos los aliados, incluyendo los que están en la reserva, lo que los protege contra el daño de tipo Fuego.";
      
      public static var WormFuzzy:String = "Muerde usando un ataque débil no elemental e infecta al objetivo con un virus.";
      
      public static var WormCutie:String = "Cura los efectos de estado neutros de todos los aliados, incluyendo Humedad, Resfriado, Sequedad, Pesadez, Ligereza, Encantamiento e Invisibilidad.";
      
      public static var WraithIce:String = "Atraviesa el corazón de los enemigos usando un ataque de tipo Hielo, lo cual puede matarlos al instante.";
      
      public static var WraithFire:String = "Ataca a un enemigo usando una magia infernal de tipo Fuego, la cual puede proporcionarle el estado Furia. \n • Conviene que el objetivo no sobreviva.";
      
      public static var WraithSteel:String = "Bombardea varias veces a un enemigo usando ataques de tipo Explosivo, lo cual reduce su Defensa y puede hacer que se tambalee.";
      
      public static var WraithLeaf:String = "Dispara varias veces a un enemigo usando ataques de tipo Bío, los cuales lo envenenan y le reducen la Defensa Mágica.";
      
      public static var WraithMaster:String = "Usa magia oscura contra un solo enemigo, la cual le inflige el estado Mudez.";
      
      public static var Glitch2:String = "???-?eII ¡OBJETO NO ENCONTRADO! ### \nERROR: 0x000002";
      
      public static var Glitch1:String = "??-//AVISO: GARANTÍA ##ANULADA## SI SE ABRE EL ##ENVOLTORIO##!! 0?-//??";
      
      public static var GloopStone:String = "Proporciona el estado Invisibilidad a un enemigo, lo que hace que reciba el doble de daño de ataques mágicos.";
      
      public static var GloopCrystal:String = "Proporciona el estado Encantamiento a un enemigo, lo que hace que reciba el doble de daño de ataques físicos.";
      
      public static var GloopAsh:String = "Proporciona el estado Valentía a todos los aliados, incluyendo los que están en la reserva, lo que aumenta sus probabilidades de dar golpes críticos.";
      
      public static var GloopWood:String = "Proporciona el estado Moral a todos los aliados, incluyendo los que están en la reserva, lo que los protege de ataques que matan de un golpe.";
      
      public static var HydraZombie:String = "Mata al instante a todos los enemigos. Si no, les inflige algo de daño físico de tipo Oscuridad.";
      
      public static var HydraMagma:String = "Machaca a todos los enemigos usando una magia poderosa de tipo Fuego, la cual también los quema.";
      
      public static var HydraIce:String = "Muerde varias veces a un enemigo y le inflige un enorme daño físico de tipo Hielo.";
      
      public static var DragonEarth:String = "Reduce la Defensa Mágica de todos los enemigos y luego les escupe ácido, lo que les inflige daño mágico de tipo Bío.";
      
      public static var DragonSky:String = "Reduce la Defensa de todos los enemigos y luego les lanza un huracán de plumas, lo que les inflige daño físico de tipo Viento.";
      
      public static var DragonSea:String = "Reduce el Ataque de todos los enemigos y luego les inflige un enorme daño mágico de tipo Agua y los empapa.";
      
      public static var DragonOmega:String = "Reduce el Ataque Mágico de todos los enemigos y luego les inflige un enorme daño mágico de tipo Sacro, lo que también los puede paralizar.";
      
      public static var BatBlood:String = "Usa un ataque simple de tipo Bío que drena los Puntos de Salud de un objetivo y se los transfiere al personaje que lo ha invocado.";
      
      public static var BatSnow:String = "Proporciona el estado Resfriado a todos los aliados, incluyendo los que están en la reserva, lo que los protege del daño de tipo Bío.";
      
      public static var BatThunder:String = "Proporciona el estado Confusión a todos los aliados activos durante varios turnos, lo que es equivalente a una batalla automática. \n • No lo pruebes contra un jefe.";
      
      public static var BatBone:String = "Proporciona el estado Virus a todos los aliados, incluso si son resistentes a él.";
      
      public static var BearBrown:String = "Acomete contra un enemigo usando ataques no elementales. Inflige más daño si su invocador está herido y si sus aliados están muertos. \n • El poder máximo es 1000.";
      
      public static var BearGrolar:String = "Apalea a todos los enemigos usando una avalancha de ataques de tipo Hielo, lo cual también puede congelarlos.";
      
      public static var BearPanda:String = "Desgarra a todos los enemigos usando un aluvión de ataques de tipo Bío, lo cual también puede envenenarlos.";
      
      public static var BitIce:String = "Lanza un hechizo defensivo que aumenta la Defensa Mágica de todos los aliados, incluyendo los que están en la reserva.";
      
      public static var BitThunder:String = "Lanza un hechizo protector que aumenta la Defensa de todos los aliados, incluyendo los que están en la reserva.";
      
      public static var BitHoly:String = "Lanza un poderoso hechizo sanador que cura a todos los aliados.";
      
      public static var BitFire:String = "Usa un ataque de tipo Fuego contra un enemigo, cuya Defensa se ve reducida y puede recibir quemaduras.";
      
      public static var BitWind:String = "Usa un ataque de tipo Viento contra un enemigo, cuya Defensa Mágica se ve reducida y puede quedar paralizado.";
      
      public static var BitWater:String = "Empapa a todos los enemigos usando una magia débil de tipo Agua, la cual les proporciona el estado Humedad y prepara combinaciones con Hielo y Rayo.";
      
      public static var BitPoison:String = "Envenena a todos los enemigos usando una magia débil de tipo Bío, lo cual les inflige daño cada turno.";
      
      public static var BoulderCoral:String = "Se abalanza sobre un objetivo usando un ataque de tipo Agua, el cual puede hacer que se tambalee.";
      
      public static var BoulderMarble:String = "Golpea a todos los enemigos usando una magia de tipo Viento, la cual los deja mudos.";
      
      public static var BoulderObsidian:String = "Golpea a todos los enemigos lanzando un d20, lo cual inflige un daño muy aleatorio de tipo Fuego, además de quemarlos.";
      
      public static var BoulderDirt:String = "Inflige daño físico de tipo Tierra a todos los enemigos y los deja cansados.";
      
      public static var BoulderSandstone:String = "Se abalanza sobre un solo objetivo y le inflige un enorme daño físico de tipo Tierra.";
      
      public static var CatNinja:String = "Otorga un turno extra a un aliado.";
      
      public static var CatSniper:String = "Dispara a un enemigo en la cara, lo cual puede matarlo al instante con un poco de suerte.";
      
      public static var CatWizard:String = "Lanza un simple hechizo sanador que cura a un aliado.";
      
      public static var CatBomber:String = "Arroja una bomba a un enemigo, le inflige daño mágico y lo deja tambaleándose.";
      
      public static var CatWarrior:String = "Desgarra a un enemigo usando una secuencia de ataques no elementales.";
      
      public static var DollMatt:String = "Aumenta notablemente el Ataque de un aliado y le proporciona el estado Bendición.";
      
      public static var DollNatalie:String = "Aumenta notablemente el Ataque Mágico de un aliado y le proporciona el estado Moral.";
      
      public static var DollLance:String = "Golpea a todos los enemigos usando una magia poderosa de tipo Explosivo, la cual puede hacer que se tambaleen.";
      
      public static var DollAnna:String = "Ataca lanzando una flecha penetrante de tipo Bío que inflige un mayor daño si el objetivo tiene aumentos de Defensa o de Defensa Mágica, o si se está defendiendo.";
      
      public static var DollNoLegs:String = "Maúlla de manera tenebrosa a los enemigos, les reduce la Evasión y les inflige el estado Desdicha.";
      
      public static var BossCyclopsDesert:String = "Golpea varias veces a todos los enemigos infligiendo un enorme daño mágico de tipo Explosivo, además de poder paralizarlos.";
      
      public static var BossCyclopsGlacial:String = "Machaca varias veces a un enemigo usando ataques poderosos de tipo Hielo. Los demás reciben un tercio del daño. \n • Todos los enemigos pueden quedar congelados. ";
      
      public static var BossCyclopsInfernal:String = "Aplasta veces a un enemigo usando ataques poderosos de tipo Fuego. Los demás reciben un tercio del daño. \n • Todos los enemigos pueden sufrir quemaduras. ";
      
      public static var BossGolemWater:String = "Destroza a todos los enemigos usando ataques muy poderosos de tipo Agua, lo cual puede dejarlos empapados.";
      
      public static var BossGolemFire:String = "Lanza ataques muy poderosos de tipo Fuego contra todos los enemigos. Los que sobrevivan sufrirán quemaduras.";
      
      public static var BossNestCat:String = "Aumenta el Ataque Mágico de todos los aliados, incluyendo los que están en la reserva, y desgarra a todos los enemigos usando un aluvión de ataques de tipo Bío. ";
      
      public static var BossNestNinja:String = "Golpea a todos los enemigos usando una magia poderosa de tipo Oscuridad, la cual también los maldice.";
      
      public static var EvilMatt:String = "Aplasta a todos los enemigos uno por uno usando ataques muy poderosos de tipo Tierra." + HIGH_CRITS;
      
      public static var EvilNatalie:String = "Devasta a todos los enemigos uno por uno usando una magia muy poderosa de tipo Sacro." + HIGH_CRITS;
      
      public static var EvilLance:String = "Hace explotar a todos los enemigos uno por uno usando una magia muy poderosa de tipo Explosivo." + HIGH_CRITS;
      
      public static var EvilAnna:String = "Atraviesa a todos los enemigos uno por uno usando unos ataques muy poderosos de tipo Viento." + HIGH_CRITS;
      
      public static var EvilNoLegs:String = "Usa la magia más poderosa del universo y extermina a todos los enemigos infligiendo un daño no elemental completamente desproporcionado.";
      
      public static var WraithOrigami:String = "Desgarra a un enemigo con un ataque no elemental disipador.";
      
      public static var GloopFab:String = "Sustituye el clima actual por Cerezos en Flor durante cinco turnos.";
      
      public static var CatSkeleton:String = "Apuñala a un enemigo y le inflige daño físico de tipo Oscuridad, además de procurarle la mayor de las desdichas.";
      
      public static var HydraOrigami:String = "Corta a todos los enemigos con unos espadazos de papel no elementales y aumenta la Evasión de todos los aliados, incluyendo los que están en la reserva.";
      
      public static var Defender3:String = "Destroza a todos los enemigos con unas poderosas ondas de choque que causan daño físico de tipo Oscuridad. \n • Siempre propina golpes críticos.";
      
      public static var BearBlack:String = "Acuchilla a un enemigo y le inflige daño físico de tipo Fuego, además de causarle la mayor sequedad jamás conocida.";
      
      public static var GolemBone:String = "Atraviesa a todos los enemigos con poderosos ataques no elementales, los cuales pueden debilitarlos.";
      
      public static var WormBook:String = "Aumenta la Precisión de todos los aliados activos.";
      
      public static var BossGigalith:String = "Devasta a todos los enemigos con una magia poderosa no elemental, la cual los abrasa y les reduce los Puntos de Salud máximos.";
      
      public static var BossDevourer:String = "Elimina la simulación en curso.";
      
      public static var SketchPapalotl:String = "Apuñala a todos los enemigos y les inflige un enorme daño físico no elemental. Ignora todos los aumentos defensivos, pero no las reducciones.";
      
      public static var SketchGuncat:String = "Bombardea a todos los enemigos y les inflige un gran daño de tipo Explosivo que es físico y mágico a partes iguales. Ignora los aumentos defensivos, pero no las reducciones.";
      
      public static var SketchXolotl:String = "Golpea a todos los enemigos y les inflige un daño físico no elemental, además de debilitarlos. Ignora los aumentos defensivos, pero no las reducciones.";
      
      public static var SketchGlaurung:String = "Inflige daño físico de tipo Viento a todos los enemigos y los disipa. Ignora los aumentos defensivos, pero no las reducciones.";
      
      public static var ArcadeGuoye:String = "Aumenta considerablemente la Precisión de todos los aliados activos.";
      
      public static var ArcadeTotom:String = "Cura por completo a todos los aliados activos y elimina todas las reducciones de atributos o los estados negativos que tengan.";
      
      public static var ArcadeChair:String = "Reduce considerablemente el Ataque Mágico de todos los enemigos, además de infligirles daño mágico de tipo Explosivo.";
      
      public static var ArcadePumpkus:String = "Normalmente, no hace nada, pero invocarlo dos o tres veces durante el mismo turno hará que enfurezca. En ese caso, infligirá un enorme daño físico a varios enemigos elegidos al azar.";
      
      public static var ArcadeGlob:String = "Exhala su hediondo aliento sobre un enemigo, al cual, en este orden, lo disipa, lo cansa, lo maldice, lo debilita, le profiere mala suerte y lo cubre con un velo. También inflige algo de daño mágico no elemental.";
      
      public static var ArcadeSnek:String = "Muerde a un enemigo y le inflige daño físico no elemental, además de causarle la mayor de las quemaduras y de infectarle con el más letal de los venenos.";
      
      public static var ArcadeRobo:String = "Destroza a un enemigo y le inflige daño mágico de tipo Rayo, además de paralizarlo y reducirle considerablemente la Precisión.";
      
      public static var ArcadeBosh:String = "Reduce considerablemente el Ataque de todos los enemigos.";
      
      public static var ArcadeTreagure:String = "Inflige daño de un elemento al azar a varios enemigos elegidos al azar y les proporciona efectos de estado al azar. \n • Dichos efectos incluyen Congelación, Abrasamiento, Parálisis, Mudez, Tambaleo, Condena y Desdicha.";
      
      public static var ArcadePhoenix:String = "Resucita a todos los aliados activos o les proporciona el estado Resurrección si ya están vivos.";
      
      public static var ArcadeMermaid:String = "Aumenta enormemente la Precisión de todos los aliados, incluyendo los que están en la reserva.";
      
      public static var ArcadeMaw:String = "Infecta a todos los enemigos con un virus mortal, además de infligir algo de daño mágico de tipo Bío.";
      
      public static var ClassicSlime:String = "Usa un patético ataque no elemental contra un enemigo.";
      
      public static var ClassicSlimeKing:String = "Lanza un poderoso hechizo que cura a todos los aliados, incluyendo los que están en la reserva. \n • También elimina los efectos de estado negativos.";
      
      public static var ClassicTree:String = "Inflige un daño minúsculo de tipo Bío a todos los enemigos y puede paralizarlos brevemente.";
      
      public static var ClassicEyeball:String = "Inflige daño mágico no elemental a todos los enemigos.";
      
      public static var ClassicBeholder:String = "Envuelve con sus tentáculos a una víctima desafortunada, le inflige daño de tipo Bío y le inocula un peligroso veneno.";
      
      public static var ClassicWaspRed:String = "Reduce enormemente el Ataque Mágico de un enemigo.";
      
      public static var ClassicWaspBlack:String = "Reduce enormemente el Ataque de un enemigo.";
      
      public static var ClassicSandworm:String = "Vomita violentamente sobre todos los enemigos, les inflige daño mágico de tipo Bío y les reduce el Ataque, el Ataque Mágico, la Defensa y la Defensa Mágica.";
      
      public static var ClassicEaterIce:String = "Exhala un mágico aliento gélido sobre todos los enemigos. No causa mucho daño, pero tiene una alta probabilidad de congelarlos.";
      
      public static var ClassicEaterFire:String = "Exhala un aliento ardiente sobre todos los enemigos, además de secarlos.";
      
      public static var ClassicClayBlue:String = "Lanza un hechizo de tipo Viento a un enemigo, al cual le proporciona la mayor de las ligerezas.";
      
      public static var ClassicClayRed:String = "Golpea a un enemigo y le inflige daño físico de tipo Tierra, además de hacerle sentir la mayor pesadez jamás vista.";
      
      public static var ClassicClayDark:String = "Lanza un hechizo de tipo Oscuridad a un enemigo, le proporciona el estado Condena y le reduce el Ataque, el Ataque Mágico, la Defensa y la Defensa Mágica.";
      
      public static var ClassicClayLight:String = "Lanza un avanzado hechizo sanador que cura a todos los aliados, incluyendo los que están en la reserva.";
      
      public static var ClassicProtector:String = "Machaca a todos los enemigos con una onda mágica relampagueante. Los enemigos que sobrevivan quedarán paralizados durante varios turnos.";
      
      public static var ClassicSlingerGun:String = "Intenta disparar a un enemigo utilizando un poderoso ataque de tipo Explosivo.\n • Las probabilidades de impactar son siempre del 50%.\n • Ignora la Evasión y los aumentos defensivos del enemigo.";
      
      public static var ClassicSlingerSword:String = "Intenta acuchillar a un enemigo usando un poderoso ataque no elemental.\n • Las probabilidades de impactar son siempre del 50%.\n • Ignora la Evasión y los aumentos defensivos del enemigo.";
      
      public static var ClassicPraetorian:String = "Proporciona el estado Guardia a todos los aliados activos. Después, inflige un daño no elemental a todos los enemigos, a quienes puede matar al instante, además de ignorar sus aumentos defensivos, pero no sus reducciones.";
      
      public static var ClassicCrystalRed:String = "Devasta a un enemigo y le inflige daño mágico de tipo Fuego, además de abrasarlo.";
      
      public static var ClassicCrystalBlue:String = "No causa mucho daño, pero hay una probabilidad muy alta de que congele a un enemigo durante varios turnos.";
      
      public static var ClassicGigaGolem:String = "Ataca a un enemigo y le inflige un enorme daño físico que puede ser de tipo Fuego o de tipo Hielo. ¡El elemento se elige al azar!";
      
      public static var ClassicRafflesia:String = "Inflige un enorme daño físico de tipo Bío a todos los enemigos.";
      
      public static var ClassicJack:String = "Aumenta enormemente el Ataque y el Ataque Mágico de todos los aliados, incluyendo los que están en la reserva.";
      
      public static var arcadePoison:String = "Burbuja Tóxica";
      
      public static var arcadeNettle:String = "Hiedras Apresadoras";
      
      public static var arcadeTeeth:String = "Dientes Afilados";
      
      public static var bonePillar:String = "Pilar de Huesos";
      
      public static var hellfire:String = "Fuego Infernal";
      
      public static var pixelswords:String = "Tormenta de Espadas";
      
      public static var pixelfork:String = "Frenesí de Tenedores";
      
      public static var paperSword:String = "Espada de Papel";
      
      public static var paperStars:String = "Tormenta de Papeles";
      
      public static var swordswirl:String = "Sable Remolino";
      
      public static var iceneedle:String = "Agujas de Hielo";
      
      public static var thunderblast:String = "Estallido Eléctrico";
      
      public static var snowblast:String = "Estallido Gélido";
      
      public static var arcadeFlood:String = "Cascada";
      
      public static var ritual:String = "Ritual Profano";
      
      public static var highgravity:String = "Gravedad Alta";
      
      public static var lowgravity:String = "Gravedad Baja";
      
      public static var snow:String = "Nieve";
      
      public static var earthquake:String = "Terremoto";
      
      public static var blossom:String = "Cerezos en Flor";
      
      public static var electrongun:Object = {
         "name":"Cañón de Electrones",
         "desc":"Magia de tipo Rayo que paraliza a un enemigo." + COOLDOWN_6
      };
      
      public static var sharpen:Object = {
         "name":"Incitar",
         "desc":"Alarga la duración de los efectos de estado negativos actuales que tengan los enemigos. También puede usarse con los aliados, incluyendo los que están en la reserva, para alargar la duración de los efectos de estado positivos. No afecta a los estados Prisa y Guardia." + COOLDOWN_6
      };
      
      public static var sand:Object = {
         "name":"Cortina de Arena",
         "desc":"Ataque avanzado de tipo Tierra que golpea a un solo objetivo." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var sanddune:Object = {
         "name":"Duna",
         "desc":"Ataque poderoso de tipo Tierra que golpea a un solo objetivo." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var acid3:Object = {
         "name":"Ácido",
         "desc":"Magia avanzada de tipo Bío que golpea a un solo objetivo." + equips.DEBUFF_MDEF
      };
      
      public static var acid2:Object = {
         "name":"Chorro de Ácido",
         "desc":"Magia poderosa de tipo Bío que golpea a todos los enemigos." + ALTERNATIVE_ONE + equips.DEBUFF_MDEF
      };
      
      public static var bubblering:Object = {
         "name":"Anillo de Burbujas",
         "desc":"Ataque de tipo Agua que enmudece a un solo objetivo. \n • El daño se calcula tomando en cuenta el valor más alto entre el Ataque y el Ataque Mágico."
      };
      
      public static var musicalblast:Object = {
         "name":"Bendición de Phyrnna",
         "desc":"Aumenta el Ataque Mágico de todos los aliados, incluyendo los que están en la reserva, y les proporciona el estado Regeneración." + COOLDOWN_11
      };
      
      public static var geometry:Object = {
         "name":"Geometría",
         "desc":"Ataque poderoso no elemental que golpea a un solo objetivo. \n • El daño se calcula tomando en cuenta el valor más alto entre el Ataque y el Ataque Mágico." + HIGH_ACC + HIGH_CRITS + COOLDOWN_3
      };
      
      public static var fairy2:Object = {
         "name":"Hadas Explosivas",
         "desc":"Magia poderosa de tipo Sacro que golpea a todos los enemigos." + HIGH_ACC + COOLDOWN_2
      };
      
      public static var death:Object = {
         "name":"La Parca",
         "desc":"Ataque de tipo Oscuridad que mata al instante a un único objetivo." + LOW_ACC + COOLDOWN_6
      };
      
      public static var retroswords:Object = {
         "name":"Espadas Demoníacas",
         "desc":"Ataque poderoso de tipo Oscuridad que golpea a todos los enemigos." + ALTERNATIVE_ONE + COOLDOWN_2
      };
      
      public static var artattack:Object = {
         "name":"Danza de Papel",
         "desc":LIMIT_BREAK + "Cura a todos los aliados, les elimina los efectos de estado negativos y les aumenta los Puntos de Salud máximos, la Evasión y la Puntería. \n • Funciona también con los aliados que están en la reserva."
      };
      
      public static var sevenswords:Object = {
         "name":"Siete Espadas",
         "desc":LIMIT_BREAK + "Inflige un enorme daño físico de tipo Sacro a todos los enemigos." + HIGH_ACC
      };
      
      public function skills()
      {
         super();
      }
   }
}

