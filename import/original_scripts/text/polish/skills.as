package text.polish
{
   public class skills
   {
      public static var WEP_EFFECTS:String = "\n • Żywioł i efekty zależą od aktualnej broni.";
      
      public static var WEP_EFFECTS_2:String = "\n • Efekty broni są silniejsze niż zazwyczaj.";
      
      public static var LOW_ACC:String = "\n • Niska celność.";
      
      public static var HIGH_ACC:String = "\n • Wysoka celność.";
      
      public static var HIGH_ACC_2:String = "\n • Bardzo wysoka celność.";
      
      public static var HIGH_CRITS:String = "\n • Wysoka szansa na trafienia krytyczne.";
      
      public static var RETARGETS:String = "\n • Uderza kolejnego wroga jeżeli cel zostanie zabity.";
      
      public static var RETARGETS_2:String = "\n • Wybiera nowy cel jeżeli pierwotny umrze.";
      
      public static var LIMIT_BREAK:String = "Limit! ";
      
      public static var ALTERNATIVE_ALL:String = " Alternatywnie może zadać wyrównane obrażenia wszystkim wrogom. ";
      
      public static var ALTERNATIVE_ONE:String = " Można także skupić na pojedynczym celu dla większych obrażeń.";
      
      public static var MAY_SURRENDER:String = " Może skłonić wrogów do kapitulacji, nawet tych potężnych. ";
      
      public static var SWORD_DANCE:String = " Uderza pojedynczy cel 3 razy, przenosząc się na kolejnego wroga po śmierci celu.";
      
      public static var EXTRA_HITS:String = " Zyskuje dodatkowe uderzenie za każdego zabitego wroga.";
      
      public static var DISPEL_ALL:String = " Rozprasza wszystkich wrogów, usuwając ich premie i pozytywne efekty.";
      
      public static var HITS_RANDOM_FOES:String = " Posyła tyle strzał ilu jest wrogów, ale trafiają one w losowe cele.";
      
      public static var COOLDOWN_2:String = "\n • Czas odnowienia wynosi 1 turę. ";
      
      public static var COOLDOWN_3:String = "\n • Czas odnowienia wynosi 2 tury. ";
      
      public static var COOLDOWN_4:String = "\n • Czas odnowienia wynosi 3 tury. ";
      
      public static var COOLDOWN_6:String = "\n • Czas odnowienia wynosi 5 tur. ";
      
      public static var COOLDOWN_11:String = "\n • Czas odnowienia wynosi 10 tur. ";
      
      public static var defend:Object = {
         "name":"Blok",
         "desc":"Redukuje wszystkie otrzymywane obrażenia o 50% na jedną turę. Niektóre sprzęty zapewniają dodatkowe działania."
      };
      
      public static var swap:Object = {
         "name":"Zmień Postać",
         "desc":"Wybierz inną postać, którą chcesz użyć. Ta akcja nie zużywa tury."
      };
      
      public static var flee:Object = {
         "name":"Ucieczka",
         "desc":"Ucieknij z tej walki. Nie ma za to żadnej kary."
      };
      
      public static var skip:Object = {
         "name":"Pomiń Turę",
         "desc":"Pomiń turę tej postaci, nie robiąc nic."
      };
      
      public static var scan:Object = {
         "name":"Zeskanuj Wrogów",
         "desc":"Zeskanuj wszystkich wrogów na polu walki, ujawniając ich słabości. Te dane są przechowywane w bestiariuszu."
      };
      
      public static var capture:Object = {
         "name":"Schwytaj Wroga",
         "desc":"Spróbuj schwytać wroga. Rannych wrogów z negatywnymi efektami łatwiej schwytać. Niektórych wrogów nie da się schwytać."
      };
      
      public static var bring1:Object = {
         "name":"Wprowadź Matta",
         "desc":"Przenieś postać do rezerwy i wprowadź Matta. Ta akcja nie zużywa tury."
      };
      
      public static var bring2:Object = {
         "name":"Wprowadź Natalie",
         "desc":"Przenieś postać do rezerwy i wprowadź Natalie. Ta akcja nie zużywa tury."
      };
      
      public static var bring3:Object = {
         "name":"Wprowadź Lance’a",
         "desc":"Przenieś postać do rezerwy i wprowadź Lance’a. Ta akcja nie zużywa tury."
      };
      
      public static var bring4:Object = {
         "name":"Wprowadź Annę",
         "desc":"Przenieś postać do rezerwy i wprowadź Annę. Ta akcja nie zużywa tury."
      };
      
      public static var bring5:Object = {
         "name":"Wprowadź BezŁapa",
         "desc":"Przenieś postać do rezerwy i wprowadź BezŁapa. Ta akcja nie zużywa tury."
      };
      
      public static var swordslash:Object = {
         "name":"Zwykły Atak",
         "desc":"Walnij cel podstawowym atakiem mieczem." + WEP_EFFECTS
      };
      
      public static var earthedge:Object = {
         "name":"Wstrząs",
         "desc":"Podstawowy ziemny atak, który uderza pojedynczy cel."
      };
      
      public static var quakespikes:Object = {
         "name":"Zatrzęsienie",
         "desc":"Zaawansowany ziemny atak, który uderza pojedynczy cel."
      };
      
      public static var cataclysmiccut:Object = {
         "name":"Kataklizm",
         "desc":"Bardzo potężny ziemny atak, który uderza pojedynczy cel." + HIGH_CRITS
      };
      
      public static var geysergush:Object = {
         "name":"Gejzer",
         "desc":"Podstawowy wodny atak, który uderza pojedynczy cel." + equips.MAY_WET
      };
      
      public static var pouringpike:Object = {
         "name":"Strumień",
         "desc":"Zaawansowany wodny atak, który uderza pojedynczy cel." + equips.MAY_WET
      };
      
      public static var surgingskewer:Object = {
         "name":"Tajfun",
         "desc":"Potężny wodny atak, który uderza pojedynczy cel." + equips.MAY_WET + HIGH_CRITS
      };
      
      public static var frostfragment:Object = {
         "name":"Tundra",
         "desc":"Zaawansowany lodowy atak, który uderza pojedynczy cel." + equips.MAY_CHILL
      };
      
      public static var glacialglaive:Object = {
         "name":"Lodowiec",
         "desc":"Potężny lodowy atak, który uderza pojedynczy cel." + equips.MAY_CHILL
      };
      
      public static var firespire:Object = {
         "name":"Magma",
         "desc":"Zaawansowany ognisty atak, który uderza pojedynczy cel." + equips.MAY_DRY
      };
      
      public static var lavalance:Object = {
         "name":"Erupcja",
         "desc":"Potężny ognisty atak, który uderza pojedynczy cel." + equips.MAY_DRY
      };
      
      public static var nettleknife:Object = {
         "name":"Pokrzywa",
         "desc":"Podstawowy bio atak, który uderza pojedynczy cel." + equips.MAY_POISON
      };
      
      public static var shreddingshrub:Object = {
         "name":"Zarośla",
         "desc":"Potężny bio atak, który uderza pojedynczy cel dwukrotnie." + equips.MAY_POISON
      };
      
      public static var slicingcyclone:Object = {
         "name":"Tnący Cyklon",
         "desc":"Potężny atak, który uderza wszystkich przeciwników wielokrotnie." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var stealitem:Object = {
         "name":"Kradzież",
         "desc":"Kradnie losowy przedmiot pojedynczemu celowi. Lepsze przedmioty mogą zostać skradzione na wyższych poziomach zdolności." + LOW_ACC
      };
      
      public static var legend:Object = {
         "name":"Legenda",
         "desc":"Bardzo potężny atak, który uderza pojedynczy cel wielokrotnie." + WEP_EFFECTS + COOLDOWN_3
      };
      
      public static var lightblade:Object = {
         "name":"Ostrze Światła",
         "desc":"Zaawansowany święty atak, który uderza pojedynczy cel."
      };
      
      public static var holysword:Object = {
         "name":"Seiken",
         "desc":"Potężny święty atak, który uderza pojedynczy cel." + equips.MAY_DISPEL
      };
      
      public static var unleash:Object = {
         "name":"Wyzwolenie",
         "desc":"Atak, który wyzwala ukryty potencjał twojej broni." + WEP_EFFECTS + WEP_EFFECTS_2
      };
      
      public static var quickslash:Object = {
         "name":"Szybkie Cięcie",
         "desc":"Bardzo celny atak, który uderza pojedynczy cel." + WEP_EFFECTS
      };
      
      public static var temper:Object = {
         "name":"Hartowanie",
         "desc":"Zapewnia sojusznikowi premię do ataku oraz efekt odwagi. " + COOLDOWN_2
      };
      
      public static var revenge:Object = {
         "name":"Zemsta",
         "desc":"Potencjalnie niszczycielski atak, który uderza pojedynczy cel. Posiada tym większą moc, im Matt ma mniej PŻ i żywych sojuszników. Podana poniżej moc to maksymalna możliwa." + WEP_EFFECTS
      };
      
      public static var cleaver:Object = {
         "name":"Rozpłatanie",
         "desc":LIMIT_BREAK + "W kilku cięciach zadaje niewiarygodne fizyczne obrażenia pojedynczemu celowi." + WEP_EFFECTS + RETARGETS + HIGH_ACC + HIGH_CRITS
      };
      
      public static var ragnarok:Object = {
         "name":"Ragnarok",
         "desc":LIMIT_BREAK + "Uderza wszystkich wrogów przytłaczającymi bez-żywiołowymi obrażeniami fizycznymi, a następnie zapewnia wszystkim sojusznikom, uwzględniając tych w rezerwie, premię do ataku oraz efekt odwagi." + HIGH_ACC
      };
      
      public static var staffstrike:Object = {
         "name":"Zwykły Atak",
         "desc":"Walnij cel podstawowym atakiem fizycznym, który wyzwala magiczną moc twojej broni." + WEP_EFFECTS
      };
      
      public static var blessedbunny:Object = {
         "name":"Oczyszczenie",
         "desc":"Usuwa redukcje i negatywne efekty sojusznika oraz nakłada na niego efekt błogosławieństwa."
      };
      
      public static var luckystar:Object = {
         "name":"Szczęśliwa Gwiazda",
         "desc":"Podstawowe bez-żywiołowe zaklęcie, które zadaje bardzo losowe obrażenia pojedynczemu celowi." + HIGH_CRITS
      };
      
      public static var starshower:Object = {
         "name":"Deszcz Gwiazd",
         "desc":"Potężne bez-żywiołowe zaklęcie, które uderza wszystkich wrogów i zadaje bardzo losowe obrażenia." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var starpower:Object = {
         "name":"Gwiezdna Moc",
         "desc":"Zapewnia sojusznikowi premię do ataku magicznego oraz efekt farta." + COOLDOWN_2
      };
      
      public static var intoxicate:Object = {
         "name":"Toksyny",
         "desc":"Proste zaklęcie bio, które silnie zatruwa pojedynczy cel."
      };
      
      public static var fireball:Object = {
         "name":"Ogień",
         "desc":"Podstawowe ogniste zaklęcie, które uderza pojedynczy cel." + equips.MAY_BURN
      };
      
      public static var fireblast:Object = {
         "name":"Ognista Kula",
         "desc":"Zaawansowane ogniste zaklęcie, które uderza pojedynczy cel." + equips.MAY_BURN
      };
      
      public static var firestorm:Object = {
         "name":"Ognista Burza",
         "desc":"Potężne ogniste zaklęcie, które uderza wszystkich przeciwników." + ALTERNATIVE_ONE + equips.MAY_BURN
      };
      
      public static var thunderbolt:Object = {
         "name":"Grom",
         "desc":"Podstawowe gromowe zaklęcie, które uderza pojedynczy cel." + equips.MAY_STUN
      };
      
      public static var thundershock:Object = {
         "name":"Piorun",
         "desc":"Zaawansowane gromowe zaklęcie, które uderza pojedynczy cel." + equips.MAY_STUN
      };
      
      public static var thunderstorm:Object = {
         "name":"Burza Piorunów",
         "desc":"Potężne gromowe zaklęcie, które uderza wszystkich przeciwników." + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var iceshard:Object = {
         "name":"Lód",
         "desc":"Podstawowe lodowe zaklęcie, które uderza pojedynczy cel." + equips.MAY_FREEZE
      };
      
      public static var iceshatter:Object = {
         "name":"Lodowe Odłamki",
         "desc":"Zaawansowane lodowe zaklęcie, które uderza pojedynczy cel." + equips.MAY_FREEZE
      };
      
      public static var icestorm:Object = {
         "name":"Burza Lodowa",
         "desc":"Potężne lodowe zaklęcie, które uderza wszystkich przeciwników." + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var darkpulse:Object = {
         "name":"Mroczna Sfera",
         "desc":"Zaawansowane mroczne zaklęcie, które uderza pojedynczy cel." + equips.MAY_HEAVY
      };
      
      public static var darkpulsar:Object = {
         "name":"Pulsar",
         "desc":"Bardzo potężne mroczne zaklęcie, które uderza wszystkich przeciwników." + equips.MAY_HEAVY + COOLDOWN_3
      };
      
      public static var spectralflash:Object = {
         "name":"Spektrum",
         "desc":"Zaawansowane zaklęcie, które uderza pojedynczy cel." + WEP_EFFECTS
      };
      
      public static var rainbowblast:Object = {
         "name":"Tęczowy Podmuch",
         "desc":"Potężne zaklęcie, które uderza wszystkich przeciwników." + ALTERNATIVE_ONE + WEP_EFFECTS
      };
      
      public static var holylight:Object = {
         "name":"Święta Światłość",
         "desc":"Zaawansowane święte zaklęcie, które uderza pojedynczy cel." + equips.MAY_WEAKEN
      };
      
      public static var divinejudgement:Object = {
         "name":"Osąd",
         "desc":"Bardzo potężne święte zaklęcie, które uderza pojedynczy cel i wysysa jego PŻ." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var syphon:Object = {
         "name":"Wytłumienie",
         "desc":"Wycisza pojedynczego wroga, czyniąc go niezdolnym do używania większości magicznych ataków." + COOLDOWN_3
      };
      
      public static var syphon2:Object = {
         "name":"Wyciszenie",
         "desc":"Wycisza wszystkich wrogów, czyniąc ich niezdolnymi do używania większości magicznych ataków. Może zostać wymierzone w pojedynczego wroga dla potężniejszego efektu." + COOLDOWN_3
      };
      
      public static var genesis:Object = {
         "name":"Genesis",
         "desc":LIMIT_BREAK + "Zadaje przytłaczające święte obrażenia wszystkim przeciwnikom oraz wskrzesza lub zapewnia efekt anioła stróża wszystkim sojusznikom. \n • Działa też na sojuszników w rezerwie." + HIGH_ACC
      };
      
      public static var kyun:Object = {
         "name":"Siódme Niebo",
         "desc":LIMIT_BREAK + "Uzdrawia PŻ i negatywne efekty wszystkich sojuszników oraz zapewnia im premie do ataku, ataku magicznego, obrony i obrony magicznej. \n • Działa też na sojuszników w rezerwie. \n • Zapewnia Natalie efekt słodkości."
      };
      
      public static var pistolwhip:Object = {
         "name":"Zwykły Atak",
         "desc":"Walnij cel dwukrotnie podstawowym atakiem wręcz." + WEP_EFFECTS
      };
      
      public static var snipe:Object = {
         "name":"Strzał Snajperski",
         "desc":"Strzel w pojedynczy cel atakiem o bardzo zwiększonej celności." + WEP_EFFECTS + HIGH_CRITS + COOLDOWN_2
      };
      
      public static var doubleshot:Object = {
         "name":"Podwójny Strzał",
         "desc":"Strzał, który uderza pojedynczy cel dwukrotnie." + WEP_EFFECTS + WEP_EFFECTS_2 + RETARGETS
      };
      
      public static var unload:Object = {
         "name":"Wyładowanie",
         "desc":"Bardzo potężny strzał, który uderza cel sześciokrotnie." + WEP_EFFECTS + RETARGETS + HIGH_CRITS + COOLDOWN_6
      };
      
      public static var flameshot:Object = {
         "name":"Płomienny Pocisk",
         "desc":"Podstawowy ognisty strzał, który uderza pojedynczego wroga." + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var flameburst:Object = {
         "name":"Płomienna Seria",
         "desc":"Zaawansowany ognisty strzał, który uderza wszystkich przeciwników." + ALTERNATIVE_ONE + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var bullethell:Object = {
         "name":"Piekło Pocisków",
         "desc":"Potężny ognisty strzał, który uderza pojedynczego wroga, a pozostałym zadaje 1/3 obrażeń." + ALTERNATIVE_ALL + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var plasmashot:Object = {
         "name":"Pocisk Plazmowy",
         "desc":"Podstawowy gromowy strzał, który uderza pojedynczego wroga." + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmawave:Object = {
         "name":"Fala Plazowa",
         "desc":"Zaawansowany gromowy strzał, który uderza wszystkich przeciwników." + ALTERNATIVE_ONE + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmafield:Object = {
         "name":"Pole Plazmowe",
         "desc":"Potężny gromowy strzał, który uderza pojedynczego wroga, a pozostałym zadaje 1/3 obrażeń." + ALTERNATIVE_ALL + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var darkshot:Object = {
         "name":"Mroczny Pocisk",
         "desc":"Podstawowy mroczny strzał, który uderza pojedynczego wroga." + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var gravitysurge:Object = {
         "name":"Impuls Grawitacyjny",
         "desc":"Zaawansowany mroczny strzał, który uderza wszystkich przeciwników." + ALTERNATIVE_ONE + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var antimatterflux:Object = {
         "name":"Strumień Antymaterii",
         "desc":"Potężny mroczny strzał, który uderza pojedynczego wroga, a pozostałym zadaje 1/3 obrażeń." + ALTERNATIVE_ALL + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var poisongas:Object = {
         "name":"Trujący Gaz",
         "desc":"Mocno zatruwa wszystkich przeciwników i zadaje trochę magicznych bio obrażeń." + COOLDOWN_4
      };
      
      public static var airstrike1:Object = {
         "name":"Wielka Bomba",
         "desc":"Wysadza pojedynczego wroga za pomocą wysokich wybuchowych magicznych obrażeń." + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike2:Object = {
         "name":"Nalot",
         "desc":"Wysadza wszystkich wrogów za pomocą wysokich wybuchowych magicznych obrażeń." + ALTERNATIVE_ONE + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike3:Object = {
         "name":"M.O.A.B.",
         "desc":"Wysadza wszystkich wrogów za pomocą ogromonych wybuchowych magicznych obrażeń. Odnowienie zajmuje bardzo dużo czasu." + equips.MAY_STAGGER + COOLDOWN_11
      };
      
      public static var medipack1:Object = {
         "name":"Apteczka",
         "desc":"Uzdrawia pojedynczego sojusznika i usuwa wszystkie negatywne efekty jakie posiada. " + COOLDOWN_4
      };
      
      public static var medipack2:Object = {
         "name":"Zrzut Życia",
         "desc":"Uzdrawia wszystkich sojuszników i usuwa wszystkie negatywne efekty jakie posiadają. " + COOLDOWN_4
      };
      
      public static var tankguns:Object = {
         "name":"Karabiny Maszynowe",
         "desc":"Wielokrotnie strzela we wszystkich przeciwników wybuchowymi atakami." + COOLDOWN_2
      };
      
      public static var armorcrush:Object = {
         "name":"Roztrzaskanie Pancerza",
         "desc":"Grzmoci cel atakiem wręcz i rozprasza go." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var hyperbeam:Object = {
         "name":"Hiperpromień",
         "desc":"Użycie zajmuje dwie tury: ładuje przy pierwszym użyciu, strzela przy drugim. Zadaje ogromne magiczne obrażenia wszystkim przeciwnikom." + WEP_EFFECTS
      };
      
      public static var nuke:Object = {
         "name":"Atomówka",
         "desc":LIMIT_BREAK + "Zadaje przytłaczające ogniste magiczne obrażenia wszystkim wrogom oraz powoduje poparzenie wszystkich sojuszników i wrogów." + HIGH_ACC + "\n • Zastępuje bieżącą pogodę promieniowaniem na 5 tur. "
      };
      
      public static var oblivion:Object = {
         "name":"Unicestwienie",
         "desc":LIMIT_BREAK + "Zadaje przytłaczające wybuchowe fizyczne obrażenia wszystkim wrogom. To niszczy czołg Lance’a, ale ma zapasowe." + HIGH_ACC
      };
      
      public static var arrowslash:Object = {
         "name":"Zwykły Atak",
         "desc":"Ciachnij cel podstawowym atakiem wręcz." + WEP_EFFECTS
      };
      
      public static var bowwhack:Object = {
         "name":"Walnięcie Łukiem",
         "desc":"Chlaśnij wroga swoim łukiem sprawiając, aby rozważył kapitulację. Nawet potężni wrogowie się nie oprą." + WEP_EFFECTS + "\n • Ta zdolność nie może zabić."
      };
      
      public static var gust:Object = {
         "name":"Podmuch",
         "desc":"Podstawowe wietrzne zaklęcie, które uderza pojedynczy cel." + equips.MAY_LIGHT
      };
      
      public static var whirlwind:Object = {
         "name":"Trąba Powietrzna",
         "desc":"Zaawansowane wietrzne zaklęcie, które uderza pojedynczy cel." + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var hurricane:Object = {
         "name":"Huragan",
         "desc":"Potężne wietrzne zaklęcie, które uderza wszystkich przeciwników." + ALTERNATIVE_ONE + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var logjab:Object = {
         "name":"Kłoda",
         "desc":"Podstawowy ziemny atak, który uderza pojedynczy cel." + equips.MAY_STAGGER
      };
      
      public static var lumbertrap:Object = {
         "name":"Kłody",
         "desc":"Potężny ziemny atak, który uderza pojedynczy cel wielokrotnie." + equips.MAY_STAGGER
      };
      
      public static var leafblade:Object = {
         "name":"Liściaste Ostrze",
         "desc":"Prosty bio atak, który uderza pojedynczy cel dwukrotnie." + HIGH_CRITS
      };
      
      public static var razorleaf:Object = {
         "name":"Liściasta Brzytwa",
         "desc":"Potężny bio atak, który uderza wszystkich przeciwników wielokrotnie." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var soularrow:Object = {
         "name":"Błogosławiona Strzała",
         "desc":"Zaawansowany święty atak, który uderza pojedynczego wroga." + equips.MAY_WEAKEN
      };
      
      public static var frostarrow:Object = {
         "name":"Mroźna Strzała",
         "desc":"Zaawansowany lodowy atak, który uderza pojedynczego wroga." + equips.MAY_FREEZE
      };
      
      public static var aquaarrow:Object = {
         "name":"Wodna Strzała",
         "desc":"Zaawansowany wodny atak, który uderza pojedynczego wroga." + equips.MAY_WET
      };
      
      public static var nitroarrow:Object = {
         "name":"Wybuchowa Strzała",
         "desc":"Zaawansowany wybuchowy atak, który uderza pojedynczego wroga." + equips.MAY_DISPEL
      };
      
      public static var sparkarrow:Object = {
         "name":"Skrząca Strzała",
         "desc":"Zaawansowany gromowy atak, który uderza pojedynczego wroga." + equips.MAY_STUN
      };
      
      public static var soularrow2:Object = {
         "name":"Błogosławiony Ostrzał",
         "desc":"Potężny święty atak." + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WEAKEN
      };
      
      public static var frostarrow2:Object = {
         "name":"Mroźny Opad",
         "desc":"Potężny lodowy atak." + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var aquaarrow2:Object = {
         "name":"Wodna Salwa",
         "desc":"Potężny wodny atak." + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WET
      };
      
      public static var nitroarrow2:Object = {
         "name":"Wybuchowa Kanonada",
         "desc":"Potężny wybuchowy atak." + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_DISPEL
      };
      
      public static var sparkarrow2:Object = {
         "name":"Skrzący Deszcz",
         "desc":"Potężny gromowy atak." + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var piercingshot:Object = {
         "name":"Penetrujący Strzał",
         "desc":"Zaatakuj strzałą o bardzo wysokiej celności." + equips.IGNORES_BUFFS + HIGH_CRITS + WEP_EFFECTS
      };
      
      public static var comboshot:Object = {
         "name":"Potrójny Strzał",
         "desc":"Zaatakuj potężną i celną serią strzał." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var arrowrain:Object = {
         "name":"Deszcz Strzał",
         "desc":"Zaatakuj salwą strzał, które uderzają wielokrotnie wszystkich przeciwników." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var renew:Object = {
         "name":"Odnowienie",
         "desc":"Proste zaklęcie leczące, które uzdrawia jednego sojusznika."
      };
      
      public static var remedy:Object = {
         "name":"Odświeżenie",
         "desc":"Zaawansowane zaklęcie leczące, które uzdrawia jednego sojusznika i zapewnia mu efekt błogosławieństwa."
      };
      
      public static var motherearth:Object = {
         "name":"Matka Ziemia",
         "desc":LIMIT_BREAK + "Zadaje przytłaczające magiczne bio obrażenia wszystkim wrogom i zatruwa ich. \n • Błogosławi wszystkich sojuszników, uwzględniając tych w rezerwie." + HIGH_ACC + "\n • Zapewnia bezchmurną pogodę na 5 tur."
      };
      
      public static var mightyoak:Object = {
         "name":"Mocarny Dąb",
         "desc":LIMIT_BREAK + "Zadaje przytłaczające fizyczne ziemne obrażenia wszystkim wrogom kilkoma potężnymi uderzeniami." + HIGH_ACC
      };
      
      public static var backstab:Object = {
         "name":"Zwykły Atak",
         "desc":"Dźgnij cel od tyłu szybkim atakiem z zaskoczenia." + WEP_EFFECTS
      };
      
      public static var multistab:Object = {
         "name":"Szermierka",
         "desc":"Podstawowy atak, który uderza pojedynczego wroga 4 cięciami." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var bladeblitz:Object = {
         "name":"Ostrzoszturm",
         "desc":"Potężny atak, który uderza pojedynczego wroga 11 szaleńczymi cięciami." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var swiftslash:Object = {
         "name":"Zwinne Cięcie",
         "desc":"Bardzo szybkie cięcie, które uderza wszystkich przeciwników." + WEP_EFFECTS + HIGH_ACC + COOLDOWN_2
      };
      
      public static var ninelives:Object = {
         "name":"Dziewięć Żyć",
         "desc":"Uzdrawia wszystkich sojuszników, nakłada na nich efekt Anioła Stróża, a także wskrzesza martwych sojuszników. Odnowienie zajmuje dużo czasu." + COOLDOWN_11
      };
      
      public static var starblast:Object = {
         "name":"Gwiezdny Wybuch",
         "desc":"Zadaje wszystkim przeciwnikom bez-żywiołowe magiczne obrażenia. Odnowienie zajmuje dużo czasu." + equips.MAY_DISPEL + HIGH_ACC + COOLDOWN_11
      };
      
      public static var sworddance:Object = {
         "name":"Atak z Naskoku",
         "desc":"Podstawowy atak wręcz:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance2:Object = {
         "name":"Taniec Miecza",
         "desc":"Zaawansowany atak wręcz:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance3:Object = {
         "name":"Ostateczne Rozcięcie",
         "desc":"Potężny atak wręcz:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var darkslash:Object = {
         "name":"Cieniste Cięcie",
         "desc":"Zaawansowany mroczny atak:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var darkslash2:Object = {
         "name":"Tango Zmierzchu",
         "desc":"Potężny mroczny atak:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var holyslash:Object = {
         "name":"Uświęcone Uderzenie",
         "desc":"Zaawansowany święty atak:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var holyslash2:Object = {
         "name":"Boski Balet",
         "desc":"Potężny święty atak:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var lightningslash:Object = {
         "name":"Piorunujące Pchnięcie",
         "desc":"Zaawansowany gromowy atak:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var lightningslash2:Object = {
         "name":"Piorunujący Piruet",
         "desc":"Potężny gromowy atak:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var windslash:Object = {
         "name":"Wiaterkowy Wywijas",
         "desc":"Zaawansowany wietrzny atak:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var windslash2:Object = {
         "name":"Szalony Szkwał",
         "desc":"Potężny wietrzny atak:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var waterslash:Object = {
         "name":"Bąbelkowe Cięcie",
         "desc":"Zaawansowany wodny atak:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var waterslash2:Object = {
         "name":"Wodne Wygibasy",
         "desc":"Potężny wodny atak:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var sushicat:Object = {
         "name":"Sushi Cat",
         "desc":"Odbija się po okolicy, zadając 3 losowym przeciwnikom obrażenia magiczne i uzdrawiając 2 najbardziej rannych sojuszników." + COOLDOWN_3
      };
      
      public static var sushicat2:Object = {
         "name":"Sushi Cat!",
         "desc":"Odbija się po okolicy, zadając 3 losowym przeciwnikom obrażenia magiczne i uzdrawiając 2 najbardziej rannych sojuszników. \n • Zapewnia sojusznikom farta." + COOLDOWN_3
      };
      
      public static var berserk:Object = {
         "name":"Szał",
         "desc":"Nakłada na cel, sojusznika lub wroga, efekt szału, sprawiając by stale atakował ze zwiększoną mocą. " + COOLDOWN_2
      };
      
      public static var berserk2:Object = {
         "name":"Szaleńcza Moc",
         "desc":"Nakłada na wszystkich sojuszników efekt szału. Może być również skupiona na jednym sojuszniku lub wrogu dla silniejszego działania. " + COOLDOWN_3
      };
      
      public static var cherish:Object = {
         "name":"Pieszczoty",
         "desc":"Czynią cel słodkim sprawiając, że nie może zostać celem ataków w pojedynczy cel. " + COOLDOWN_3
      };
      
      public static var cherish2:Object = {
         "name":"Aura Miłości",
         "desc":"Nakłada efekt słodkości na wszystkich sojuszników. Może być również skupiona na jednym sojuszniku dla silniejszego działania. " + COOLDOWN_4
      };
      
      public static var thecreator:Object = {
         "name":"Stwórca",
         "desc":LIMIT_BREAK + "Zadaje przytłaczające magiczne święte obrażenia wszystkim przeciwnikom. \n • Zapewnia farta wszystkim sojusznikom, uwzględniając tych w rezerwie." + HIGH_ACC + "\n • Zapewnia bezchmurną pogodę na 5 tur."
      };
      
      public static var thedestroyer:Object = {
         "name":"Niszczyciel",
         "desc":LIMIT_BREAK + "Zadaje przytłaczające fizyczne mroczne obrażenia wszystkim przeciwnikom w kilku uderzeniach." + DISPEL_ALL + HIGH_ACC
      };
      
      public static var snowbunny:Object = {
         "name":"Śnieżne Króliczki",
         "desc":"Lodowe zaklęcie, które uderza wszystkich przeciwników." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var snowcat:Object = {
         "name":"Śnieżne Kociaki",
         "desc":"Silne lodowe zaklęcie, które uderza wszystkich przeciwników i przygotowuje mrożące kombinacje." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var ivy:Object = {
         "name":"Bluszcz",
         "desc":"Bio atak, który uderza pojedynczy cel." + equips.MAY_POISON
      };
      
      public static var vines:Object = {
         "name":"Pnącza",
         "desc":"Silny bio atak, który uderza pojedynczy cel kilka razy." + equips.MAY_POISON + equips.DEBUFF_EVA
      };
      
      public static var energy:Object = {
         "name":"Energia",
         "desc":"Podstawowe wybuchowe zaklęcie, które uderza pojedynczy cel." + HIGH_CRITS
      };
      
      public static var energy2:Object = {
         "name":"Bomba Energetyczna",
         "desc":"Zaawansowane wybuchowe zaklęcie, które uderza pojedynczy cel." + HIGH_CRITS
      };
      
      public static var energy3:Object = {
         "name":"Bombardowanie Energetyczne",
         "desc":"Potężne wybuchowe zaklęcie, które uderza wszystkich przeciwników." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var bubbles:Object = {
         "name":"Bąbelki",
         "desc":"Podstawowe wodne zaklęcie, które uderza pojedynczy cel." + equips.MAY_WET
      };
      
      public static var whirlpool:Object = {
         "name":"Wir",
         "desc":"Zaawansowane wodne zaklęcie, które uderza pojedynczy cel." + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var vortex:Object = {
         "name":"Bąbelkowy Wybuch",
         "desc":"Potężne wodne zaklęcie, które uderza wszystkich przeciwników." + ALTERNATIVE_ONE + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var laserblade:Object = {
         "name":"Wstrząs Elektryczny",
         "desc":"Zaawansowany gromowy atak, który uderza pojedynczy cel." + equips.MAY_STAGGER
      };
      
      public static var lasersword:Object = {
         "name":"Przepięcie",
         "desc":"Potężny gromowy atak, który uderza pojedynczy cel." + equips.MAY_STAGGER
      };
      
      public static var bulletbob:Object = {
         "name":"Pocisk Bob",
         "desc":"Zaawansowany wybuchowy atak, który uderza pojedynczy cel." + HIGH_CRITS
      };
      
      public static var bigbullet:Object = {
         "name":"Wielki Pocisk",
         "desc":"Potężny wybuchowy atak, który uderza pojedynczy cel." + HIGH_CRITS
      };
      
      public static var gale:Object = {
         "name":"Wichura",
         "desc":"Zaawansowany wietrzny atak, który uderza pojedynczy cel." + equips.MAY_LIGHT
      };
      
      public static var tempest:Object = {
         "name":"Nawałnica",
         "desc":"Potężny wietrzny atak, który uderza pojedynczy cel." + equips.MAY_LIGHT
      };
      
      public static var powermetal:Object = {
         "name":"Power Metal",
         "desc":"Zadaje magiczne wietrzne obrażenia wszystkim wrogom i uzdrawia wszystkich sojuszników." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var air:Object = {
         "name":"Powietrze",
         "desc":"Podstawowe wietrzne zaklęcie, które uderza pojedynczy cel." + equips.MAY_STAGGER
      };
      
      public static var air2:Object = {
         "name":"Fala Powietrzna",
         "desc":"Zaawansowane wietrzne zaklęcie, które uderza pojedynczy cel." + equips.MAY_STAGGER
      };
      
      public static var air3:Object = {
         "name":"Fala Uderzeniowa",
         "desc":"Potężne wietrzne zaklęcie, które uderza wszystkich przeciwników." + ALTERNATIVE_ONE + equips.MAY_STAGGER
      };
      
      public static var sawblade:Object = {
         "name":"Piła Tarczowa",
         "desc":"Zaawansowany atak bez-żywiołowy, który uderza pojedynczy cel." + equips.IGNORES_BUFFS + equips.MAY_DEATH
      };
      
      public static var sawblades:Object = {
         "name":"Niszczarka",
         "desc":"Potężny atak bez-żywiołowy, który uderza wszystkich przeciwników." + equips.IGNORES_BUFFS + equips.MAY_DEATH + COOLDOWN_2
      };
      
      public static var gaia:Object = {
         "name":"Nasienie Gai",
         "desc":"Podstawowe ziemne zaklęcie, które uderza pojedynczy cel." + equips.MAY_TIRE
      };
      
      public static var gaia2:Object = {
         "name":"Rozrost Gai",
         "desc":"Zaawansowane ziemne zaklęcie, które uderza pojedynczy cel." + equips.MAY_TIRE
      };
      
      public static var gaia3:Object = {
         "name":"Rozkwit Gai",
         "desc":"Potężne ziemne zaklęcie, które uderza wszystkich przeciwników." + ALTERNATIVE_ONE + equips.MAY_TIRE
      };
      
      public static var firespin:Object = {
         "name":"Ognisty Wir",
         "desc":"Silne ogniste zaklęcie, które uderza wszystkich przeciwników." + equips.MAY_BURN + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var purgingflame:Object = {
         "name":"Oczyszczający Płomień",
         "desc":"Święte zaklęcie, które rozprasza pojedynczy cel i redukuje jego atak magiczny." + HIGH_ACC
      };
      
      public static var screamer:Object = {
         "name":"Screamer",
         "desc":"Zadaje magiczne mroczne obrażenia wszystkim przeciwnikom i redukuje ich atak." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var heal:Object = {
         "name":"Uleczenie",
         "desc":"Podstawowe zaklęcie leczące, który uzdrawia jednego sojusznika." + COOLDOWN_2
      };
      
      public static var healmore:Object = {
         "name":"Uleczenie Więcej",
         "desc":"Potężne zaklęcie leczące, który uzdrawia wszystkich sojuszników. Można też nim celować w pojedynczego sojusznika dla skoncentrowanego leczenia." + COOLDOWN_2
      };
      
      public static var revive:Object = {
         "name":"Wskrzeszenie",
         "desc":"Wskrzesza martwego sojusznika lub nakłada efekt Anioła Stróża na żyjącego. "
      };
      
      public static var purify:Object = {
         "name":"Odkażenie",
         "desc":"Niweluje typowe negatywne efekty wszystkich sojuszników lub wszystkich wrogów. Nie obejmuje to efektów neutralnych takich jak wilgoć czy suchość. " + COOLDOWN_3
      };
      
      public static var lockon:Object = {
         "name":"Namierzenie",
         "desc":"Zapewnia sojusznikowi premię do celności oraz efekt farta. " + COOLDOWN_2
      };
      
      public static var protect:Object = {
         "name":"Protekcja",
         "desc":"Zapewnia wszystkim sojusznikom premię do obrony, uwzględniając tych w rezerwie." + COOLDOWN_6
      };
      
      public static var barrier:Object = {
         "name":"Bariera",
         "desc":"Zapewnia wszystkim sojusznikom premię do obrony magicznej, uwzględniając tych w rezerwie." + COOLDOWN_6
      };
      
      public static var reflex:Object = {
         "name":"Refleks",
         "desc":"Zapewnia wszystkim sojusznikom premię do uniku, uwzględniając tych w rezerwie, a także niweluje efekt całunu aktywnych sojuszników. " + COOLDOWN_6
      };
      
      public static var guardian:Object = {
         "name":"Niebiańska Tarcza",
         "desc":"Zapewnia sojusznikowi premię do obrony i obrony magicznej. " + COOLDOWN_2
      };
      
      public static var dispel:Object = {
         "name":"Rozproszenie",
         "desc":"Rozprasza wszystkich wrogów, niwelując ich premie i pozytywne efekty. Może też zostać użyte na wszystkich sojuszników, aby zniwelować ich redukcje. " + COOLDOWN_6
      };
      
      public static var flare:Object = {
         "name":"Rozbłysk",
         "desc":"Redukuje celność wszystkich przeciwników." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var bind:Object = {
         "name":"Spętanie",
         "desc":"Redukuje unik wszystkich przeciwników." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var debilitate:Object = {
         "name":"Wycieńczenie",
         "desc":"Redukuje obronę wszystkich przeciwników." + COOLDOWN_6
      };
      
      public static var enfeeble:Object = {
         "name":"Wyczerpanie",
         "desc":"Redukuje obronę magiczną wszystkich przeciwników." + COOLDOWN_6
      };
      
      public static var teradrill:Object = {
         "name":"Giga Wiertło",
         "desc":"Potężny ziemny atak, który uderza pojedynczy cel. Zadaje o wiele więcej obrażeń, jeżeli cel ma premię do obrony lub obrony magicznej, albo też wykonuje blok. " + COOLDOWN_3
      };
      
      public static var encore:Object = {
         "name":"Bis",
         "desc":"Zapewnia sojusznikowi dodatkową turę. Używanie tego na sobie nie ma sensu." + COOLDOWN_3
      };
      
      public static var firecrackers:Object = {
         "name":"Petardy",
         "desc":"Nakłada pecha na wszystkich wrogów, a sojusznikom, uwzględniając tych w rezerwie, zapewnia efekt farta." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var abzero:Object = {
         "name":"Zero Absolutne",
         "desc":LIMIT_BREAK + "Zadaje wielkie magiczne lodowe obrażenia wszystkim wrogom, redukuje ich unik i zamraża ich. \n • Zeruje wszystkim sojusznikom aktywne czasy odnowienia." + HIGH_ACC
      };
      
      public static var tsunami:Object = {
         "name":"Tsunami",
         "desc":LIMIT_BREAK + "Zadaje przytłaczające fizyczne lub magiczne wodne obrażenia wszystkim wrogom i czyni ich wilgotnymi. \n • Obrażenia są bazowane na wyższej statystyce." + equips.MAY_DEATH + HIGH_ACC_2
      };
      
      public static var supernova:Object = {
         "name":"Supernowa",
         "desc":LIMIT_BREAK + "Zadaje przytłaczające magiczne ogniste obrażenia wszystkim wrogom i sojusznikom oraz nakłada na nich efekt poparzenia. \n • Nie można uniknąć."
      };
      
      public static var deathmetal:Object = {
         "name":"Death Metal",
         "desc":LIMIT_BREAK + "Zadaje przytłaczające magiczne obrażenia od wiatru wszystkim wrogom. Uzdrawia wszystkich sojuszników, uwzględniając tych w rezerwie, oraz nakłada na nich efekt morale." + HIGH_ACC
      };
      
      public static var annihilate:Object = {
         "name":"Anihilacja",
         "desc":LIMIT_BREAK + "Atak z wysoką szansą na natychmiastowe zabicie wszystkich wrogów. Nie działa dobrze na bossów i ma niską celność."
      };
      
      public static var ion:Object = {
         "name":"Działo Jonowe",
         "desc":LIMIT_BREAK + "Zadaje przytłaczające magiczne gromowe obrażenia wszystkim wrogom i może ich ogłuszyć. \n • Ładuje także atak Lance\'a, Hiperpromień." + HIGH_ACC_2
      };
      
      public static var blackhole:Object = {
         "name":"Czarna Dziura",
         "desc":LIMIT_BREAK + "Zadaje przytłaczające magiczne mroczne obrażenia wszystkim wrogom i czyni ich ciężkimi. Zabija także użytkownika." + HIGH_ACC
      };
      
      public static var rapture:Object = {
         "name":"Ukryta Moc",
         "desc":LIMIT_BREAK + "Zadaje przytłaczające fizyczne lub magiczne obrażenia wszystkim wrogom. \n • Obrażenia są bazowane na wyższej statystyce." + WEP_EFFECTS + HIGH_ACC
      };
      
      public static var bones:String = "Kości";
      
      public static var bonestar:String = "Kościana Gwiazda";
      
      public static var groundblade:String = "Nieumarłe Ostrze";
      
      public static var fallingstar:String = "Spadająca Gwiazda";
      
      public static var firerock:String = "Ognista Skała";
      
      public static var stalactite:String = "Stalaktyt";
      
      public static var stalactite2:String = "Stalaktyty";
      
      public static var fume:String = "Ogniste Opary";
      
      public static var eruption:String = "Erupcja";
      
      public static var scald:String = "Wrzące Opary";
      
      public static var rain:String = "Deszcz";
      
      public static var sandstorm:String = "Burza Piaskowa";
      
      public static var hail:String = "Grad";
      
      public static var nitro:String = "Wybuch Nitro";
      
      public static var acid:String = "Żrący Kwas";
      
      public static var bamboo:String = "Bambus";
      
      public static var bamboo2:String = "Bambusowa Pułapka";
      
      public static var bluebolt:String = "Błękitny Piorun";
      
      public static var deepfreeze:String = "Zlodowacenie";
      
      public static var wafer:String = "Wafelek";
      
      public static var present:String = "Prezent Niespodzianka";
      
      public static var plasmacage:String = "Plazmowa Klatka";
      
      public static var tankcannon:String = "Działo Czołgowe";
      
      public static var candycanes:String = "Cukrowe Laski";
      
      public static var bonefish:String = "Oścista Ryba";
      
      public static var riceball:String = "Bomba Ryżowa";
      
      public static var mushroom:String = "Grzyb";
      
      public static var lifedrain:String = "Wyssanie Życia";
      
      public static var smokepuff:String = "Kłąb Dymu";
      
      public static var confusion:String = "Zamęt";
      
      public static var ink:String = "Atramentowy Kleks";
      
      public static var chocolate:String = "Czekoladowa Plama";
      
      public static var tentacles:String = "Macki";
      
      public static var slowdown:String = "Spowolnienie";
      
      public static var speedup:String = "Przyśpieszenie";
      
      public static var poisonroot:String = "Trujący Korzeń";
      
      public static var burningroot:String = "Płonący Korzeń";
      
      public static var searoot:String = "Morski Korzeń";
      
      public static var bombblast:String = "Bombowy Wybuch";
      
      public static var bigblast:String = "Wielki Wybuch";
      
      public static var cactus:String = "Kaktus";
      
      public static var cacti:String = "Kaktusy";
      
      public static var spark:String = "Iskra";
      
      public static var bigspark:String = "Duża Iskra";
      
      public static var talisman:String = "Talizman Pieczętujący";
      
      public static var ember:String = "Żar";
      
      public static var fireblast2:String = "Ognisty Wybuch";
      
      public static var firecrystals:String = "Kryształy Ognia";
      
      public static var zephyrcrystals:String = "Kryształy Zefiru";
      
      public static var frost:String = "Nagłe Oziębienie";
      
      public static var rockslide:String = "Osunięcie Ziemi";
      
      public static var avalanche:String = "Lawina";
      
      public static var blackspikes:String = "Czarne Kolce";
      
      public static var stonefist:String = "Kamienna Pięść";
      
      public static var spiderweb:String = "Pajęcza Sieć";
      
      public static var spiders:String = "Pajęczy Rój";
      
      public static var geometry2:String = "Zniekształcenie Przestrzeni";
      
      public static var geometry3:String = "Pole Zniekształcające";
      
      public static var sacrifice:String = "Poświęcenie";
      
      public static var bigroot:String = "Wielki Korzeń";
      
      public static var seabomb:String = "Mina Morska";
      
      public static var fairy:String = "Wróżkobomba";
      
      public static var fly:String = "Muchobomba";
      
      public static var starpunch:String = "Gwiezdny Kuksaniec";
      
      public static var darken:String = "Niewidzialność";
      
      public static var lighten:String = "Zaczarowanie";
      
      public static var SlimeChocolate:String = "Pluje na pojedynczy cel, zadając fizyczne ziemne obrażenia i redukując jego celność.";
      
      public static var SlimeIcecream:String = "Używa podstawowego lodowego zaklęcia, które ochładza pojedynczy cel.";
      
      public static var SlimeSand:String = "Używa podstawowego bio ataku, który może ogłuszyć pojedynczy cel.";
      
      public static var SlimeLava:String = "Używa podstawowego ognistego ataku, który wysusza pojedynczy cel.";
      
      public static var SlimeMouse:String = "Używa słabego gromowego ataku, który zawsze ogłusza pojedynczy cel.";
      
      public static var SlimeWater:String = "Używa żałośnie słabego wodnego ataku na pojedynczym celu.";
      
      public static var SlimeMud:String = "Używa podstawowego bio ataku na pojedynczym celu.";
      
      public static var SlimeBunny:String = "Nakłada efekt regeneracji na wszystkich sojuszników, uwzględniając tych w rezerwie, uzdrawiając ich przez kilka tur.";
      
      public static var SpriteFire:String = "Zmienia obecną pogodę na gorący popiół na 5 tur.";
      
      public static var SpriteIce:String = "Zmienia obecną pogodę na zamieć na 5 tur.";
      
      public static var SpriteThunder:String = "Zmienia obecną pogodę na pole elektryczne na 5 tur.";
      
      public static var SpriteRock:String = "Zmienia obecną pogodę na trzęsienie ziemi na 5 tur.";
      
      public static var SpriteWind:String = "Zmienia obecną pogodę na burzową na 5 tur.";
      
      public static var ChomperLeafy:String = "Zmienia obecną pogodę na bryzę na 5 tur.";
      
      public static var ChomperSeaweed:String = "Zmienia obecną pogodę na deszczową na 5 tur.";
      
      public static var ChomperMagma:String = "Zmienia obecną pogodę na słoneczną na 5 tur.";
      
      public static var ChomperMutant:String = "Zmienia obecną pogodę na kwaśny deszcz na 5 tur.";
      
      public static var CreepThorny:String = "Wbija się w cel zaawansowanym ziemnym atakiem, mogąc także go ogłuszyć.";
      
      public static var CreepIcicle:String = "Kłuje cel zaawansowanym lodowym atakiem, mogąc także go ochłodzić.";
      
      public static var CreepHermit:String = "Tnie pojedynczy cel za pomocą zaawansowanego ataku bez-żywiołowego.";
      
      public static var CreepGreen:String = "Wirując, odbija się od celu 3 razy przy użyciu potężnych ataków bez-żywiołowych." + RETARGETS_2;
      
      public static var CreepRed:String = "Wirując, rozbija się o cel przy użyciu potężnego wietrznego ataku, który powoduje jego zachwianie.";
      
      public static var CreepBlue:String = "Eksploduje powodując potężny wybuch i jednocześnie ogłuszając cel.";
      
      public static var Defender1:String = "Wysadza wszystkich przeciwników przy użyciu potężnego gromowego wybuchu, co może nimi zachwiać.";
      
      public static var Defender2:String = "Razi pojedynczy cel potężnym strumieniem wodnych bąbelków, co może go zmoczyć. ";
      
      public static var DogFriend:String = "Nakłada efekt słodkości na wszystkich sojuszników, sprawiając że przeciwnicy będą się wahać przed atakowaniem ich bezpośrednio.";
      
      public static var DogMaxi:String = DogFriend;
      
      public static var DogTanuki:String = "Rzuca się na cel ognistym atakiem, powodując poparzenie.";
      
      public static var DogWolf:String = "Rzuca się na cel lodowym atakiem, powodując zamrożenie.";
      
      public static var DogZap:String = "Rzuca się na wszystkich przeciwników rozdzierającym gromowym atakiem, co może nimi zachwiać.";
      
      public static var DogMage:String = "Uderza wszystkich wrogów złowieszczym świętym zaklęciem, co nakłada na nich klątwę.";
      
      public static var ChibiKnightUltra:String = "Zapewnia premię do ataku wszystkim sojusznikom, uwzględniając tych w rezerwie, a następnie atakuje wroga kilkukrotnie." + RETARGETS_2;
      
      public static var BushGreen:String = "Krzyczy na przeciwników, redukując nieco ich atak.";
      
      public static var BushRed:String = "Krzyczy na przeciwników, redukując nieco ich obronę.";
      
      public static var BushDark:String = "Syczy wściekle na przeciwników, redukując nieco ich unik.";
      
      public static var BushMud:String = "Krzyczy na przeciwników, redukując nieco ich atak magiczny.";
      
      public static var BushSand:String = "Syczy wściekle na przeciwników, redukując nieco ich obronę magiczną.";
      
      public static var GolemTopaz:String = "Wielokrotnie uderza w cel potężnymi gromowymi atakami, mogąc także go ogłuszyć.";
      
      public static var GolemPearl:String = "Ochładza wszystkich przeciwników za pomocą potężnego lodowego zaklęcia i zmienia obecną pogodę na gradobicie na 5 tur.";
      
      public static var GolemAmethyst:String = "Wielokrotnie uderza wszystkich przeciwników potężnymi bez-żywiołowymi atakami, co może nimi zachwiać.";
      
      public static var FishSteam:String = "Wlatuje w przeciwników z ponaddźwiękową prędkością, mogąc uczynić ich lżejszymi.";
      
      public static var FishGold:String = "Razi wszystkich przeciwników świętym magicznym promieniem, co może nałożyć na nich efekt suchości.";
      
      public static var FishJet:String = "Ostrzeliwuje wszystkich przeciwników przy użyciu prostego wybuchowego ataku.";
      
      public static var HandSkeleton:String = "Zapewnia farta wszystkim sojusznikom, uwzględniając tych w rezerwie, zwiększając ich szanse przy losowych zdarzeniach.";
      
      public static var HandZombie:String = "Nakłada efekt zagłady na wszystkich przeciwników, powodując ich natychmiastową śmierć po 3 turach.";
      
      public static var HandMagma:String = "Nakłada efekt szału na wszystkich sojuszników, co sprawia, że atakują niekontrolowanie ze zwiększoną mocą.";
      
      public static var FlybotBlue:String = "Zamienia premie wszystkich sojuszników na redukcje, a redukcje na premie.";
      
      public static var FlybotYellow:String = "Zamienia premie wszystkich przeciwników na redukcje, a redukcje na premie.";
      
      public static var FlybotRed:String = "Zamienia premie pojedynczego wroga lub sojusznika na redukcje, a redukcje na premie.";
      
      public static var FallenLost:String = "Tnie wroga wietrznym atakiem i nakłada efekt morale na wszystkich sojuszników, uwzględniając tych w rezerwie.";
      
      public static var FallenCrucified:String = "Atakuje przeciwnika tnącym świętym atakiem, który może go zabić natychmiastowo.";
      
      public static var FallenDrowned:String = "Z gracją niweluje redukcje wszystkich aktywnych sojuszników.";
      
      public static var FallenBurned:String = "Wysusza wszystkich przeciwników ognistym atakiem oraz zmienia obecną pogodę na burzę piaskową na 5 tur.";
      
      public static var FallenBeheaded:String = "Dźga wroga mrocznym atakiem i nakłada efekt odwagi na wszystkich sojuszników, uwzględniając tych w rezerwie.";
      
      public static var PixelSlime:String = "Uderza wroga jakimś słabym zaklęciem bio, czyniąc go bardzo zmęczonym.";
      
      public static var PixelBush:String = "Uderza wroga jakimś słabym ognistym zaklęciem, czyniąc go bardzo suchym.";
      
      public static var PixelBat:String = "Uderza wroga jakimś słabym mrocznym zaklęciem, czyniąc go bardzo pechowym.";
      
      public static var PixelIdol:String = "Uderza wroga jakimiś słabymi wybuchowymi atakami, czyniąc go bardzo osłabionym.";
      
      public static var MonolithViking:String = "Nakłada efekt przyspieszenia na wszystkich sojuszników, w zasadzie dając każdemu po dodatkowej turze.";
      
      public static var MonolithAncient:String = "Nakłada efekt bloku na wszystkich sojuszników, co zapewnia gigantyczną ochronę na jedną turę.";
      
      public static var MonolithCosmic:String = "Wysadza pole walki olbrzymim mrocznym magicznym wybuchem, który uderza wszystkich wrogów.";
      
      public static var IdolGem:String = "Nakłada efekt lekkości na wszystkich sojuszników, uwzględniając tych w rezerwie, chroniąc ich przed obrażeniami od ziemi.";
      
      public static var IdolStone:String = "Nakłada efekt suchości na wszystkich sojuszników, uwzględniając tych w rezerwie, chroniąc ich przed obrażeniami od gromu i lodu.";
      
      public static var IdolMetal:String = "Nakłada efekt ciężkości na wszystkich sojuszników, uwzględniając tych w rezerwie, chroniąc ich przed obrażeniami od wiatru.";
      
      public static var IdolWood:String = "Nakłada efekt błogosławieństwa na wszystkich sojuszników, uwzględniając tych w rezerwie, chroniąc ich przed wszelkimi efektami.";
      
      public static var MirrorWise:String = IdolWood;
      
      public static var MirrorAngel:String = "Nakłada efekt zaczarowania na wszystkich sojuszników, zapewniając im niewrażliwość na obrażenia magiczne, ale także podatność na ataki fizyczne.";
      
      public static var MirrorDemon:String = "Nakłada efekt niewidzialności na wszystkich sojuszników, zapewniając im niewrażliwość na obrażenia fizyczne, ale także podatność na ataki magiczne.";
      
      public static var MirrorHaunted:String = "Gryzie wroga potężnym mrocznym atakiem, co nakłada na niego klątwę.";
      
      public static var MammothWooly:String = "Atakuje ciałem jednego wroga zadając masywne bez-żywiołowe fizyczne obrażenia, kiedy reszta wrogów otrzymuje 1/3 tych obrażeń." + equips.MAY_STUN;
      
      public static var MammothCamel:String = "Zapewnia premię do obrony magicznej wszystkim sojusznikom, uwzględniając tych w rezerwie, a następnie uderza wszystkich wrogów ziemnym atakiem.";
      
      public static var MammothWar:String = "Zapewnia premię do obrony wszystkim sojusznikom, uwzględniając tych w rezerwie, a następnie uderza wszystkich wrogów magicznymi wybuchami." + equips.MAY_STAGGER;
      
      public static var SquidPink:String = "Pluje atramentem na wroga zadając masywne magiczne mroczne obrażenia, a także redukuje celność celu i czyni go niewidzialnym.";
      
      public static var SquidPurple:String = "Redukuje celność wszystkich wrogów i może nałożyć na nich efekt zagłady.";
      
      public static var SquidLime:String = "Dźga wszystkich wrogów potężnymi gromowymi atakami i całkowicie ich ogłusza.";
      
      public static var Underlegs:String = "Najpierw rozprasza wszystkich wrogów, a następnie rozpętuje zamieć dotkliwych ataków bez-żywiołowych na nich wszystkich.";
      
      public static var SlimeBigSand:String = "Używa potężnego ataku bio, który uderza pojedynczego wroga i może go ogłuszyć.";
      
      public static var SlimeBigLava:String = "Używa potężnego ognistego ataku, który uderza pojedynczego wroga i zostawia na nim liczne oparzenia.";
      
      public static var SlimeBigMud:String = "Używa grzybowych ataków bio na wszystkich wrogach, co może ich ogłuszyć zarodnikami.";
      
      public static var SlimeBigIcecream:String = "Ochładza wszystkich wrogów słabym lodowym zaklęciem, przygotowując wodne i lodowe kombinacje.";
      
      public static var SlimeBigChocolate:String = "Rzyga czekoladą na wrogów, zadając magiczne ziemne obrażenia i nakładając na nich efekt ciężkości.";
      
      public static var WormPutrid:String = "Używa słabego bez-żywiołowego ataku siecią, aby drastycznie zredukować unik wroga.";
      
      public static var WormScaly:String = "Moczy wszystkich sojuszników, uwzględniając tych w rezerwie, chroniąc ich przed obrażeniami od ognia.";
      
      public static var WormFuzzy:String = "Używa słabego bez-żywiołowego ataku ugryzieniem, zarażając cel śmiertelnym wirusem.";
      
      public static var WormCutie:String = "Niweluje neutralne efekty wszystkich sojuszników, w tym: Wilgoć, Ochłodzenie, Suchość, Ciężkość, Lekkość, Zaczarowanie i Niewidzialność.";
      
      public static var WraithIce:String = "Atakuje przeciwnika przy użyciu lodowego ataku przeszywającego serce, który może go natychmiastowo zabić.";
      
      public static var WraithFire:String = "Atakuje przeciwnika piekielnym ognistym zaklęciem, które nakłada na niego efekt szału. \n • Lepiej, żeby cel tego nie przeżył.";
      
      public static var WraithSteel:String = "Wysadza wroga kilkukrotnie za pomocą wybuchowych ataków, które mogą nim zachwiać i zredukować jego obronę.";
      
      public static var WraithLeaf:String = "Strzela we wroga kilkukrotnie za pomocą ataków bio, które go zatrują i zredukują jego obronę magiczną.";
      
      public static var WraithMaster:String = "Używa mrocznego zaklęcia na pojedynczym wrogu, powodując jego wyciszenie.";
      
      public static var Glitch2:String = "???-?eII NIE ZNALEZIONO PRZEDMIOTU! ### \nBŁĄD: 0x000002";
      
      public static var Glitch1:String = "??-//OSTRZEŻENIE: GWARANCJA ##NICOŚĆ## JEŻELI PIECZĘĆ ##ZERWANA##!! 0?-//??";
      
      public static var GloopStone:String = "Nakłada efekt niewidzialności na jednego wroga, sprawiając, że otrzymywane przez niego obrażenia magiczne będą podwojone.";
      
      public static var GloopCrystal:String = "Nakłada efekt zaczarowania na jednego wroga, sprawiając, że otrzymywane przez niego obrażenia fizyczne będą podwojone.";
      
      public static var GloopAsh:String = "Nakłada efekt odwagi na wszystkich sojuszników, uwzględniając tych w rezerwie, zwiększając ich szanse na trafienia krytyczne.";
      
      public static var GloopWood:String = "Nakłada efekt morale na wszystkich sojuszników, uwzględniając tych w rezerwie, chroniąc ich przed śmiercią od pojedynczego uderzenia.";
      
      public static var HydraZombie:String = "Natychmiastowo zabija wszystkich wrogów lub, jeśli to się nie sprawdzi, zadaje im fizyczne mroczne obrażenia.";
      
      public static var HydraMagma:String = "Powala wszystkich wrogów za pomocą potężnego ognistego zaklęcia, które także nakłada na nich efekt poparzenia.";
      
      public static var HydraIce:String = "Gryzie wroga kilkukrotnie, zadając tym sposobem niesamowicie potężne fizyczne obrażenia od lodu.";
      
      public static var DragonEarth:String = "Redukuje obronę magiczną wszystkich wrogów, a następnie pluje iście zabójczym kwasem, zadając im wszystkim magiczne obrażenia bio.";
      
      public static var DragonSky:String = "Redukuje obronę wszystkich wrogów, a następnie atakuje ich huraganem piór, zadając im wszystkim fizyczne obrażenia od wiatru.";
      
      public static var DragonSea:String = "Redukuje atak wszystkich wrogów, a następnie zadaje im masywne magiczne obrażenia od wody, przy okazji mocząc ich.";
      
      public static var DragonOmega:String = "Redukuje atak magiczny wszystkich wrogów, a następnie zadaje im ogromne magiczne święte obrażenia, mogąc ich także ogłuszyć.";
      
      public static var BatBlood:String = "Wysysa PŻ z celu za pomocą prostego ataku bio, a następnie przekazuje je przywołującemu.";
      
      public static var BatSnow:String = "Nakłada efekt ochłodzenia na wszystkich sojuszników, uwzględniając tych w rezerwie, chroniąc ich przed obrażeniami bio.";
      
      public static var BatThunder:String = "Nakłada efekt zamętu na aktywnych sojuszników na kilka tur, co właściwie uruchamia tryb auto-walki.  \n • Nie próbuj tego na żadnym bossie.";
      
      public static var BatBone:String = "Nakłada efekt wirusa na wszystkich sojuszników, nawet jeśli mają na niego odporność.";
      
      public static var BearBrown:String = "Kiereszuje wroga przy użyciu bez-żywiołowych ataków. Zadaje o wiele więcej obrażeń, jeżeli użytkownik jest zraniony oraz jeśli członkowie drużyny są martwi. \n • Maksymalna moc wynosi 1000.";
      
      public static var BearGrolar:String = "Okłada wszystkich wrogów lawiną lodowych ataków, mogąc także ich zamrozić.";
      
      public static var BearPanda:String = "Dźga wszystkich wrogów nawałem ataków bio, mogąc także ich zatruć.";
      
      public static var BitIce:String = "Rzuca zaklęcie bariery, które zapewnia premię do obrony magicznej wszystkim sojusznikom, uwzględniając tych w rezerwie.";
      
      public static var BitThunder:String = "Rzuca defensywne zaklęcie, które zapewnia premię do obrony wszystkim sojusznikom, uwzględniając tych w rezerwie. ";
      
      public static var BitHoly:String = "Rzuca potężne zaklęcie leczące, które uzdrawia wszystkich sojuszników.";
      
      public static var BitFire:String = "Napastuje wroga za pomocą ognistego ataku, który redukuje jego obronę i może go poparzyć.";
      
      public static var BitWind:String = "Napastuje wroga za pomocą wietrznego ataku, który redukuje jego obronę magiczną i może go ogłuszyć.";
      
      public static var BitWater:String = "Oblewa wszystkich wrogów słabym wodnym zaklęciem, mocząc ich do suchej nitki oraz przygotowując lodowe i gromowe kombinacje.";
      
      public static var BitPoison:String = "Zatruwa wszystkich wrogów za pomocą słabego bio zaklęcia, zadając im trochę obrażeń co turę.";
      
      public static var BoulderCoral:String = "Rzuca się na cel przy użyciu wodnego ataku, wprowadzając go w zachwianie.";
      
      public static var BoulderMarble:String = "Uderza wszystkich wrogów za pomocą wietrznego zaklęcia, silnie ich wyciszając.";
      
      public static var BoulderObsidian:String = "Uderza wszystkich wrogów za pomocą k20, zadając bardzo losowe magiczne ogniste obrażenia i nakłada na nich efekt poparzenia.";
      
      public static var BoulderDirt:String = "Uderza wszystkich wrogów fizycznymi ziemnymi obrażeniami, nakładając na nich efekt zmęczenia.";
      
      public static var BoulderSandstone:String = "Rzuca się na pojedynczy cel i zadaje przytłaczające fizyczne ziemne obrażenia.";
      
      public static var CatNinja:String = "Zapewnia sojusznikowi dodatkową turę.";
      
      public static var CatSniper:String = "Strzela wrogowi w twarz, co może go zabić natychmiastowo przy odrobinie szczęścia.";
      
      public static var CatWizard:String = "Rzuca podstawowe zaklęcie leczące, które uzdrawia jednego sojusznika.";
      
      public static var CatBomber:String = "Rzuca bombą we wroga, zadając mu magiczne obrażenia i wprowadzając go w zachwianie.";
      
      public static var CatWarrior:String = "Sieka wroga sekwencją bez-żywiołowych ataków.";
      
      public static var DollMatt:String = "Zapewnia sojusznikowi wysoką premię do ataku i nakłada na niego efekt błogosławieństwa.";
      
      public static var DollNatalie:String = "Zapewnia sojusznikowi wysoką premię do ataku magicznego i nakłada na niego efekt morale.";
      
      public static var DollLance:String = "Uderza wszystkich wrogów silnym wybuchowym zaklęciem, które może nimi zachwiać.";
      
      public static var DollAnna:String = "Atakuje penetrującą bio strzałą, która zadaje więcej obrażeń, jeżeli cel ma premię do obrony lub obrony magicznej, albo wykonuje blok.";
      
      public static var DollNoLegs:String = "Miauczy zniewalająco na przeciwników, redukując ich unik i przynosząc im pecha.";
      
      public static var BossCyclopsDesert:String = "Zadaje przytłaczające magiczne wybuchowe obrażenia wszystkim wrogom w kilku uderzeniach, mogąc ich również ogłuszyć.";
      
      public static var BossCyclopsGlacial:String = "Tłucze wroga wielokrotnie potężnymi lodowymi atakami, a pozostali wrogowie otrzymują 1/3 obrażeń. \n • Wszyscy wrogowie mogą zostać zamrożeni. ";
      
      public static var BossCyclopsInfernal:String = "Trzaska wroga wielokrotnie potężnymi ognistymi atakami, a pozostali wrogowie otrzymują 1/3 obrażeń. \n • Wszyscy wrogowie mogą zostać poparzeni. ";
      
      public static var BossGolemWater:String = "Tłucze wszystkich wrogów niesamowicie potężnymi wodnymi atakami, które mogą również ich zmoczyć.";
      
      public static var BossGolemFire:String = "Grzmoci wszystkich wrogów niesamowicie potężnymi ognistymi atakami, które nakładają również efekt poparzenia na ocalałych.";
      
      public static var BossNestCat:String = "Zapewnia wszystkim sojusznikom, uwzględniając tych w rezerwie, premię do ataku magicznego, a następnie przecina się przez wszystkich wrogów nawałem bio ataków. ";
      
      public static var BossNestNinja:String = "Uderza wszystkich wrogów niesamowicie potężnym mrocznym zaklęciem, nakładając na nich klątwę.";
      
      public static var EvilMatt:String = "Gruchocze kolejno wszystkich wrogów za pomocą niesamowicie potężnych ziemnych ataków." + HIGH_CRITS;
      
      public static var EvilNatalie:String = "Poraża kolejno wszystkich wrogów za pomocą niesamowicie potężnego świętego zaklęcia." + HIGH_CRITS;
      
      public static var EvilLance:String = "Wysadza kolejno wszystkich wrogów za pomocą niesamowicie potężnego wybuchowego zaklęcia." + HIGH_CRITS;
      
      public static var EvilAnna:String = "Rozcina kolejno wszystkich wrogów za pomocą niesamowicie potężnych wietrznych ataków." + HIGH_CRITS;
      
      public static var EvilNoLegs:String = "Używa najsilniejszego zaklęcia we wszechświecie i obraca wszystkich wrogów w perzynę szalonymi bez-żywiołowymi obrażeniami.";
      
      public static var WraithOrigami:String = "Szatkuje wroga rozpraszającym bez-żywiołowym atakiem.";
      
      public static var GloopFab:String = "Zmienia obecną pogodę na kwitnące wiśnie na 5 tur.";
      
      public static var CatSkeleton:String = "Dźga wroga od tyłu mrocznym atakiem oraz nakłada na niego maksymalną dawkę pecha.";
      
      public static var HydraOrigami:String = "Uderza wszystkich wrogów papierowymi mieczami, zadając obrażenia bez-żywiołowe oraz zapewnia premię do uniku wszystkim sojusznikom, uwzględniając tych w rezerwie.";
      
      public static var Defender3:String = "Razi wszystkich wrogów potężnymi falami uderzeniowymi, zadając obrażenia od ciemności. \n • Zawsze trafia krytycznie.";
      
      public static var BearBlack:String = "Tnie pojedynczy cel ognistym atakiem oraz nakłada na niego maksymalną dawkę suchości.";
      
      public static var GolemBone:String = "Nadziewa wszystkich wrogów potężnymi bez-żywiołowymi atakami, mogąc ich także osłabić.";
      
      public static var WormBook:String = "Zapewnia premię do celności wszystkim aktywnym sojusznikom.";
      
      public static var BossGigalith:String = "Razi wszystkich wrogów potężnym bez-żywiołowym zaklęciem i poważnie ich przypala, obniżając z czasem ich maks. PŻ.";
      
      public static var BossDevourer:String = "Usuwa bieżącą symulację.";
      
      public static var SketchPapalotl:String = "Dźga wszystkich wrogów bez-żywiołowym atakiem, zadając ogromne obrażenia, które całkowicie ignorują premie obronne (ale nie redukcje).";
      
      public static var SketchGuncat:String = "Wysadza w powietrze wszystkich wrogów potężnym wybuchowym, na wpół magicznym, na wpół fizycznym atakiem. A także ignoruje premie obronne (ale nie redukcje).";
      
      public static var SketchXolotl:String = "Uderza we wszystkich wrogów bez-żywiołowym atakiem, który ich wszystkich osłabia oraz ignoruje premie obronne (ale nie redukcje).";
      
      public static var SketchGlaurung:String = "Zadaje wszystkim wrogom magiczne obrażenia od wiatru, rozprasza ich oraz ignoruje ich premie obronne (ale nie redukcje).";
      
      public static var ArcadeGuoye:String = "Zapewnia znaczną premię do celności wszystkim aktywnym sojusznikom.";
      
      public static var ArcadeTotom:String = "W pełni uzdrawia wszystkich aktywnych sojuszników oraz usuwa wszelkie redukcje i negatywne efekty.";
      
      public static var ArcadeChair:String = "Poważnie redukuje atak magiczny wszystkich wrogów, a także zadaje magiczne wybuchowe obrażenia.";
      
      public static var ArcadePumpkus:String = "Zwykle nic nie robi, ale wezwanie go dwukrotnie (i więcej) w tej samej turze, sprawi że będzie wściekły. Następnie zada ogromne obrażenia losowym wrogom.";
      
      public static var ArcadeGlob:String = "Razi pojedynczego wroga swoim nieświeżym oddechem, powodując rozproszenie, zmęczenie, klątwę, osłabienie, pecha i całun - w tej kolejności. A także zadaje niewielkie, bez-żywiołowe magiczne obrażenia.";
      
      public static var ArcadeSnek:String = "Gryzie pojedynczy cel, zadając bez-żywiołowe obrażenia oraz nakłada na niego maksymalną dawkę poparzeń i trucizny.";
      
      public static var ArcadeRobo:String = "Wali w pojedynczy cel gromowym zaklęciem, ogłusza go oraz poważnie redukuje jego celność.";
      
      public static var ArcadeBosh:String = "Znacznie redukuje atak wszystkich wrogów.";
      
      public static var ArcadeTreagure:String = "Zadaje losowym wrogom obrażenia o losowym żywiole oraz nakłada na nich losowe efekty. \n • Efekty obejmują zamrożenie, podpalenie, ogłuszenie, wyciszenie, zachwianie, zagładę i pecha.";
      
      public static var ArcadePhoenix:String = "Wskrzesza wszystkich aktywnych sojuszników, a jeżeli żyją, to nakłada na nich efekt Anioła Stróża.";
      
      public static var ArcadeMermaid:String = "Zapewnia znaczną premię do uniku wszystkim sojusznikom, uwzględniając tych w rezerwie.";
      
      public static var ArcadeMaw:String = "Zaraża wszystkich wrogów śmiercionośnym wirusem oraz zadaje magiczne obrażenia bio.";
      
      public static var ClassicSlime:String = "Uderza pojedynczy cel żałośnie słabym bez-żywiołowym atakiem.";
      
      public static var ClassicSlimeKing:String = "Rzuca potężne zaklęcie uzdrawiające na wszystkich sojuszników, uwzględniając tych w rezerwie. \n • Usuwa także negatywne efekty.";
      
      public static var ClassicTree:String = "Zadaje niewielkie obrażenia bio wszystkim wrogom, a także może ich na chwilę ogłuszyć.";
      
      public static var ClassicEyeball:String = "Po prostu rzuca na wszystkich wrogów bez-żywiołowe zaklęcie.";
      
      public static var ClassicBeholder:String = "Owija mackami pechową ofiarę, zadając jej obrażenia bio oraz mocno ją zatruwając.";
      
      public static var ClassicWaspRed:String = "Drastycznie redukuje atak magiczny pojedynczego wroga.";
      
      public static var ClassicWaspBlack:String = "Drastycznie redukuje atak pojedynczego wroga.";
      
      public static var ClassicSandworm:String = "Okrutnie obrzyguje wszystkich wrogów, zadając magiczne obrażenia bio oraz redukując ich atak, atak magiczny, obronę i obronę magiczną.";
      
      public static var ClassicEaterIce:String = "Magiczny lodowaty oddech uderza we wszystkich wrogów. Nie zadaje wielkich obrażeń, ale ma dużą szansę na zamrożenie celów.";
      
      public static var ClassicEaterFire:String = "Magiczny płomienny oddech uderza we wszystkich wrogów oraz wysusza ich.";
      
      public static var ClassicClayBlue:String = "Rzuca wietrzne zaklęcie na pojedynczy cel oraz nakłada na niego maksymalną dawkę lekkości.";
      
      public static var ClassicClayRed:String = "Uderza pojedynczy cel ziemnym atakiem oraz nakłada na niego maksymalną dawkę ciężkości.";
      
      public static var ClassicClayDark:String = "Rzuca mroczne zaklęcie na pojedynczy cel, nakłada na niego zagładę oraz redukuje jego atak, atak magiczny, obronę i obronę magiczną.";
      
      public static var ClassicClayLight:String = "Rzuca zaawansowane zaklęcie uzdrawiające na wszystkich sojuszników, uwzględniając tych w rezerwie.";
      
      public static var ClassicProtector:String = "Razi wrogów potężną magiczną wiązką grzmotu. Wszystko co przetrwa zostanie ogłuszone na kilka tur.";
      
      public static var ClassicSlingerGun:String = "Próbuje ustrzelić pojedynczy cel potężnym wybuchowym atakiem.\n • Zawsze ma 50% szans na trafienie.\n • Ignoruje unik oraz premie obronne celu.";
      
      public static var ClassicSlingerSword:String = "Próbuje dźgnąć pojedynczy cel potężnym bez-żywiołowym atakiem.\n • Zawsze ma 50% szans na trafienie.\n • Ignoruje unik oraz premie obronne celu.";
      
      public static var ClassicPraetorian:String = "Zapewnia blok wszystkim aktywnym sojusznikom. Następnie uderza wszystkich wrogów bez-żywiołowym atakiem, który ignoruje ich premie obronne (ale nie redukcje) oraz może ich natychmiastowo zabić.";
      
      public static var ClassicCrystalRed:String = "Razi pojedynczy cel ognistym zaklęciem oraz go podpala.";
      
      public static var ClassicCrystalBlue:String = "Nie zadaje wiele obrażeń, ale ma niewiarygodnie wysoką szansę na zamrożenie celu na wiele tur.";
      
      public static var ClassicGigaGolem:String = "Uderza wroga przytłaczającym ognistym lub lodowym atakiem - to całkowicie losowe!";
      
      public static var ClassicRafflesia:String = "Zadaje przytłaczające obrażenia bio wszystkim wrogom.";
      
      public static var ClassicJack:String = "Niesamowicie wzmacnia atak i atak magiczny wszystkich sojuszników, uwzględniając tych w rezerwie.";
      
      public static var arcadePoison:String = "Toksyczna Bańka";
      
      public static var arcadeNettle:String = "Wijący Bluszcz";
      
      public static var arcadeTeeth:String = "Ostre Zęby";
      
      public static var bonePillar:String = "Kościany Filar";
      
      public static var hellfire:String = "Ogień Piekielny";
      
      public static var pixelswords:String = "Nawałnica Mieczy";
      
      public static var pixelfork:String = "Widelcowa Ekstaza";
      
      public static var paperSword:String = "Papierowe Ostrze";
      
      public static var paperStars:String = "Papierowa Burza";
      
      public static var swordswirl:String = "Wirująca Szabla";
      
      public static var iceneedle:String = "Lodowe Igły";
      
      public static var thunderblast:String = "Elektryczny Podmuch";
      
      public static var snowblast:String = "Mroźny Podmuch";
      
      public static var arcadeFlood:String = "Wodospad";
      
      public static var ritual:String = "Przeklęty Rytuał";
      
      public static var highgravity:String = "Wysoka Grawitacja";
      
      public static var lowgravity:String = "Niska Grawitacja";
      
      public static var snow:String = "Zamieć";
      
      public static var earthquake:String = "Trzęsienie Ziemi";
      
      public static var blossom:String = "Kwitnące Wiśnie";
      
      public static var electrongun:Object = {
         "name":"Działo Elektronowe",
         "desc":"Gromowe zaklęcie, które ogłusza pojedynczy cel." + COOLDOWN_6
      };
      
      public static var sharpen:Object = {
         "name":"Wyostrzenie",
         "desc":"Wydłuża czas działania bieżących efektów negatywnych na wszystkich przeciwnikach. Ewentualnie, może zostać użyte na sojusznikach, uwzględniając tych w rezerwie, w celu wydłużenia czasu działania efektów pozytywnych. Nie wpływa na pośpiech i blok." + COOLDOWN_6
      };
      
      public static var sand:Object = {
         "name":"Podmuch Piasku",
         "desc":"Zaawansowany ziemny atak, który uderza pojedynczy cel." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var sanddune:Object = {
         "name":"Wydma",
         "desc":"Potężny ziemny atak, który uderza pojedynczy cel." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var acid3:Object = {
         "name":"Kwas",
         "desc":"Zaawansowane zaklęcie bio, które uderza pojedynczy cel." + equips.DEBUFF_MDEF
      };
      
      public static var acid2:Object = {
         "name":"Kwasowy Wybuch",
         "desc":"Potężne zaklęcie bio, które uderza wszystkich przeciwników." + ALTERNATIVE_ONE + equips.DEBUFF_MDEF
      };
      
      public static var bubblering:Object = {
         "name":"Bąbelkowy Pierścień",
         "desc":"Wodna zdolność, która wycisza pojedynczy cel. \n • Typ obrażeń jest bazowany na wyższej statystyce."
      };
      
      public static var musicalblast:Object = {
         "name":"Błogosławieństwo Phyrnny",
         "desc":"Zapewnia wszystkim sojusznikom, uwzględniając tych w rezerwie, premię do ataku magicznego oraz efekt regeneracji. " + COOLDOWN_11
      };
      
      public static var geometry:Object = {
         "name":"Geometria",
         "desc":"Potężna bez-żywiołowa zdolność, która uderza pojedynczy cel. \n • Typ obrażeń jest bazowany na wyższej statystyce." + HIGH_ACC + HIGH_CRITS + COOLDOWN_3
      };
      
      public static var fairy2:Object = {
         "name":"Wróżkobomby",
         "desc":"Potężne święte zaklęcie, które uderza wszystkich przeciwników. " + HIGH_ACC + COOLDOWN_2
      };
      
      public static var death:Object = {
         "name":"Żniwiarz",
         "desc":"Mroczny atak, który natychmiastowo zabija pojedynczy cel. " + LOW_ACC + COOLDOWN_6
      };
      
      public static var retroswords:Object = {
         "name":"Demoniczne Miecze",
         "desc":"Potężny mroczny atak, który trafia wszystkich przeciwników." + ALTERNATIVE_ONE + COOLDOWN_2
      };
      
      public static var artattack:Object = {
         "name":"Atak Sztuką",
         "desc":LIMIT_BREAK + "Uzdrawia PŻ i negatywne efekty wszystkich sojuszników oraz zapewnia im premie do PŻ, uniku i celności. \n • Działa też na sojuszników w rezerwie."
      };
      
      public static var sevenswords:Object = {
         "name":"Siedem Mieczy",
         "desc":LIMIT_BREAK + "Zadaje potężne fizyczne obrażenia od świętości wszystkim wrogom." + HIGH_ACC
      };
      
      public function skills()
      {
         super();
      }
   }
}

