package text.german
{
   public class skills
   {
      public static var WEP_EFFECTS:String = "\n • Element und Effekte hängen von deiner Waffe ab.";
      
      public static var WEP_EFFECTS_2:String = "\n • Waffeneffekte sind stärker als normal.";
      
      public static var LOW_ACC:String = "\n • Niedrige Genauigkeit.";
      
      public static var HIGH_ACC:String = "\n • Hohe Genauigkeit.";
      
      public static var HIGH_ACC_2:String = "\n • Sehr hohe Genauigkeit.";
      
      public static var HIGH_CRITS:String = "\n • Erhöhte Chance auf kritische Treffer.";
      
      public static var RETARGETS:String = "\n • Greift einen neuen Gegner an, wenn das Ziel stirbt.";
      
      public static var RETARGETS_2:String = "\n • Wählt ein neues Ziel, wenn das alte Ziel stirbt.";
      
      public static var LIMIT_BREAK:String = "Limit Break! ";
      
      public static var ALTERNATIVE_ALL:String = " Kann auch für gleichmäßigen Schaden gegen alle Ziele eingesetzt werden. ";
      
      public static var ALTERNATIVE_ONE:String = " Kann auch für höheren Schaden auf ein Ziel fokussiert werden.";
      
      public static var MAY_SURRENDER:String = " Kann Gegner aufgeben lassen, sogar die stärkeren. ";
      
      public static var SWORD_DANCE:String = " Greift ein einzelnes Ziel 3 mal an und springt zu einem neuen Gegner, falls der erste stirbt.";
      
      public static var EXTRA_HITS:String = " Bekommt jedes mal einen zusätzlichen Schlag, wenn ein Gegner stirbt.";
      
      public static var DISPEL_ALL:String = " Entzaubert alle Feinde um Buffs und positive Statuseffekte zu entfernen.";
      
      public static var HITS_RANDOM_FOES:String = " Ein Pfeil pro Gegner wird abgefeuert, doch die Ziele sind zufällig.";
      
      public static var COOLDOWN_2:String = "\n • Eine Runde Cooldown. ";
      
      public static var COOLDOWN_3:String = "\n • Zwei Runden Cooldown. ";
      
      public static var COOLDOWN_4:String = "\n • Drei Runden Cooldown. ";
      
      public static var COOLDOWN_6:String = "\n • Fünf Runden Cooldown. ";
      
      public static var COOLDOWN_11:String = "\n • Zehn Runden Cooldown. ";
      
      public static var defend:Object = {
         "name":"Verteidigen",
         "desc":"Jeglicher erhaltener Schaden ist für eine runde um 50% reduziert. Manche Ausrüstunggegenstände haben hier Sondereffekte."
      };
      
      public static var swap:Object = {
         "name":"Spieler tauschen",
         "desc":"Wähle einen anderen Spieler für die nächste Aktion. Dies kostet dich keine Runde."
      };
      
      public static var flee:Object = {
         "name":"Flüchten",
         "desc":"Flüchte von diesem Kampf. Keine Sorge, es gibt keine Strafe dafür."
      };
      
      public static var skip:Object = {
         "name":"Runde Überspringen",
         "desc":"Drehe Däumchen und mach diese Runde nichts."
      };
      
      public static var scan:Object = {
         "name":"Gegner Scannen",
         "desc":"Scanne alle Gegner auf dem Feld; dies enthüllt ihre Schwächen. Diese Daten sind für immer im Bestiarium gespeichert."
      };
      
      public static var capture:Object = {
         "name":"Gegner fangen",
         "desc":"Versuche, einen Gegner zu fangen. Beschädigte Gegner mit Statuseffekten sind leichter zu fangen. Manche Gegner kann man nicht fangen."
      };
      
      public static var bring1:Object = {
         "name":"Tausche mit Matt",
         "desc":"Bewege einen Spieler in die Reserve und tausche mit Matt. Dies kostet keine Runde."
      };
      
      public static var bring2:Object = {
         "name":"Tausche mit Natalie",
         "desc":"Bewege einen Spieler in die Reserve und tausche mit Natalie. Dies kostet keine Runde."
      };
      
      public static var bring3:Object = {
         "name":"Tausche mit Lance",
         "desc":"Bewege einen Spieler in die Reserve und tausche mit Lance. Dies kostet keine Runde."
      };
      
      public static var bring4:Object = {
         "name":"Tausche mit Anna",
         "desc":"Bewege einen Spieler in die Reserve und tausche mit Anna. Dies kostet keine Runde."
      };
      
      public static var bring5:Object = {
         "name":"Tausche mit NoLegs",
         "desc":"Bewege einen Spieler in die Reserve und tausche mit NoLegs. Dies kostet keine Runde."
      };
      
      public static var swordslash:Object = {
         "name":"Standardangriff",
         "desc":"Verpass einem Gegner einen einfachen Schwertangriff." + WEP_EFFECTS
      };
      
      public static var earthedge:Object = {
         "name":"Erschütterung",
         "desc":"Grundlegender Erdangriff gegen ein einzelnes Ziel."
      };
      
      public static var quakespikes:Object = {
         "name":"Erdstoß",
         "desc":"Fortgeschrittener Erdangriff gegen ein einzelnes Ziel."
      };
      
      public static var cataclysmiccut:Object = {
         "name":"Erdbeben",
         "desc":"Sehr mächtiger Erdangriff gegen ein einzelnes Ziel." + HIGH_CRITS
      };
      
      public static var geysergush:Object = {
         "name":"Geysir",
         "desc":"Grundlegender Wasserangriff gegen ein einzelnes Ziel." + equips.MAY_WET
      };
      
      public static var pouringpike:Object = {
         "name":"Sturzflut",
         "desc":"Fortgeschrittener Wasserangriff gegen ein einzelnes Ziel." + equips.MAY_WET
      };
      
      public static var surgingskewer:Object = {
         "name":"Taifun",
         "desc":"Mächtiger Wasserangriff gegen ein einzelnes Ziel." + equips.MAY_WET + HIGH_CRITS
      };
      
      public static var frostfragment:Object = {
         "name":"Tundra",
         "desc":"Fortgeschrittener Eisangriff gegen ein einzelnes Ziel." + equips.MAY_CHILL
      };
      
      public static var glacialglaive:Object = {
         "name":"Eisberg",
         "desc":"Mächtiger Eisangriff gegen ein einzelnes Ziel." + equips.MAY_CHILL
      };
      
      public static var firespire:Object = {
         "name":"Magma",
         "desc":"Fortgeschrittener Feuerangriff gegen ein einzelnes Ziel." + equips.MAY_DRY
      };
      
      public static var lavalance:Object = {
         "name":"Eruption",
         "desc":"Mächtiger Feuerangriff gegen ein einzelnes Ziel." + equips.MAY_DRY
      };
      
      public static var nettleknife:Object = {
         "name":"Nessel",
         "desc":"Grundlegender Bioangriff gegen ein einzelnes Ziel." + equips.MAY_POISON
      };
      
      public static var shreddingshrub:Object = {
         "name":"Überwucherung",
         "desc":"Mächtiger Bioangriff, der ein einzelnes Ziel zweimal trifft." + equips.MAY_POISON
      };
      
      public static var slicingcyclone:Object = {
         "name":"Klingenzyklon",
         "desc":"Mächtiger Angriff, der alle Gegner mehrfach trifft." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var stealitem:Object = {
         "name":"Diebstahl",
         "desc":"Stiehlt einem einzelnen Zeil einen einzelnen Gegenstand. Bessere Gegenstände können gestohlen werden, wenn dieser Skill verbessert wird." + LOW_ACC
      };
      
      public static var legend:Object = {
         "name":"Legende",
         "desc":"Sehr mächtiger Angriff, der ein einzelnes Ziel mehrfach trifft." + WEP_EFFECTS + COOLDOWN_3
      };
      
      public static var lightblade:Object = {
         "name":"Lichtschwert",
         "desc":"Fotgeschrittener Lichtangriff gegen ein einzelnes Ziel."
      };
      
      public static var holysword:Object = {
         "name":"Seiken",
         "desc":"Mächtiger Lichtangriff gegen ein einzelnes Ziel." + equips.MAY_DISPEL
      };
      
      public static var unleash:Object = {
         "name":"Entfesseln",
         "desc":"Ein Angriff, der die verborgene Kraft deiner Waffe entfesselt." + WEP_EFFECTS + WEP_EFFECTS_2
      };
      
      public static var quickslash:Object = {
         "name":"Ruckzuckhieb",
         "desc":"Greift ein einzelnes Ziel mit hoher Genauigkeit an." + WEP_EFFECTS
      };
      
      public static var temper:Object = {
         "name":"Härten",
         "desc":"Bufft den Angriff eines Verbündeten, und gibt ihm Mut." + COOLDOWN_2
      };
      
      public static var revenge:Object = {
         "name":"Rache",
         "desc":"Ein potenziell verheerender Angriff gegen ein einzelnes Ziel. Wird stärker, wenn Matts HP sinken oder seine Verbündeten tot sind. Die hier angegebene Stärke ist das Maximum." + WEP_EFFECTS
      };
      
      public static var cleaver:Object = {
         "name":"Cleaver",
         "desc":LIMIT_BREAK + "Fügt einem einzelnen Ziel mit mehreren Schlägen gewaltigen Schaden zu." + WEP_EFFECTS + RETARGETS + HIGH_ACC + HIGH_CRITS
      };
      
      public static var ragnarok:Object = {
         "name":"Ragnarök",
         "desc":LIMIT_BREAK + "Fügt allen Gegnern massiven elementlosen physischen Schaden zu, und bufft dann den Angriff aller Verbündeten, auch die in Reserve, und gibt ihnen Mut." + HIGH_ACC
      };
      
      public static var staffstrike:Object = {
         "name":"Standardangriff",
         "desc":"Verpass einem Gegner einen einfachen physischen Angriff, der die magische Kraft deiner Waffe freisetzt." + WEP_EFFECTS
      };
      
      public static var blessedbunny:Object = {
         "name":"Reinigen",
         "desc":"Befreit einen Verbündeten von Debuffs und negativen Statuseffekten, und segnet ihn."
      };
      
      public static var luckystar:Object = {
         "name":"Glücksstern",
         "desc":"Grundlegende elementlose Magie gegen ein einzelnes Ziel, die sehr zufälligen Schaden zufügt." + HIGH_CRITS
      };
      
      public static var starshower:Object = {
         "name":"Sternhagel",
         "desc":"Mächtige elementlose Magie gegen alle Gegner, die sehr zufälligen Schaden zufügt." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var starpower:Object = {
         "name":"Sternenkraft",
         "desc":"Bufft den Magieangriff eines Verbündeten, und gibt ihm Glück." + COOLDOWN_2
      };
      
      public static var intoxicate:Object = {
         "name":"Toxin",
         "desc":"Einfache Biomagie, die ein einzelnes Ziel stark vergiftet."
      };
      
      public static var fireball:Object = {
         "name":"Feuer",
         "desc":"Grundlegende Feuermagie gegen ein einzelnes Ziel." + equips.MAY_BURN
      };
      
      public static var fireblast:Object = {
         "name":"Feuerball",
         "desc":"Fortgeschrittene Feuermagie gegen ein einzelnes Ziel." + equips.MAY_BURN
      };
      
      public static var firestorm:Object = {
         "name":"Feuersturm",
         "desc":"Mächtige Feuermagie gegen alle Gegner." + ALTERNATIVE_ONE + equips.MAY_BURN
      };
      
      public static var thunderbolt:Object = {
         "name":"Blitz",
         "desc":"Grundlegende Blitzmagie gegen ein einzelnes Ziel." + equips.MAY_STUN
      };
      
      public static var thundershock:Object = {
         "name":"Blitzschlag",
         "desc":"Fortgeschrittene Blitzmagie gegen ein einzelnes Ziel." + equips.MAY_STUN
      };
      
      public static var thunderstorm:Object = {
         "name":"Gewitter",
         "desc":"Mächtige Blitzmagie gegen alle Gegner." + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var iceshard:Object = {
         "name":"Eis",
         "desc":"Grundlegende Eismagie gegen ein einzelnes Ziel." + equips.MAY_FREEZE
      };
      
      public static var iceshatter:Object = {
         "name":"Eissplitter",
         "desc":"Fortgeschrittene Eismagie gegen ein einzelnes Ziel." + equips.MAY_FREEZE
      };
      
      public static var icestorm:Object = {
         "name":"Schneesturm",
         "desc":"Mächtige Eismagie gegen alle Gegner." + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var darkpulse:Object = {
         "name":"Schattenpuls",
         "desc":"Fortgeschrittene Schattenmagie gegen ein einzelnes Ziel." + equips.MAY_HEAVY
      };
      
      public static var darkpulsar:Object = {
         "name":"Pulsar",
         "desc":"Sehr mächtige Schattenmagie gegen alle Gegner." + equips.MAY_HEAVY + COOLDOWN_3
      };
      
      public static var spectralflash:Object = {
         "name":"Spektrum",
         "desc":"Fortgeschrittene Magie gegen ein einzelnes Ziel." + WEP_EFFECTS
      };
      
      public static var rainbowblast:Object = {
         "name":"Regenbogenschlag",
         "desc":"Mächtige Magie gegen alle Gegner." + ALTERNATIVE_ONE + WEP_EFFECTS
      };
      
      public static var holylight:Object = {
         "name":"Heiliges Licht",
         "desc":"Fortgeschrittene Lichtmagie gegen ein einzelnes Ziel." + equips.MAY_WEAKEN
      };
      
      public static var divinejudgement:Object = {
         "name":"Vergeltung",
         "desc":"Sehr mächtige Lichtmagie, welche ein einzelnes Ziel erschlägt und seine HP stiehlt." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var syphon:Object = {
         "name":"Stumm",
         "desc":"Lässt einen einzelnen Gegner verstummen, wodurch er die meisten Magieangriffe nicht mehr verwenden kann." + COOLDOWN_3
      };
      
      public static var syphon2:Object = {
         "name":"Stille",
         "desc":"Lässt alle Gegner verstummen, wodurch sie die meisten Magieangriffe nicht mehr verwenden können. Kann auch für einen stärkeren Effekt auf ein Ziel fokussiert werden." + COOLDOWN_3
      };
      
      public static var genesis:Object = {
         "name":"Genesis",
         "desc":LIMIT_BREAK + "Fügt allen Gegnern massiven Lightschaden zu, und belebt alle Verbündeten wieder oder gibt ihnen Auto-Leben. \n • Betrifft auch Reservespieler." + HIGH_ACC
      };
      
      public static var kyun:Object = {
         "name":"Wolke Sieben",
         "desc":LIMIT_BREAK + "Heilt die HP und negativen Statuseffekte aller Verbündeten, und bufft ihren Angriff, Magieangriff, Abwehr, und Magieabwehr. \n • Betrifft auch Reservespieler. \n • Macht Natalie lieblich."
      };
      
      public static var pistolwhip:Object = {
         "name":"Standardangriff",
         "desc":"Verpass einem Ziel zwei einfache Nahkampfangriffe mit dem Griff deiner Waffe." + WEP_EFFECTS
      };
      
      public static var snipe:Object = {
         "name":"Snipe",
         "desc":"Verpass einem Ziel einen hochgenauen Schuss." + WEP_EFFECTS + HIGH_CRITS + COOLDOWN_2
      };
      
      public static var doubleshot:Object = {
         "name":"Doppelschuss",
         "desc":"Ein Angriff, der zwei Schüsse auf dasselbe Ziel abfeuert." + WEP_EFFECTS + WEP_EFFECTS_2 + RETARGETS
      };
      
      public static var unload:Object = {
         "name":"Entladen",
         "desc":"Sehr mächtiger Angriff, der 6 Schüsse auf ein Ziel abfeuert." + WEP_EFFECTS + RETARGETS + HIGH_CRITS + COOLDOWN_6
      };
      
      public static var flameshot:Object = {
         "name":"Feuerschuss",
         "desc":"Grundlegendes Feuergeschoss gegen ein einzelnes Ziel." + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var flameburst:Object = {
         "name":"Flammensalve",
         "desc":"Fortgeschrittenes Feuergeschoss gegen alle Gegner." + ALTERNATIVE_ONE + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var bullethell:Object = {
         "name":"Bullet Hell",
         "desc":"Mächtiges Feuergeschoss, welches hauptsächlich einen Gegner trifft, wobei die anderen 1/3 des Schadens nehmen." + ALTERNATIVE_ALL + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var plasmashot:Object = {
         "name":"Plasmaschuss",
         "desc":"Grundlegendes Blitzgeschoss gegen ein einzelnes Ziel." + equips.DEBUFF_EVA + COOLDOWN_2 + ALTERNATIVE_ONE
      };
      
      public static var plasmawave:Object = {
         "name":"Plasmawelle",
         "desc":"Fortgeschrittenes Blitzgeschoss gegen alle Gegner." + ALTERNATIVE_ONE + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmafield:Object = {
         "name":"Plasmafeld",
         "desc":"Mächtiges Blitzgeschoss, welches hauptsächlich einen Gegner trifft, wobei die anderen 1/3 des Schadens nehmen. " + ALTERNATIVE_ALL + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var darkshot:Object = {
         "name":"Schattenschuss",
         "desc":"Grundlegendes Schattengeschoss gegen ein einzelnes Ziel." + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var gravitysurge:Object = {
         "name":"Gravitonstoß",
         "desc":"Fortgeschrittenes Schattengeschoss gegen alle Gegner." + ALTERNATIVE_ONE + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var antimatterflux:Object = {
         "name":"Antimaterie",
         "desc":"Mächtiges Schattengeschoss, welches hauptsächlich einen Gegner trifft, wobei die anderen 1/3 des Schadens nehmen." + ALTERNATIVE_ALL + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var poisongas:Object = {
         "name":"Giftgas",
         "desc":"Vergiftet alle Gegner stark, und macht etwas magischen Bioschaden." + COOLDOWN_4
      };
      
      public static var airstrike1:Object = {
         "name":"Fliegerbombe",
         "desc":"Lässt einen Gegner mit großem magischem Schaden ausbomben." + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike2:Object = {
         "name":"Luftschlag",
         "desc":"Lässt alle Gegner mit großem magischem Schaden ausbomben." + ALTERNATIVE_ONE + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike3:Object = {
         "name":"M.O.A.B",
         "desc":"Lässt alle Gegner mit massivem magischem Schaden ausbomben. Braucht lang, um sich wieder aufzuladen." + equips.MAY_STAGGER + COOLDOWN_11
      };
      
      public static var medipack1:Object = {
         "name":"Medipack",
         "desc":"Heilt einen Verbündeten und entfernt dessen negative Statuseffekte. " + COOLDOWN_4
      };
      
      public static var medipack2:Object = {
         "name":"Medischlag",
         "desc":"Heilt alle Verbündeten und entfernt ihre negativen Statuseffekte. " + COOLDOWN_4
      };
      
      public static var tankguns:Object = {
         "name":"Maschinengewehre",
         "desc":"Beschießt alle Gegner mehrmals mit Bombenangriffen." + COOLDOWN_2
      };
      
      public static var armorcrush:Object = {
         "name":"Panzerbrecher",
         "desc":"Zerschmettert ein Ziel mit einem Nahkampfangriff, und entzaubert es." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var hyperbeam:Object = {
         "name":"Hyperstrahl",
         "desc":"Braucht zwei Runden zum Verwenden: Lädt sich beim ersten mal auf, und schießt beim zweiten mal. Macht gewaltigen Magieschaden bei allen Gegnern." + WEP_EFFECTS
      };
      
      public static var nuke:Object = {
         "name":"Atombombe",
         "desc":LIMIT_BREAK + "Fügt allen Gegnern massiven magischen Feuerschaden zu, und verbrennt alle Spieler und Gegener." + HIGH_ACC + "\n • Ersetzt das Wetter für 5 Runden durch Strahlung. "
      };
      
      public static var oblivion:Object = {
         "name":"Oblivion",
         "desc":LIMIT_BREAK + "Fügt allen Gegnern massiven physischen Bombenschaden zu. Dabei geht Lances Panzer kaputt, aber er hat noch mehr davon in Reserve." + HIGH_ACC
      };
      
      public static var arrowslash:Object = {
         "name":"Standardangriff",
         "desc":"Verpass einem Ziel einen einfachen Schnitt im Nahkampf." + WEP_EFFECTS
      };
      
      public static var bowwhack:Object = {
         "name":"Bogenhieb",
         "desc":"Hau einen Gegner mit deinem Bogen, wodurch er vielleicht aufgibt. Sogar starke Gegner sind nicht immun." + "\n • Dieser Skill kann keine Gegner töten." + WEP_EFFECTS
      };
      
      public static var gust:Object = {
         "name":"Windstoß",
         "desc":"Grundlegende Windmagie gegen ein einzelnes Ziel." + equips.MAY_LIGHT
      };
      
      public static var whirlwind:Object = {
         "name":"Wirbelsturm",
         "desc":"Fortgeschrittene Windmagie gegen ein einzelnes Ziel." + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var hurricane:Object = {
         "name":"Hurrikan",
         "desc":"Mächtige Windmagie gegen alle Gegner." + ALTERNATIVE_ONE + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var logjab:Object = {
         "name":"Stamm",
         "desc":"Grundlegender Erdangriff gegen ein einzelnes Ziel." + equips.MAY_STAGGER
      };
      
      public static var lumbertrap:Object = {
         "name":"Holz",
         "desc":"Mächtiger Erdangriff, der ein einzelnes Ziel mehrfach trifft." + equips.MAY_STAGGER
      };
      
      public static var leafblade:Object = {
         "name":"Blattklinge",
         "desc":"Einfacher Bioangriff, der ein einzelnes Ziel zweimal trifft." + HIGH_CRITS
      };
      
      public static var razorleaf:Object = {
         "name":"Rasierblatt",
         "desc":"Mächtiger Bioangriff, der alle Gegner mehrfach trifft." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var soularrow:Object = {
         "name":"Lichtpfeil",
         "desc":"Fortgeschrittener Lichtangriff gegen ein einzelnes Ziel." + equips.MAY_WEAKEN
      };
      
      public static var frostarrow:Object = {
         "name":"Frostpfeil",
         "desc":"Fortgeschrittener Eisangriff gegen ein einzelnes Ziel." + equips.MAY_FREEZE
      };
      
      public static var aquaarrow:Object = {
         "name":"Aquapfeil",
         "desc":"Fortgeschrittener Wasserangriff gegen ein einzelnes Ziel." + equips.MAY_WET
      };
      
      public static var nitroarrow:Object = {
         "name":"Nitropfeil",
         "desc":"Fortgeschrittener Bombenangriff gegen ein einzelnes Ziel." + equips.MAY_DISPEL
      };
      
      public static var sparkarrow:Object = {
         "name":"Funkenpfeil",
         "desc":"Fortgeschrittener Blitzangriff gegen ein einzelnes Ziel." + equips.MAY_STUN
      };
      
      public static var soularrow2:Object = {
         "name":"Lichthagel",
         "desc":"Mächtiger Lichtangriff:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WEAKEN
      };
      
      public static var frostarrow2:Object = {
         "name":"Frostschauer",
         "desc":"Mächtiger Eisangriff:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var aquaarrow2:Object = {
         "name":"Aquasalve",
         "desc":"Mächtiger Wasserangriff:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WET
      };
      
      public static var nitroarrow2:Object = {
         "name":"Nitroschlag",
         "desc":"Mächtiger Bombenangriff:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_DISPEL
      };
      
      public static var sparkarrow2:Object = {
         "name":"Funkenregen",
         "desc":"Mächtiger Blitzangriff:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var piercingshot:Object = {
         "name":"Bohrschuss",
         "desc":"Feure einen hochgenauen Schuss ab." + equips.IGNORES_BUFFS + HIGH_CRITS + WEP_EFFECTS
      };
      
      public static var comboshot:Object = {
         "name":"Comboschuss",
         "desc":"Feure eine mächtige Serie genauer Pfeile ab." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var arrowrain:Object = {
         "name":"Pfeilhagel",
         "desc":"Feure eine Salve Pfeile ab, die alle Gegner mehrfach treffen." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var renew:Object = {
         "name":"Erfrischen",
         "desc":"Einfache Heilmagie, die einen Verbündeten heilt."
      };
      
      public static var remedy:Object = {
         "name":"Laben",
         "desc":"Fortgeschrittene Heilmagie, die einen Verbündeten heilt und segnet."
      };
      
      public static var motherearth:Object = {
         "name":"Mutter Erde",
         "desc":LIMIT_BREAK + "Fügt allen Gegnern massiven magischen Bioschaden zu und vergiftet sie. \n • Segnet alle Verbündeten auch die in Reserve." + HIGH_ACC + "\n • Das Wetter klärt sich für 5 Runden auf."
      };
      
      public static var mightyoak:Object = {
         "name":"Eichenfaust",
         "desc":LIMIT_BREAK + "Fügt allen Gegnern mit mehreren mächtigen Hieben massiven phyischen Erdschaden zu." + HIGH_ACC
      };
      
      public static var backstab:Object = {
         "name":"Standardangriff",
         "desc":"Verpass einem Ziel einen schnellen Stich in den Rücken." + WEP_EFFECTS
      };
      
      public static var multistab:Object = {
         "name":"Fechttraining",
         "desc":"Grundlegender Angriff, der einem Gegner vier Treffer zufügt." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var bladeblitz:Object = {
         "name":"Wirbelklinge",
         "desc":"Mächtiger Angriff, der einem Gegner rasend schnell elf Treffer zufügt." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var swiftslash:Object = {
         "name":"Schnellschlag",
         "desc":"Ein blitzschneller Angriff gegen alle Gegner." + WEP_EFFECTS + HIGH_ACC + COOLDOWN_2
      };
      
      public static var ninelives:Object = {
         "name":"Neun Leben",
         "desc":"Heilt alle Verbündeten, gibt ihnen Auto-Leben, und belebt tote Verbündete wieder. Braucht lang, um sich wieder aufzuladen." + COOLDOWN_11
      };
      
      public static var starblast:Object = {
         "name":"Sternschlag",
         "desc":"Verpasst allen Gegnern magischen elementlosen Schaden. Braucht lang, um sich wieder aufzuladen." + equips.MAY_DISPEL + HIGH_ACC + COOLDOWN_11
      };
      
      public static var sworddance:Object = {
         "name":"Sprungschlag",
         "desc":"Grundlegender Nahkampfangriff:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance2:Object = {
         "name":"Schwertertanz",
         "desc":"Fortgeschrittener Nahkampfangriff:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance3:Object = {
         "name":"Finalschnitt",
         "desc":"Mächtiger Nahkampfangriff:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var darkslash:Object = {
         "name":"Schatten-Hieb",
         "desc":"Fortgeschrittener Schattenangriff:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var darkslash2:Object = {
         "name":"Schattenschnitter",
         "desc":"Mächtiger Schattenangriff:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var holyslash:Object = {
         "name":"Heilig-Hieb",
         "desc":"Fortgeschrittener Lichtangriff:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var holyslash2:Object = {
         "name":"Lichtlambada",
         "desc":"Mächtiger Lichtangriff:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var lightningslash:Object = {
         "name":"Schock-Hieb",
         "desc":"Fortgeschrittener Blitzangriff:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var lightningslash2:Object = {
         "name":"Blitzboogie",
         "desc":"Mächtiger Blitzangriff:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var windslash:Object = {
         "name":"Brisen-Hieb",
         "desc":"Fortgeschrittener Windangriff:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var windslash2:Object = {
         "name":"Tornadotango",
         "desc":"Mächtiger Windangriff:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var waterslash:Object = {
         "name":"Plätscher-Hieb",
         "desc":"Fortgeschrittener Wasserangriff:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var waterslash2:Object = {
         "name":"Wasserwirbel",
         "desc":"Mächtiger Wasserangriff:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var sushicat:Object = {
         "name":"Sushi Cat",
         "desc":"Hüpft herum, trifft 3 zufällige Feinde mit Magieschaden, und heilt die 2 Spieler, die am schlimmsten verletzt sind" + COOLDOWN_3
      };
      
      public static var sushicat2:Object = {
         "name":"Sushi Cat!",
         "desc":"Hüpft herum, trifft 3 zufällige Feinde mit Magieschaden, und heilt die 2 Spieler, die am schlimmsten verletzt sind \n • Gibt den Spielern Glück." + COOLDOWN_3
      };
      
      public static var berserk:Object = {
         "name":"Berserk",
         "desc":"Lässt einen Spieler oder Gegner zum Berserker werden, wodurch er unkontrolliert mit erhöhter Stärke angreift. " + COOLDOWN_2
      };
      
      public static var berserk2:Object = {
         "name":"Raserei",
         "desc":"Gibt allen Spielern den Berserk-Status. Kann auch für einen stärkeren Effekt auf einen Spieler oder Gegner fokussiert werden. " + COOLDOWN_3
      };
      
      public static var cherish:Object = {
         "name":"Liebe",
         "desc":"Macht das Ziel Lieblich, wodurch es von den meisten Angriffen gegen ein Ziel nicht ausgewählt werden kann. " + COOLDOWN_3
      };
      
      public static var cherish2:Object = {
         "name":"Liebesaura",
         "desc":"Macht alle Spieler Lieblich. Kann auch für einen stärkeren Effekt auf einen Spieler fokussiert werden. " + COOLDOWN_4
      };
      
      public static var thecreator:Object = {
         "name":"Der Schöpfer",
         "desc":LIMIT_BREAK + "Fügt allen Gegnern massiven magischen Lichtschaden zu. \n • Gibt allen Verbündeten Glück, auch denen in Reserve." + HIGH_ACC + "\n • Das Wetter klärt sich für 5 Runden auf."
      };
      
      public static var thedestroyer:Object = {
         "name":"Der Vernichter",
         "desc":LIMIT_BREAK + "Fügt allen Gegnern mit mehreren Hieben massiven physischen Schattenschaden zu." + DISPEL_ALL + HIGH_ACC
      };
      
      public static var snowbunny:Object = {
         "name":"Schneehäschen",
         "desc":"Eismagie gegen alle Gegner." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var snowcat:Object = {
         "name":"Schneekatzen",
         "desc":"Starke Eismagie, die alle Gegner trifft und Gefriercombos vorbereitet." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var ivy:Object = {
         "name":"Efeu",
         "desc":"Bioangriff gegen ein einzelnes Ziel." + equips.MAY_POISON
      };
      
      public static var vines:Object = {
         "name":"Ranken",
         "desc":"Starker Bioangriff, der ein einzelnes Ziel mehrfach trifft." + equips.MAY_POISON + equips.DEBUFF_EVA
      };
      
      public static var energy:Object = {
         "name":"Energie",
         "desc":"Grundlegende Bombenmagie gegen ein einzelnes Ziel." + HIGH_CRITS
      };
      
      public static var energy2:Object = {
         "name":"Knall",
         "desc":"Fortgeschrittene Bombenmagie gegen ein einzelnes Ziel." + HIGH_CRITS
      };
      
      public static var energy3:Object = {
         "name":"Explosion",
         "desc":"Mächtige Bombenmagie gegen alle Gegner." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var bubbles:Object = {
         "name":"Blase",
         "desc":"Grundlegende Wassermagie gegen ein einzelnes Ziel." + equips.MAY_WET
      };
      
      public static var whirlpool:Object = {
         "name":"Wirbel",
         "desc":"Fortgeschrittene Wassermagie gegen ein einzelnes Ziel." + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var vortex:Object = {
         "name":"Strudel",
         "desc":"Mächtige Wassermagie gegen alle Gegner." + ALTERNATIVE_ONE + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var laserblade:Object = {
         "name":"Schock",
         "desc":"Fortgeschrittener Blitzangriff gegen ein einzelnes Ziel." + equips.MAY_STAGGER
      };
      
      public static var lasersword:Object = {
         "name":"Stromstoß",
         "desc":"Mächtiger Blitzangriff gegen ein einzelnes Ziel." + equips.MAY_STAGGER
      };
      
      public static var bulletbob:Object = {
         "name":"Kugelbobby",
         "desc":"Fortgeschrittener Bombenangriff gegen ein einzelnes Ziel." + HIGH_CRITS
      };
      
      public static var bigbullet:Object = {
         "name":"Kugelrobert",
         "desc":"Mächtiger Bombenangriff gegen ein einzelnes Ziel." + HIGH_CRITS
      };
      
      public static var gale:Object = {
         "name":"Sturm",
         "desc":"Fortgeschrittener Windangriff gegen ein einzelnes Ziel." + equips.MAY_LIGHT
      };
      
      public static var tempest:Object = {
         "name":"Orkan",
         "desc":"Mächtiger Windangriff gegen ein einzelnes Ziel." + equips.MAY_LIGHT
      };
      
      public static var powermetal:Object = {
         "name":"Power Metal",
         "desc":"Fügt allen Gegneren magischen Windschaden zu, und heilt alle Verbündeten." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var air:Object = {
         "name":"Luft",
         "desc":"Grundlegende Windmagie gegen ein einzelnes Ziel." + equips.MAY_STAGGER
      };
      
      public static var air2:Object = {
         "name":"Luftstoß",
         "desc":"Fortgeschrittene Windmagie gegen ein einzelnes Ziel." + equips.MAY_STAGGER
      };
      
      public static var air3:Object = {
         "name":"Schockwelle",
         "desc":"Mächtige Windmagie gegen alle Gegner." + ALTERNATIVE_ONE + equips.MAY_STAGGER
      };
      
      public static var sawblade:Object = {
         "name":"Säge",
         "desc":"Fortgeschrittener elementloser Angriff gegen ein einzelnes Ziel." + equips.IGNORES_BUFFS + equips.MAY_DEATH
      };
      
      public static var sawblades:Object = {
         "name":"Schredder",
         "desc":"Mächtiger elementloser Angriff gegen alle Gegner." + equips.IGNORES_BUFFS + equips.MAY_DEATH + COOLDOWN_2
      };
      
      public static var gaia:Object = {
         "name":"Gaiasamen",
         "desc":"Grundlegende Erdmagie gegen ein einzelnes Ziel." + equips.MAY_TIRE
      };
      
      public static var gaia2:Object = {
         "name":"Gaiatrieb",
         "desc":"Fortgeschrittene Erdmagie gegen ein einzelnes Ziel." + equips.MAY_TIRE
      };
      
      public static var gaia3:Object = {
         "name":"Gaiablüte",
         "desc":"Mächtige Erdmagie gegen alle Gegner." + ALTERNATIVE_ONE + equips.MAY_TIRE
      };
      
      public static var firespin:Object = {
         "name":"Feuerwirbel",
         "desc":"Starke Feuermagie gegen alle Gegner." + equips.MAY_BURN + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var purgingflame:Object = {
         "name":"Läuterung",
         "desc":"Lichtmagie, die ein einzelnes Ziel entzaubert und seinen Magieangriff debufft." + HIGH_ACC
      };
      
      public static var screamer:Object = {
         "name":"Kreischer",
         "desc":"Schattenmagie, die alle Gegner trifft und ihren Angriff debufft." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var heal:Object = {
         "name":"Heilung",
         "desc":"Einfache Heilmagie, die einen Verbündeten heilt." + COOLDOWN_2
      };
      
      public static var healmore:Object = {
         "name":"Mehr Heilung",
         "desc":"Mächtige Heilmagie, die alle Verbündeten heilt. Sie kann auch für konzentrierte Heilung auf einen Verbündeten gebündelt werden." + COOLDOWN_2
      };
      
      public static var revive:Object = {
         "name":"Wiederbelebung",
         "desc":"Belebt einen toten Verbündeten wieder, oder verleiht einem lebenden Auto-Leben. "
      };
      
      public static var purify:Object = {
         "name":"Säubern",
         "desc":"Entfernt die negativen Statuseffekte aller Spieler oder aller Gegner. Neutrale Statuseffekte wie Nass und Trocken bleiben unberührt. " + COOLDOWN_3
      };
      
      public static var lockon:Object = {
         "name":"Zielen",
         "desc":"Bufft die Genauigkeit eines Verbündeten, und gibt ihm Glück. " + COOLDOWN_2
      };
      
      public static var protect:Object = {
         "name":"Beschützer",
         "desc":"Bufft die Abwehr aller Verbündeten, auch in Reserve." + COOLDOWN_6
      };
      
      public static var barrier:Object = {
         "name":"Barriere",
         "desc":"Bufft die Magieabwehr aller Verbündeten, auch in Reserve." + COOLDOWN_6
      };
      
      public static var reflex:Object = {
         "name":"Reflex",
         "desc":"Bufft die Ausweichrate aller Verbündeten, auch in Reserve, und entfernt den Vernebelt-Status bei aktiven Spielern. " + COOLDOWN_6
      };
      
      public static var guardian:Object = {
         "name":"Himmelsschild",
         "desc":"Bufft die Abwehr und Magieabwehr eines Verbündeten. " + COOLDOWN_2
      };
      
      public static var dispel:Object = {
         "name":"Entzaubern",
         "desc":"Entfernt die positiven Statuseffekte und Buffs aller Gegner. Kann auch auf Verbündete verwendet werden, um ihre Debuffs zu entfernen. " + COOLDOWN_6
      };
      
      public static var flare:Object = {
         "name":"Lichtblitz",
         "desc":"Debufft die Genauigkeit aller Gegner." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var bind:Object = {
         "name":"Netz",
         "desc":"Debufft die Ausweichrate aller Gegner." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var debilitate:Object = {
         "name":"Entkräften",
         "desc":"Debufft die Abwehr aller Gegner." + COOLDOWN_6
      };
      
      public static var enfeeble:Object = {
         "name":"Erschöpfen",
         "desc":"Debufft die Magieabwehr aller Gegner." + COOLDOWN_6
      };
      
      public static var teradrill:Object = {
         "name":"Gigabohrer",
         "desc":"Mächtiger Erdangriff gegen ein einzelnes Ziel. Macht mehr Schaden, wenn die Abwehr oder Magieabwehr des Ziels gebufft ist oder es verteidigt. " + COOLDOWN_3
      };
      
      public static var encore:Object = {
         "name":"Zugabe",
         "desc":"Gibt einen Verbündeten einen Extrazug. Sinnlos, es auf sich selbst anzuwenden." + COOLDOWN_3
      };
      
      public static var firecrackers:Object = {
         "name":"Böller",
         "desc":"Gibt allen Gegnern Pech und allen Verbündeten Glück, auch in Reserve." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var abzero:Object = {
         "name":"Absolute Zero",
         "desc":LIMIT_BREAK + "Fügt allen Gegnern schweren magischen Eisschaden zu, debufft ihre Ausweichrate, und friert sie ein. \n entfernt alle cooldowns von allen Spielern." + HIGH_ACC
      };
      
      public static var tsunami:Object = {
         "name":"Tsunami",
         "desc":LIMIT_BREAK + "Fügt allen Gegnern massiven physischen oder magischen Wasserschaden zu, und macht sie Nass. \n • Schaden hängt vom höheren Attribut ab." + equips.MAY_DEATH + HIGH_ACC_2
      };
      
      public static var supernova:Object = {
         "name":"Supernova",
         "desc":LIMIT_BREAK + "Fügt allen Gegnern und Verbündeten massiven magischen Feuerschaden zu, und verbrennt sie. \n • Ausweichen ist unmöglich."
      };
      
      public static var deathmetal:Object = {
         "name":"Death Metal",
         "desc":LIMIT_BREAK + "Fügt allen Gegnern massiven magischen Windschaden zu. Heilt alle Verbündeten und gibt ihnen Moral, auch die in Reserve." + HIGH_ACC
      };
      
      public static var annihilate:Object = {
         "name":"Vernichtung",
         "desc":LIMIT_BREAK + "Angriff mit einer hohen Chance, alle Gegner sofort zu töten. Funktioniert nicht gut gegen Bosse und ist nicht sehr genau."
      };
      
      public static var ion:Object = {
         "name":"Ionenkanone",
         "desc":LIMIT_BREAK + "Fügt allen Gegnern massiven magischen Blitzschaden zu, und kann sie betäuben. \n • Lädt außerdem Lances Hyperstrahl auf." + HIGH_ACC_2
      };
      
      public static var blackhole:Object = {
         "name":"Schwarzes Loch",
         "desc":LIMIT_BREAK + "Fügt allen Gegnern massiven magischen Schattenschaden zu, und macht sie schwerer. Tötet außerdem den Nutzer." + HIGH_ACC
      };
      
      public static var rapture:Object = {
         "name":"Kraftreserve",
         "desc":LIMIT_BREAK + "Fügt allen Gegnern massiven physischen oder magischen Schaden zu. \n • Schaden hängt vom höheren Attribut ab." + WEP_EFFECTS + HIGH_ACC
      };
      
      public static var bones:String = "Knochen";
      
      public static var bonestar:String = "Knochenstern";
      
      public static var groundblade:String = "Untotenklinge";
      
      public static var fallingstar:String = "Sternschnuppe";
      
      public static var firerock:String = "Vulkanbombe";
      
      public static var stalactite:String = "Stalaktit";
      
      public static var stalactite2:String = "Stalaktiten";
      
      public static var fume:String = "Brandgase";
      
      public static var eruption:String = "Eruption";
      
      public static var scald:String = "Heißer Dampf";
      
      public static var rain:String = "Regen";
      
      public static var sandstorm:String = "Sandsturm";
      
      public static var hail:String = "Hagel";
      
      public static var nitro:String = "Nitro";
      
      public static var acid:String = "Säurebrand";
      
      public static var bamboo:String = "Bambus";
      
      public static var bamboo2:String = "Bambusfalle";
      
      public static var bluebolt:String = "Blauer Blitz";
      
      public static var deepfreeze:String = "Tiefkühlung";
      
      public static var wafer:String = "Waffel";
      
      public static var present:String = "\"Geschenk\"";
      
      public static var plasmacage:String = "Plasmakäfig";
      
      public static var tankcannon:String = "Kanone";
      
      public static var candycanes:String = "Zuckerstangen";
      
      public static var bonefish:String = "Knochenfisch";
      
      public static var riceball:String = "Reisbombe";
      
      public static var mushroom:String = "Pilz";
      
      public static var lifedrain:String = "Lebensentzug";
      
      public static var smokepuff:String = "Rauch";
      
      public static var confusion:String = "Verwirrung";
      
      public static var ink:String = "Tintenklecks";
      
      public static var chocolate:String = "Schokoklecks";
      
      public static var tentacles:String = "Tentakel";
      
      public static var slowdown:String = "Langsamer";
      
      public static var speedup:String = "Schneller";
      
      public static var poisonroot:String = "Giftwurzel";
      
      public static var burningroot:String = "Brandwurzel";
      
      public static var searoot:String = "Meerwurzel";
      
      public static var bombblast:String = "Bombe";
      
      public static var bigblast:String = "Große Bombe";
      
      public static var cactus:String = "Kaktus";
      
      public static var cacti:String = "Kakteen";
      
      public static var spark:String = "Funke";
      
      public static var bigspark:String = "Großer Funke";
      
      public static var talisman:String = "Talismansiegel";
      
      public static var ember:String = "Glut";
      
      public static var fireblast2:String = "Flammenstoß";
      
      public static var firecrystals:String = "Feuerkristalle";
      
      public static var zephyrcrystals:String = "Zephyrkristalle";
      
      public static var frost:String = "Schockfrost";
      
      public static var rockslide:String = "Erdrutsch";
      
      public static var avalanche:String = "Lawine";
      
      public static var blackspikes:String = "Schwarze Stacheln";
      
      public static var stonefist:String = "Steinfaust";
      
      public static var spiderweb:String = "Spinnennetz";
      
      public static var spiders:String = "Spinnenschwarm";
      
      public static var geometry2:String = "Raumzerrung";
      
      public static var geometry3:String = "Zerrfeld";
      
      public static var sacrifice:String = "Opfer";
      
      public static var bigroot:String = "Dicke Wurzel";
      
      public static var seabomb:String = "Seemine";
      
      public static var fairy:String = "Feenbombe";
      
      public static var fly:String = "Fliegenbombe";
      
      public static var starpunch:String = "Stern";
      
      public static var darken:String = "Unsichtbarkeit";
      
      public static var lighten:String = "Verzauberung";
      
      public static var SlimeChocolate:String = "Spuckt auf ein einzelnes Ziel, was physischen Erdschaden macht und seine Genauigkeit debufft.";
      
      public static var SlimeIcecream:String = "Verwendet grundlegende Eismagie, die ein einzelnes Ziel unterkühlt.";
      
      public static var SlimeSand:String = "Verwendet einen grundlegenden Bioangriff, der ein einzelnes Ziel betäuben kann.";
      
      public static var SlimeLava:String = "Verwendet einen grundlegenden Feuerangriff, der ein einzelnes Ziel trocknet.";
      
      public static var SlimeMouse:String = "Verwendet einen schwachen Blitzangriff, der ein einzelnes Ziel sicher betäubt.";
      
      public static var SlimeWater:String = "Verwendet einen erbärmlich schwachen Wasserangriff gegen ein einzelnes Ziel.";
      
      public static var SlimeMud:String = "Verwendet einen grundlegenden Bioangriff gegen ein einzelnes Ziel.";
      
      public static var SlimeBunny:String = "Gibt allen Verbündeten Regeneration, auch denen in Reserve, wodurch sie über mehrere Runden hinweg geheilt werden.";
      
      public static var SpriteFire:String = "Ersetzt das Wetter für 5 Runden durch heiße Asche.";
      
      public static var SpriteIce:String = "Ersetzt das Wetter für 5 Runden durch einen Schneesturm.";
      
      public static var SpriteThunder:String = "Ersetzt das Wetter für 5 Runden durch ein elektrisches Feld.";
      
      public static var SpriteRock:String = "Ersetzt das Wetter für 5 Runden durch ein Erdbeben.";
      
      public static var SpriteWind:String = "Ersetzt das Wetter für 5 Runden durch stürmische Winde.";
      
      public static var ChomperLeafy:String = "Ersetzt das Wetter für 5 Runden durch eine sanfte Brise.";
      
      public static var ChomperSeaweed:String = "Ersetzt das Wetter für 5 Runden durch Starkregen.";
      
      public static var ChomperMagma:String = "Ersetzt das Wetter für 5 Runden durch starken Sonnenschein.";
      
      public static var ChomperMutant:String = "Ersetzt das Wetter für 5 Runden durch Säureregen.";
      
      public static var CreepThorny:String = "Sticht mit einem fortgeschrittenen Erdangriff zu, der das Ziel betäuben kann.";
      
      public static var CreepIcicle:String = "Sticht mit einem fortgeschrittenen Eisangriff zu, der das Ziel unterkühlen kann.";
      
      public static var CreepHermit:String = "Schlitzt ein einzelnes Ziel mit einem fortgeschrittenen elementlosen Angriff auf.";
      
      public static var CreepGreen:String = "Prallt von einem Ziel 3 mal ab und verursacht dabei elementlosen Schaden." + RETARGETS_2;
      
      public static var CreepRed:String = "Verpasst einem Ziel einen mächtigen Windangriff, der es ins Wanken bringt.";
      
      public static var CreepBlue:String = "Explodiert als mächtiger Bombenangriff, der das Ziel betäubt.";
      
      public static var Defender1:String = "Verpasst allen Gegnern einen mächtigen Donnerschlag, der sie außerdem ins Wanken bringen kann.";
      
      public static var Defender2:String = "Beschießt ein einzelnes Ziel mit einem mächtigen Wasserstrahl, der es nass machen kann. ";
      
      public static var DogFriend:String = "Gibt allen Verbündeten den Lieblich-Status, sodass Gegner sie nicht so gerne direkt angreifen.";
      
      public static var DogMaxi:String = DogFriend;
      
      public static var DogTanuki:String = "Springt ein Ziel mit einem Feuerangriff an, der es verbrennt.";
      
      public static var DogWolf:String = "Springt ein Ziel mit einem Eisangriff an, der es einfriert.";
      
      public static var DogZap:String = "Springt alle Gegner mit einem ohrenbetäubenden Blitzangriff an, der sie ins Wanken bringen kann.";
      
      public static var DogMage:String = "Trifft alle Gegner mit böser Lichtmagie, die sie verflucht.";
      
      public static var ChibiKnightUltra:String = "Bufft den Angriff aller Verbündeten, auch in Reserve, und greift dann einen Gegner mehrfach an." + RETARGETS_2;
      
      public static var BushGreen:String = "Kreischt die Gegner an, was ihre Angriffskraft leicht debufft.";
      
      public static var BushRed:String = "Kreischt die Gegner an, was ihre Abwehr leicht debufft.";
      
      public static var BushDark:String = "Faucht die Gegner böse an, was ihre Ausweichrate leicht debufft.";
      
      public static var BushMud:String = "Kreischt die Gegner an, was ihren Magieangriff leicht debufft.";
      
      public static var BushSand:String = "Faucht die Gegner böse an, was ihre Magieabwehr leicht debufft.";
      
      public static var GolemTopaz:String = "Erschlägt ein Ziel mehrfach mit mächtigen Blitzangriffen, die es auch betäuben können.";
      
      public static var GolemPearl:String = "Kühlt alle Gegner mit mächtiger Eismagie, und ersetzt das Wetter für 5 Runden durch Riesenhagel.";
      
      public static var GolemAmethyst:String = "Erschlägt alle Gegner mehrfach mit mächtigen elementlosen Angriffen, die sie auch ins Wanken bringen können.";
      
      public static var FishSteam:String = "Fliegt mit Überschallgeschwindigkeit in die Gegner rein, was sie leichter machen kann.";
      
      public static var FishGold:String = "Beschießt alle Gegner mit einem Lichtmagiestrahl, der sie trocknen kann.";
      
      public static var FishJet:String = "Ballert mit einem einfachen Bombenangriff auf alle Gegner.";
      
      public static var HandSkeleton:String = "Gibt allen Verbündeten Glück, auch denen in Reserve, wodurch ihre Chancen bei zufälligen Dingen sich verbessern.";
      
      public static var HandZombie:String = "Gibt allen Gegnern den Verderben-Status, wodurch sie nach 3 Runden sofort sterben.";
      
      public static var HandMagma:String = "Gibt allen Verbündeten den Berserk-Status, wodurch sie unkontrolliert mit erhöhter Stärke angreifen.";
      
      public static var FlybotBlue:String = "Invertiert die Buffs aller Verbündeten, wodurch negative zu positiven werden und andersrum.";
      
      public static var FlybotYellow:String = "Invertiert die Buffs aller Gegner, wodurch negative zu positiven werden und andersrum.";
      
      public static var FlybotRed:String = "Invertiert die Buffs eines einzelnen Gegners oder Spielers, wodurch negative zu positiven werden und andersrum.";
      
      public static var FallenLost:String = "Verpasst einem Gegner einen Windangriff, und gibt allen Verbündeten Moral, auch denen in Reserve.";
      
      public static var FallenCrucified:String = "Greift einen Gegner mit einem schneidenden Lichtangriff an, der ihn sofort töten kann.";
      
      public static var FallenDrowned:String = "Entfernt sorgfältig die Debuffs aller aktiven Verbündeten.";
      
      public static var FallenBurned:String = "Trocknet alle Feinde mit einem Feuerangriff, und ersetzt das Wetter für 5 Runden durch einen Sandsturm.";
      
      public static var FallenBeheaded:String = "Sticht einen Gegner mit einem Schattenangriff, und gibt allen Verbündeten Mut, auch denen in Reserve.";
      
      public static var PixelSlime:String = "Verpasst einem Gegner ein wenig schwache Biomagie, wodurch er sehr Gerädert wird.";
      
      public static var PixelBush:String = "Verpasst einem Gegner ein wenig schwache Feuermagie, wodurch er sehr Trocken wird.";
      
      public static var PixelBat:String = "Verpasst einem Gegner ein wenig schwache Schattenmagie, wodurch er sehr viel Pech bekommt.";
      
      public static var PixelIdol:String = "Verpasst einem Gegner ein paar schwache Bombenangriffe, wodurch er sehr Geschwächt wird.";
      
      public static var MonolithViking:String = "Gibt allen Verbündeten den Schnell-Status, wodurch sie jeweils im Grunde eine Extrarunde bekommen.";
      
      public static var MonolithAncient:String = "Gibt allen Verbündeten den Verteidigt-Status, der ihnen für eine Runde massiven Schutz bietet.";
      
      public static var MonolithCosmic:String = "Plättet das Schlachtfeld mit einer gewaltigen Schattenmagiewelle, die alle Gegner trifft.";
      
      public static var IdolGem:String = "Macht alle Verbündeten Leicht, auch die in Reserve, was sie vor Erdschaden beschützt.";
      
      public static var IdolStone:String = "Macht alle Verbündeten Trocken, auch die in Reserve, was sie vor Blitz- und Eisschaden beschützt.";
      
      public static var IdolMetal:String = "Macht alle Verbündeten Schwer, auch die in Reserve, was sie vor Windschaden beschützt.";
      
      public static var IdolWood:String = "Segnet alle Verbündeten, auch die in Reserve, was sie vor Statuseffekten beschützt.";
      
      public static var MirrorWise:String = IdolWood;
      
      public static var MirrorAngel:String = "Verzaubert alle Verbündeten und macht sie immun gegen magischen Schaden, aber dafür schwach gegen physische Angriffe.";
      
      public static var MirrorDemon:String = "Macht alle Verbündeten unsichtbar und macht immun gegen physischen Schaden, aber dafür schwach gegen magische Angriffe.";
      
      public static var MirrorHaunted:String = "Beißt einen Gegner mit einem mächtigen Schattenangriff, der ihn auch verflucht.";
      
      public static var MammothWooly:String = "Verpasst einem Gegner einen Bodyslam für massiven elementlosen, physischen Schaden, wobei die anderen 1/3 des Schadens nehmen." + equips.MAY_STUN;
      
      public static var MammothCamel:String = "Bufft die Magieabwehr aller Verbündeten, auch in Reserve, und verpasst dann allen Gegnern einen Erdangriff.";
      
      public static var MammothWar:String = "Bufft die Abwehr aller Verbündeten, auch in Reserve, und beschießt dann die Gegner mit magischen Bomben." + equips.MAY_STAGGER;
      
      public static var SquidPink:String = "Bespuckt einen Gegner mit Tinte, die massiven magischen Schattenschaden verursacht und außerdem die Genauigkeit des Ziels debufft und es unsichtbar macht.";
      
      public static var SquidPurple:String = "Debufft die Genauigkeit aller Gegner, und treibt sie vielleicht ins Verderben.";
      
      public static var SquidLime:String = "Sticht alle Gegner mit mächtigen Blitzangriffen, und betäubt sie vollkommen.";
      
      public static var Underlegs:String = "Entzaubert alle Gegner zuerst, und lässt dann einen Blizzard an heftigen elementlosen Angriffen auf sie los.";
      
      public static var SlimeBigSand:String = "Verwendet einen mächtigen Bioangriff, der einen einzelnen Gegner trifft und ihn betäuben kann.";
      
      public static var SlimeBigLava:String = "Verwendet einen mächtigen Feuerangriff, der einen einzelnen Gegner trifft und ihn schwer verbrennt.";
      
      public static var SlimeBigMud:String = "Verwendet Pilz-Bioangriffe gegen alle Gegner, deren Sporen sie betäuben können.";
      
      public static var SlimeBigIcecream:String = "Unterkühlt alle Gegner mit schwacher Eismagie, um Wasser- und Eis-Combos vorzubereiten.";
      
      public static var SlimeBigChocolate:String = "Kotzt Schokolade über die Gegner, die ihnen magischen Erdschaden zufügt und sie alle schwer macht.";
      
      public static var WormPutrid:String = "Verwendet einen schwachen, elementlosen Netzangriff, um die Ausweichrate eines Gegners drastisch zu debuffen.";
      
      public static var WormScaly:String = "Macht alle Verbündeten Nass, auch die in Reserve, was sie vor Feuerschaden beschützt.";
      
      public static var WormFuzzy:String = "Verwendet einen schwachen, elementlosen Bissangriff, der dem Ziel einen tödlichen Virus gibt.";
      
      public static var WormCutie:String = "Heilt die neutralen Statuseffekte aller Verbündeten, inklusive: Nass, Unterkühlt, Trocken, Schwer, Leicht, Verzaubert und Unsichtbar.";
      
      public static var WraithIce:String = "Geht einem Gegner mit einem Eisangriff direkt ans Herz, was ihn sofort töten kann.";
      
      public static var WraithFire:String = "Greift einen Gegner mit höllischer Feuermagie an, was ihm den Berserk-Status gibt. \n • Am besten sollte das Ziel gar nicht erst überleben.";
      
      public static var WraithSteel:String = "Beschießt einen Gegner mehrfach mit Bombenangriffen, die ihn ins Wanken bringen und seine Verteidigung debuffen können.";
      
      public static var WraithLeaf:String = "Verpasst einem Gegner mehrere Bioangriffe, die ihn vergiften und seine Magieabwehr debuffen.";
      
      public static var WraithMaster:String = "Verwendet Schattenmagie gegen einen einzelnen Gegner, die ihn vollkommen verstummen lässt.";
      
      public static var Glitch2:String = "???-?eII ITEM NICHT GEFUNDEN! ### \nFEHLER: 0x000002";
      
      public static var Glitch1:String = "??-//WARNUNG: GARANTIE ##RECHTSUNWIRKSAM## FALLS SIEGEL ##GEBROCHEN##!! 0?-//??";
      
      public static var GloopStone:String = "Macht einen Gegner unsichtbar, wodurch er doppelten magischen Schaden nimmt.";
      
      public static var GloopCrystal:String = "Verzaubert einen Gegner, wodurch er doppelten physischen Schaden nimmt.";
      
      public static var GloopAsh:String = "Gibt allen Verbündeten Mut, auch denen in Reserve, wodurch sie mehr Glück bei kritischen Treffern haben.";
      
      public static var GloopWood:String = "Gibt allen Verbündeten Moral, auch denen in Reserve, wodurch sie nicht einfach mit einem Schlag sterben.";
      
      public static var HydraZombie:String = "Tötet alle Gegner sofort, oder (falls das nicht klappt) fügt ihnen physischen Schattenschaden zu.";
      
      public static var HydraMagma:String = "Erschlägt alle Gegner mit mächtiger Feuermagie, die sie auch verbrennt.";
      
      public static var HydraIce:String = "Beißt einen Gegner ein paar mal für unglaublichen physischen Eisschaden.";
      
      public static var DragonEarth:String = "Debufft die Magieabwehr aller Gegner, und spuckt dann höchst tödliche Säure, die ihnen magischen Bioschaden zufügt.";
      
      public static var DragonSky:String = "Debufft die Abwehr aller Gegner, und greift dann mit einem Wirbelsturm aus Federn an, der ihnen physischen Windschaden zufügt.";
      
      public static var DragonSea:String = "Debufft die Angriffskraft aller Gegner, und beschießt sie dann mit massivem magischem Wasserschaden, der sie auch Nass macht.";
      
      public static var DragonOmega:String = "Debufft den Magieangriff aller Gegner, und plättet sie dann mit riesigem magischem Lichtschaden, der sie auch betäuben kann.";
      
      public static var BatBlood:String = "Entzieht einem Ziel mit einem einfachen Bioangriff Leben und gibt es dem beschwörenden Spieler.";
      
      public static var BatSnow:String = "Kühlt alle Verbündeten, auch die in Reserve, was sie vor Bioschaden beschützt.";
      
      public static var BatThunder:String = "Verwirrt alle aktiven Verbündeten für viele Runden, startet also im Grunde einen Auto-Kampf-Modus.  \n • Sollte man nicht bei einem Boss probieren.";
      
      public static var BatBone:String = "Gibt allen Verbündeten einen Virus, sogar, wenn sie dagegen immun sind.";
      
      public static var BearBrown:String = "Zerfleischt einen Gegner mit elementlosen Angriffen. Macht signifikant mehr Schaden, wenn der Beschwörer verletzt ist, und wenn Gruppenmitglieder tot sind. \n • Die maximale Stärke ist 1000.";
      
      public static var BearGrolar:String = "Begräbt alle Gegner unter einer Lawine von Eisangriffen, die sie auch einfrieren können.";
      
      public static var BearPanda:String = "Sticht alle Gegner mit einer Reihe Bioangriffe, die sie auch vergiften können.";
      
      public static var BitIce:String = "Wirkt einen Barrierezauber, der die Magieabwehr aller Verbündeten bufft, auch in Reserve.";
      
      public static var BitThunder:String = "Wirkt einen Schutzzauber, der die Abwehr aller Verbündeten bufft, auch in Reserve. ";
      
      public static var BitHoly:String = "Wirkt einen mächtigen Heilzauber, der alle Verbündeten heilt.";
      
      public static var BitFire:String = "Fällt einen Gegner mit einem Feuerangriff an, der seine Abwehr debufft und ihn verbrennen kann.";
      
      public static var BitWind:String = "Fällt einen Gegner mit einem Windangriff an, der seine Magieabwehr debufft und ihn betäuben kann.";
      
      public static var BitWater:String = "Bespritzt alle Gegner mit schwacher Wassermagie, die sie Nass macht, um Eis- und Blitz-Combos vorzubereiten.";
      
      public static var BitPoison:String = "Vergiftet alle Gegner mit schwacher Biomagie, wodurch sie jede Runde etwas Schaden nehmen.";
      
      public static var BoulderCoral:String = "Springt ein Ziel mit einem Wasserangriff an, der es ins Wanken bringt.";
      
      public static var BoulderMarble:String = "Greift alle Gegner mit Windmagie an, die sie total verstummen lässt.";
      
      public static var BoulderObsidian:String = "Greift alle Gegner mit einem D20 an, der sehr zufälligen magischen Feuerschaden macht und sie verbrennt.";
      
      public static var BoulderDirt:String = "Verpasst allen Gegnern physischen Erdschaden, nach dem sie sich Gerädert fühlen.";
      
      public static var BoulderSandstone:String = "Springt ein einzelnes Ziel an und macht massiven physischen Erdschaden.";
      
      public static var CatNinja:String = "Gibt einem Verbündeten einen Extra Zug.";
      
      public static var CatSniper:String = "Schießt einem Gegner ins Gesicht, was ihn mit etwas Glück sofort tötet.";
      
      public static var CatWizard:String = "Wirkt einen einfachen Heilzauber, der einen Verbündeten heilt.";
      
      public static var CatBomber:String = "Wirft eine Bombe auf einen Gegner, die Magieschaden macht und ihn ins Wanken bringt.";
      
      public static var CatWarrior:String = "Verpasst einem Gegner eine Reihe elementloser Hiebe.";
      
      public static var DollMatt:String = "Bufft die Angriffskraft eines Verbündeten kräftig, und segnet ihn.";
      
      public static var DollNatalie:String = "Bufft den Magieangriff eines Verbündeten kräftig, und gibt ihm Moral.";
      
      public static var DollLance:String = "Beschießt alle Gegner mit starker Bombenmagie, die sie ins Wanken bringen kann.";
      
      public static var DollAnna:String = "Feuert einen durchdringenden Biopfeil ab, der mehr Schaden macht, wenn die Abwehr oder Magieabwehr des Ziels gebufft ist oder es verteidigt.";
      
      public static var DollNoLegs:String = "Miaut die Gegner gespenstisch an, was ihre Ausweichrate debufft und ihnen Pech gibt.";
      
      public static var BossCyclopsDesert:String = "Fügt allen Gegnern mit mehreren Treffern massiven magischen Bombenschaden zu, der sie auch betäuben kann.";
      
      public static var BossCyclopsGlacial:String = "Verprügelt einen Gegner mehrfach mit mächtigen Eisangriffen, wobei die anderen 1/3 des Schadens nehmen. \n • Alle Gegner können dabei eingefroren werden. ";
      
      public static var BossCyclopsInfernal:String = "Erschlägt einen Gegner mehrfach mit mächtigen Feuerangriffen, wobei die anderen 1/3 des Schadens nehmen. \n • Alle Gegner können dabei verbrannt werden. ";
      
      public static var BossGolemWater:String = "Verpasst allen Gegnern unglaublich mächtige Wasserangriffe, die sie auch Nass machen können.";
      
      public static var BossGolemFire:String = "Macht alle Gegner mit unglaublich mächtigen Feuerangriffen fertig, wobei jegliche Überlebende verbrannt werden.";
      
      public static var BossNestCat:String = "Bufft den Magieangriff aller Verbündeten, auch in Reserve, und zerschmettert dann alle Gegner mit einer Salve Bioangriffe. ";
      
      public static var BossNestNinja:String = "Trifft alle Gegner mit unglaublich mächtiger Schattenmagie, die sie verflucht.";
      
      public static var EvilMatt:String = "Zerquetscht alle Gegner, einen nach dem anderen, mit unglaublich mächtigen Erdangriffen." + HIGH_CRITS;
      
      public static var EvilNatalie:String = "Zerstört alle Gegner, einen nach dem anderen, mit unglaublich mächtiger Lichtmagie." + HIGH_CRITS;
      
      public static var EvilLance:String = "Zersprengt alle Gegner, einen nach dem anderen, mit unglaublich mächtiger Bombenmagie." + HIGH_CRITS;
      
      public static var EvilAnna:String = "Zerschneidet alle Gegner, einen nach dem anderen, mit unglaublich mächtigen Windangriffen." + HIGH_CRITS;
      
      public static var EvilNoLegs:String = "Verwendet die stärkste Magie im Universum, und atomisiert alle Gegner mit wahnsinnigem elementlosem Schaden.";
      
      public static var WraithOrigami:String = "Greift die Gegner mit einer schreddernden nicht elementaren attacke an, welche sie entzaubert.";
      
      public static var GloopFab:String = "Ersetzt das Wetter für 5 Runden durch Kirschblüten.";
      
      public static var CatSkeleton:String = "Greift einen Gegner hinterlistig an, fügt ihnen massiven physischen Schattenschaden zu und gibt ihnen die maximale Dosis des Pech-Effekts.";
      
      public static var HydraOrigami:String = "Trifft alle Gegner mit einer nicht elementaren physischen Attacke, und bufft den Ausweichswert alle Verbündeten, auch die in Reserve.";
      
      public static var Defender3:String = "Vernichtet alle Gegner mit einer Stoßwelle, fügt den Gegner physischen Schattenschaden zu . \n • Landet immer einen kritischen treffer.";
      
      public static var BearBlack:String = "Zerfetzt einen Gegner, teilt physischen Feuerschaden aus, und gibt ihnen die maximale Dosis des Brennend Effekts.";
      
      public static var GolemBone:String = "Spießt alle gegner mit einer starken nicht elementarten physischen attacke auf, und schwächt sie vielleicht.";
      
      public static var WormBook:String = "Bufft die Genauigkeit aller verbündeten.";
      
      public static var BossGigalith:String = "Vernichtet alle Gegner mit einem starken nicht elementaren Angriff, und verkokelt sie stark, was ihre HP über Zeit verringert.";
      
      public static var BossDevourer:String = "Löscht die aktuelle Simulation.";
      
      public static var SketchPapalotl:String = "Durchsticht alle Gegner und teilt ihnen massiven nicht elemantaren physischen schaden aus, welcher positive buffs komplett ignoriert. (aber nicht Debuffs)";
      
      public static var SketchGuncat:String = "Vernichtet alle gegner mit massivem Bombenschaden, welcher halb physisch, und magisch ist. Ignoriert außerdem positive Buffs. (aber nicht debuffs)";
      
      public static var SketchXolotl:String = "Trifft alle Gegner mit nicht elementarem physischen Schaden, welcher alle Gegner schwächt, und ihre positiven Buffs ignoriert. (but not debuffs)";
      
      public static var SketchGlaurung:String = "Teilt allen gegner magischen Windschaden aus, entzaubert sie, und ignoriert deren positive Buffs. (Aber nicht debuffs)";
      
      public static var ArcadeGuoye:String = "Bufft die Genauigkeit aller noch lebenden Verbündeten massiv.";
      
      public static var ArcadeTotom:String = "Heilt alle noch lebenden Verbündeten voll, und entfernt alle negativen Buffs sowie Statuseffekte.";
      
      public static var ArcadeChair:String = "Senkt stark den magischen Angriff der Gegner, und fügt ihnen noch ein bisschen Bombenschaden zu";
      
      public static var ArcadePumpkus:String = "Normalerweise macht es nichts, aber wenn du es mehrere male in einem Zug verwendest wird es wütend. Es wird zufälligen Gegnern massiven Schaden zufügen.";
      
      public static var ArcadeGlob:String = "Entfesselt seinen schlechten Mundgeruch an die Gegner, was sie entzaubert, ihnen erschöpft, verflucht, geschwächt, Pech, und vernebelt gibt - in der Reihenfolge. Fügt ihnen auch ein bisschen nicht elementaren magischen Schaden zu.";
      
      public static var ArcadeSnek:String = "Beißt einen einzigen Gegner, und fügt ihnen physischen nicht elementaren Schaden zu, und gibt ihnen die Maximale Dosis an Brand und Gift.";
      
      public static var ArcadeRobo:String = "Trifft einen einzigen Gegner mit magischem Blitzschaden, betäubt sie, und debufft ihre Genauigkeit stark.";
      
      public static var ArcadeBosh:String = "Debufft den Angriffswert aller Gegner.";
      
      public static var ArcadeTreagure:String = "Teilt Schaden mit zufälligem Element an zufällige Gegner aus, und gibt ihnen einen zufälligen Statuseffekt. \n • Darunter sind: Eingefroren, verkokelt, betäubt, stumm, taumeln, verderben, und Pech.";
      
      public static var ArcadePhoenix:String = "Belebt alle verbündeten Spieler , oder gibt ihnen Auto-Wiederbeleben wenn sie schon am Leben sind.";
      
      public static var ArcadeMermaid:String = "Bufft massiv den Ausweichswert aller Verbündeten, auch denen in Reserve.";
      
      public static var ArcadeMaw:String = "Infiziert alle Gegner mit einem tödlichen Virus, und fügt ihnen ein bisschen magischen Bioschaden zu.";
      
      public static var ClassicSlime:String = "Verwendet eine erbärmlich schwache, non-elementare Attacke gegen einen Gegner.";
      
      public static var ClassicSlimeKing:String = "Wirkt einen starken Heilungszauber, welcher alle Verbündeten heilt, auch die in Reserve. \n • Entfernt auch negative Statuseffekte.";
      
      public static var ClassicTree:String = "Teilt ein bisschen Bioschaden auf, und betäubt sie vielleicht ein bisschen.";
      
      public static var ClassicEyeball:String = "Trifft nur alle gegner mit einer nicht elementarten magischen Attacke.";
      
      public static var ClassicBeholder:String = "Wickelt seine Tentakel um ein unglückliches Opfer, teilt dabei Bioschaden aus, und vergiftet es stark.";
      
      public static var ClassicWaspRed:String = "Debufft den magischen Schaden eines einzigen Opfers drastisch.";
      
      public static var ClassicWaspBlack:String = "Debufft den Angriff eines einzigen Opfers drastisch.";
      
      public static var ClassicSandworm:String = "Übergebt sich gewaltig über alle Gegner, teilt dabei magischen Bio-Schaden auf, und debufft deren Angriff, magischen Angriff, Verteidigung, magische Verteidigung.";
      
      public static var ClassicEaterIce:String = "Magischer Eisatem trifft alle Gegner. Ist nicht sehr stark, aber hat eine große Chance, das Ziel einzufrieren.";
      
      public static var ClassicEaterFire:String = "Magischer Feueratem trifft alle Gegner, und trocknet sie.";
      
      public static var ClassicClayBlue:String = "Wirkt einen Windzauber gegen einen einzelnen Gegner, und gibt ihm die maximale Dosis des Leicht-Statuseffekts.";
      
      public static var ClassicClayRed:String = "Trifft ein einziges Ziel mit physischem Erdschaden, und gibt ihm die maximale Dosis des Schwer-Statuseffekts.";
      
      public static var ClassicClayDark:String = "Wirkt einen Schattenzauber gegen ein einzelnes Ziel, gibt ihm den Verderben Status, und debufft seinen Angriff, magischen Angriff, Verteidigung, und magische Verteidigung.";
      
      public static var ClassicClayLight:String = "Wirkt einen Fortgeschrittenen Heilungszauber, welcher alle Verbündeten heilt, auch die in Reserve.";
      
      public static var ClassicProtector:String = "Vernichtet alle Gegner mit einem mächtigen Blitzstrahl. Jeder, der diesen Angriff überlebt, ist für mehrere Runden betäubt.";
      
      public static var ClassicSlingerGun:String = "Versucht ein einziges Ziel mit einem Starken Bombenangriff zu treffen.\n • Hat immer eine 50% Chance zu treffen.\n • Ignoriert den Ausweichswert des Ziels, und defensive Buffs.";
      
      public static var ClassicSlingerSword:String = "Versucht ein einziges Ziel mit einer nicht elementaren Attacke zu treffen.\n • Hat immer eine 50% Chance zu treffen.\n • Ignoriert den Ausweichswert des Ziels, und defensive Buffs.";
      
      public static var ClassicPraetorian:String = "Gibt den Verteidigung-Effekt allen lebenden Verbündeten. Danach greift es alle Gegner mit einer non-elementaren Attacke an, welche sie vielleicht sofort tötet, und ignoriert ihre positiven Buffs. (aber nicht Debuffs) ";
      
      public static var ClassicCrystalRed:String = "Vernichtet einen einzigen Gegner mit magischen Feuerschaden, und versengt es.";
      
      public static var ClassicCrystalBlue:String = "Macht nicht viel, aber hat eine sehr große Chance, das Ziel für viele Züge zu einfrieren.";
      
      public static var ClassicGigaGolem:String = "Greift einen Gegner an mit massiven physischen Attacke, die entweder Feuer- oder Eis-elementar ist - es ist zufällig!";
      
      public static var ClassicRafflesia:String = "Richtet massiven physischen Bio-Schaden an alle Gegner an.";
      
      public static var ClassicJack:String = "Bufft massiv den Angriffswert und magischen Angriffswert aller Verbündeten, auch die in Reserve.";
      
      public static var arcadePoison:String = "Giftblase";
      
      public static var arcadeNettle:String = "Efeugriff";
      
      public static var arcadeTeeth:String = "Scharfe Zähne";
      
      public static var bonePillar:String = "Knochenstachel";
      
      public static var hellfire:String = "Höllenfeuer";
      
      public static var pixelswords:String = "Schwertsturm";
      
      public static var pixelfork:String = "Gabel-Raserei";
      
      public static var paperSword:String = "Origamiklinge";
      
      public static var paperStars:String = "Papiersturm";
      
      public static var swordswirl:String = "Säbelwirbel";
      
      public static var iceneedle:String = "Eisnadeln";
      
      public static var thunderblast:String = "Elektrischer Schlag";
      
      public static var snowblast:String = "Frierende Vernichtung";
      
      public static var arcadeFlood:String = "Wasserfall";
      
      public static var ritual:String = "Dämonisches Ritual";
      
      public static var highgravity:String = "Hohe Schwerkraft";
      
      public static var lowgravity:String = "Niedrige Schwerkraft";
      
      public static var snow:String = "Schneesturm";
      
      public static var earthquake:String = "Erdbeben";
      
      public static var blossom:String = "Kirschblüten";
      
      public static var electrongun:Object = {
         "name":"Elektronenstrahl",
         "desc":"Blitzmagie, das ein einzelnes Ziel betäubt." + COOLDOWN_6
      };
      
      public static var sharpen:Object = {
         "name":"Schärfen",
         "desc":"Verlängert die Dauer der derzeitigen negativen Statuseffekte aller Gegner. Oder, es kann auf alle Verbündete eingesetzt werden, um alle positiven Statuseffekte zu erweitern, auch die in Backup. Es hat keinen Effekt auf Verteidigen oder den Schnell-Status." + COOLDOWN_6
      };
      
      public static var sand:Object = {
         "name":"Sand",
         "desc":"Fortgeschrittener Erdangriff gegen ein einzelnes Ziel." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var sanddune:Object = {
         "name":"Sanddüne",
         "desc":"Mächtiger Erdangriff gegen ein einzelnes Ziel." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var acid3:Object = {
         "name":"Säure",
         "desc":"Fortgeschrittene Biomagie gegen ein einzelnes Ziel." + equips.DEBUFF_MDEF
      };
      
      public static var acid2:Object = {
         "name":"Säureexplosion",
         "desc":"Mächtige Biomagie gegen alle Gegner." + ALTERNATIVE_ONE + equips.DEBUFF_MDEF
      };
      
      public static var bubblering:Object = {
         "name":"Blasenring",
         "desc":"Wasserangriff, das ein einzelnes Ziel verstummt. \n • Schaden hängt vom höheren Attribut ab."
      };
      
      public static var musicalblast:Object = {
         "name":"Phyrnna\'s Segen",
         "desc":"Bufft den magischen Angriffswert aller Verbündeten, auch die in Backup, und gibt ihnen Regeneration. " + COOLDOWN_11
      };
      
      public static var geometry:Object = {
         "name":"Geometrie",
         "desc":"Mächtige elementlose Fähigkeit gegen ein einzelnes Ziel. \n • Schaden hängt vom höheren Attribut ab." + HIGH_ACC + HIGH_CRITS + COOLDOWN_3
      };
      
      public static var fairy2:Object = {
         "name":"Feenbombe",
         "desc":"Starke Lichtmagie, welche jeden Gegner attackiert. " + HIGH_ACC + COOLDOWN_2
      };
      
      public static var death:Object = {
         "name":"Der Sensenmann",
         "desc":"Schattenangriff der ein einzelnes Ziel tötet. " + LOW_ACC + COOLDOWN_6
      };
      
      public static var retroswords:Object = {
         "name":"Dämonenschwert",
         "desc":"Mächtiger Schattenangriff gegen alle Gegner." + ALTERNATIVE_ONE + COOLDOWN_2
      };
      
      public static var artattack:Object = {
         "name":"Art Attack",
         "desc":LIMIT_BREAK + "Heilt alle Verbündeten und entfernt deren Statuseffekte, und bufft deren HP, Genauigkeit und Ausweichen. \n • funktioniert auch bei Verbündeten in Reserve."
      };
      
      public static var sevenswords:Object = {
         "name":"Seven Swords",
         "desc":LIMIT_BREAK + "Deals massive physical holy damage to all foes." + HIGH_ACC
      };
      
      public function skills()
      {
         super();
      }
   }
}

