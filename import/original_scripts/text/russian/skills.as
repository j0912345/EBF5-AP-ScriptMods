package text.russian
{
   public class skills
   {
      public static var WEP_EFFECTS:String = "\n • Стихия и эффекты зависят от выбранного оружия.";
      
      public static var WEP_EFFECTS_2:String = "\n • Эффекты оружия сильнее обычного.";
      
      public static var LOW_ACC:String = "\n • Низкая точность.";
      
      public static var HIGH_ACC:String = "\n • Высокая точность.";
      
      public static var HIGH_ACC_2:String = "\n • Сверхвысокая точность.";
      
      public static var HIGH_CRITS:String = "\n • Высокая вероятность критических ударов.";
      
      public static var RETARGETS:String = "\n • Если цель убита, атака продолжается по случайному врагу.";
      
      public static var RETARGETS_2:String = "\n • Если цель убита, выбирается новая цель для атаки.";
      
      public static var LIMIT_BREAK:String = "Лимит! ";
      
      public static var ALTERNATIVE_ALL:String = " Можно выбрать целью всех врагов, нанося равномерный урон. ";
      
      public static var ALTERNATIVE_ONE:String = " Может быть сфокусирован на одном враге для большего урона.";
      
      public static var MAY_SURRENDER:String = " Может заставить сдаться даже сильных врагов. ";
      
      public static var SWORD_DANCE:String = " Наносит 3 удара по одному врагу, продолжая атаку по новому, если первый погибнет.";
      
      public static var EXTRA_HITS:String = " Ударяет еще один раз за каждого убитого врага.";
      
      public static var DISPEL_ALL:String = " Рассеивает баффы и положительные эффекты всех врагов.";
      
      public static var HITS_RANDOM_FOES:String = " Выстреливает по одной стреле за каждого врага, но цели случайны.";
      
      public static var COOLDOWN_2:String = "\n • Перезаряжается 1 ход. ";
      
      public static var COOLDOWN_3:String = "\n • Перезаряжается 2 хода. ";
      
      public static var COOLDOWN_4:String = "\n • Перезаряжается 3 хода. ";
      
      public static var COOLDOWN_6:String = "\n • Перезаряжается 5 ходов. ";
      
      public static var COOLDOWN_11:String = "\n • Перезаряжается 10 ходов. ";
      
      public static var defend:Object = {
         "name":"Блок",
         "desc":"Весь урон снижается на 50%. Некоторое снаряжение накладывает дополнительные эффекты."
      };
      
      public static var swap:Object = {
         "name":"Поменяться Очередью",
         "desc":"Выбирает другого героя для действия. Это не тратит ход."
      };
      
      public static var flee:Object = {
         "name":"Сбежать",
         "desc":"Сбежать из боя. Это ненаказуемо."
      };
      
      public static var skip:Object = {
         "name":"Пропустить Ход",
         "desc":"Пропустить ход героя, ничего не делать."
      };
      
      public static var scan:Object = {
         "name":"Сканировать",
         "desc":"Сканирует всех врагов на поле боя, раскрывая их слабости. Данные навсегда сохраняются в Бестиарии."
      };
      
      public static var capture:Object = {
         "name":"Захватить Врага",
         "desc":"Попытаться захватить врага. Раненых врагов с отрицательными статусами проще захватить. Некоторых врагов захватить невозможно."
      };
      
      public static var bring1:Object = {
         "name":"Поменяться с Мэттом",
         "desc":"Поменяться местами с Мэттом, отправляя героя в резерв. Это не тратит ход."
      };
      
      public static var bring2:Object = {
         "name":"Поменяться с Натали",
         "desc":"Поменяться местами с Натали, отправляя героя в резерв. Это не тратит ход."
      };
      
      public static var bring3:Object = {
         "name":"Поменяться с Лансом",
         "desc":"Поменяться местами с Лансом, отправляя героя в резерв. Это не тратит ход."
      };
      
      public static var bring4:Object = {
         "name":"Поменяться с Анной",
         "desc":"Поменяться местами с Анной, отправляя героя в резерв. Это не тратит ход."
      };
      
      public static var bring5:Object = {
         "name":"Поменяться с БезЛапом",
         "desc":"Поменяться местами с БезЛапом, отправляя героя в резерв. Это не тратит ход."
      };
      
      public static var swordslash:Object = {
         "name":"Удар Оружием",
         "desc":"Просто ударить врага своим оружием." + WEP_EFFECTS
      };
      
      public static var earthedge:Object = {
         "name":"Толчок",
         "desc":"Базовая земляная атака по одному врагу."
      };
      
      public static var quakespikes:Object = {
         "name":"Разлом",
         "desc":"Усиленная земляная атака по одному врагу."
      };
      
      public static var cataclysmiccut:Object = {
         "name":"Катаклизм",
         "desc":"Очень мощная земляная атака по одному врагу." + HIGH_CRITS
      };
      
      public static var geysergush:Object = {
         "name":"Гейзер",
         "desc":"Базовая атака водой по одному врагу." + equips.MAY_WET
      };
      
      public static var pouringpike:Object = {
         "name":"Поток",
         "desc":"Усиленная атака водой по одному врагу." + equips.MAY_WET
      };
      
      public static var surgingskewer:Object = {
         "name":"Тайфун",
         "desc":"Мощная атака водой по одному врагу." + equips.MAY_WET + HIGH_CRITS
      };
      
      public static var frostfragment:Object = {
         "name":"Тундра",
         "desc":"Усиленная атака льдом по одному врагу." + equips.MAY_CHILL
      };
      
      public static var glacialglaive:Object = {
         "name":"Айсберг",
         "desc":"Мощная атака льдом по одному врагу." + equips.MAY_CHILL
      };
      
      public static var firespire:Object = {
         "name":"Магма",
         "desc":"Усиленная атака огнем по одному врагу." + equips.MAY_DRY
      };
      
      public static var lavalance:Object = {
         "name":"Извержение",
         "desc":"Мощная атака огнем по одному врагу." + equips.MAY_DRY
      };
      
      public static var nettleknife:Object = {
         "name":"Крапива",
         "desc":"Базовая биологическая атака по одному врагу." + equips.MAY_POISON
      };
      
      public static var shreddingshrub:Object = {
         "name":"Буйный Рост",
         "desc":"Мощная биологическая атака по одному врагу дважды." + equips.MAY_POISON
      };
      
      public static var slicingcyclone:Object = {
         "name":"Кромсающий Циклон",
         "desc":"Мощная атака по всем врагам в несколько ударов." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var stealitem:Object = {
         "name":"Кража",
         "desc":"Крадет случайную вещь у одного врага. Чем выше уровень умения - тем лучше награда." + LOW_ACC
      };
      
      public static var legend:Object = {
         "name":"Легенда",
         "desc":"Очень мощная атака по одному врагу несколько раз." + WEP_EFFECTS + COOLDOWN_3
      };
      
      public static var lightblade:Object = {
         "name":"Клинок Света",
         "desc":"Усиленная атака светом по одному врагу."
      };
      
      public static var holysword:Object = {
         "name":"Сейкен",
         "desc":"Мощная атака светом по одному врагу." + equips.MAY_DISPEL
      };
      
      public static var unleash:Object = {
         "name":"Пробуждение",
         "desc":"Атака, пробуждающая скрытый потенциал оружия." + WEP_EFFECTS + WEP_EFFECTS_2
      };
      
      public static var quickslash:Object = {
         "name":"Хлесткий Удар",
         "desc":"Очень точная атака по одному врагу." + WEP_EFFECTS
      };
      
      public static var temper:Object = {
         "name":"Закалка",
         "desc":"Усиливает атаку героя и накладывает эффект Храбрость. " + COOLDOWN_2
      };
      
      public static var revenge:Object = {
         "name":"Месть",
         "desc":"Потенциально разрушительная атака по одному врагу. Атака становится мощнее, если у Мэтта мало ОЗ или если его напарники мертвы. Ниже указана максимально возможная сила умения." + WEP_EFFECTS
      };
      
      public static var cleaver:Object = {
         "name":"Тесак",
         "desc":LIMIT_BREAK + "Наносит огромный физический урон по одному врагу несколькими ударами." + WEP_EFFECTS + RETARGETS + HIGH_ACC + HIGH_CRITS
      };
      
      public static var ragnarok:Object = {
         "name":"Рагнарек",
         "desc":LIMIT_BREAK + "Наносит всем врагам огромный нестихийный физический урон, после чего усиливает атаку героев и накладывает Храбрость. \n • Распространяется и на героев в резерве." + HIGH_ACC
      };
      
      public static var staffstrike:Object = {
         "name":"Удар Оружием",
         "desc":"Ударить врага базовой физической атакой, высвобождая магическую силу оружия." + WEP_EFFECTS
      };
      
      public static var blessedbunny:Object = {
         "name":"Очищение",
         "desc":"Развеивает дебаффы напарника, снимает отрицательные статусы и накладывает Благословение."
      };
      
      public static var luckystar:Object = {
         "name":"Счастливая Звезда",
         "desc":"Базовое нестихийное заклинание, поражающее одного врага, с очень случайным уроном." + HIGH_CRITS
      };
      
      public static var starshower:Object = {
         "name":"Звездопад",
         "desc":"Мощное нестихийное заклинание, поражающее всех врагов, с очень случайным уроном." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var starpower:Object = {
         "name":"Сила Звезд",
         "desc":"Усиливает магическую атаку героя и накладывает Удачу." + COOLDOWN_2
      };
      
      public static var intoxicate:Object = {
         "name":"Яд",
         "desc":"Простое биологическое заклинание, сильно отравляющее одного врага."
      };
      
      public static var fireball:Object = {
         "name":"Огонь",
         "desc":"Базовое огненное заклинание, поражающее одного врага." + equips.MAY_BURN
      };
      
      public static var fireblast:Object = {
         "name":"Файрболл",
         "desc":"Усиленное огненное заклинание, поражающее одного врага." + equips.MAY_BURN
      };
      
      public static var firestorm:Object = {
         "name":"Буря Огня",
         "desc":"Мощное огненное заклинание, поражающее всех врагов." + ALTERNATIVE_ONE + equips.MAY_BURN
      };
      
      public static var thunderbolt:Object = {
         "name":"Гром",
         "desc":"Базовое заклинание электричества, поражающее одного врага." + equips.MAY_STUN
      };
      
      public static var thundershock:Object = {
         "name":"Разряд",
         "desc":"Усиленное заклинание электричества, поражающее одного врага." + equips.MAY_STUN
      };
      
      public static var thunderstorm:Object = {
         "name":"Грозовой Фронт",
         "desc":"Мощное заклинание электричества, поражающее всех врагов." + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var iceshard:Object = {
         "name":"Лед",
         "desc":"Базовое ледяное заклинание, поражающее одного врага." + equips.MAY_FREEZE
      };
      
      public static var iceshatter:Object = {
         "name":"Ледяные Иглы",
         "desc":"Усиленное ледяное заклинание, поражающее одного врага." + equips.MAY_FREEZE
      };
      
      public static var icestorm:Object = {
         "name":"Пурга",
         "desc":"Мощное ледяное заклинание, поражающее всех врагов." + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var darkpulse:Object = {
         "name":"Спазм Тьмы",
         "desc":"Усиленное заклинание тьмы, поражающее одного врага." + equips.MAY_HEAVY
      };
      
      public static var darkpulsar:Object = {
         "name":"Сингулярность",
         "desc":"Очень мощное заклинание тьмы, поражающее всех врагов." + equips.MAY_HEAVY + COOLDOWN_3
      };
      
      public static var spectralflash:Object = {
         "name":"Спектр",
         "desc":"Усиленное заклинание, поражающее одного врага." + WEP_EFFECTS
      };
      
      public static var rainbowblast:Object = {
         "name":"Радужный Удар",
         "desc":"Мощное заклинание, поражающее всех врагов." + ALTERNATIVE_ONE + WEP_EFFECTS
      };
      
      public static var holylight:Object = {
         "name":"Блаженный Свет",
         "desc":"Усиленное заклинание света, поражающее одного врага" + equips.MAY_WEAKEN
      };
      
      public static var divinejudgement:Object = {
         "name":"Порицание",
         "desc":"Очень мощное заклинание света, поражающее одного врага и похищающее его ОЗ." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var syphon:Object = {
         "name":"Молчание",
         "desc":"Накладывает Немоту на одного врага, предотвращая использование им большинства магических атак." + COOLDOWN_3
      };
      
      public static var syphon2:Object = {
         "name":"Немота",
         "desc":"Накладывает Немоту на всех врагов, предотвращая использование ими большинства магических атак. Может быть использовано против одного врага для усиления эффекта." + COOLDOWN_3
      };
      
      public static var genesis:Object = {
         "name":"Генезис",
         "desc":LIMIT_BREAK + "Наносит огромный урон от света по всем врагам и воскрешает павших напарников, либо дает им Авто-Воскрешение. \n • Распространяется и на героев в резерве." + HIGH_ACC
      };
      
      public static var kyun:Object = {
         "name":"Седьмое Небо",
         "desc":LIMIT_BREAK + "Восстанавливает ОЗ всем напарникам, снимает отрицательные статусы, усиливает их атаку, магическую атаку, защиту и магическую защиту. \n • Распространяется и на героев в резерве. \n • Дает Натали Милоту."
      };
      
      public static var pistolwhip:Object = {
         "name":"Атака Оружием",
         "desc":"Двойная базовая атака по одному врагу." + WEP_EFFECTS
      };
      
      public static var snipe:Object = {
         "name":"Снайпер",
         "desc":"Выстрел в одного врага с очень высокой точностью." + WEP_EFFECTS + HIGH_CRITS + COOLDOWN_2
      };
      
      public static var doubleshot:Object = {
         "name":"Двойной Выстрел",
         "desc":"Двойной выстрел в одного врага." + WEP_EFFECTS + WEP_EFFECTS_2 + RETARGETS
      };
      
      public static var unload:Object = {
         "name":"Разрядить",
         "desc":"Очень мощная атака по одному врагу, состоящая из 6 выстрелов." + WEP_EFFECTS + RETARGETS + HIGH_CRITS + COOLDOWN_6
      };
      
      public static var flameshot:Object = {
         "name":"Зажигательный Патрон",
         "desc":"Базовый огненный выстрел в одного врага." + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var flameburst:Object = {
         "name":"Залп Огня",
         "desc":"Усиленный огненный залп по всем врагам." + equips.DEBUFF_DEF + COOLDOWN_2 + ALTERNATIVE_ONE
      };
      
      public static var bullethell:Object = {
         "name":"Инфернальный Заряд",
         "desc":"Мощный огненный залп в одного врага. Остальные враги получают треть урона." + ALTERNATIVE_ALL + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var plasmashot:Object = {
         "name":"Плазменный Патрон",
         "desc":"Базовый выстрел электричеством в одного врага." + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmawave:Object = {
         "name":"Волна Плазмы",
         "desc":"Усиленный залп электричеством по всем врагам." + equips.DEBUFF_EVA + COOLDOWN_2 + ALTERNATIVE_ONE
      };
      
      public static var plasmafield:Object = {
         "name":"Поле Плазмы",
         "desc":"Мощный залп электричеством в одного врага. Остальные враги получают треть урона. " + ALTERNATIVE_ALL + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var darkshot:Object = {
         "name":"Гравитонный Патрон",
         "desc":"Базовый выстрел тьмой в одного врага." + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var gravitysurge:Object = {
         "name":"Гравитонная Аномалия",
         "desc":"Усиленный залп тьмой по всем врагам." + equips.DEBUFF_MDEF + COOLDOWN_2 + ALTERNATIVE_ONE
      };
      
      public static var antimatterflux:Object = {
         "name":"Выплеск Антиматерии",
         "desc":"Мощный залп тьмой по одному врагу. Остальные враги получают треть урона." + ALTERNATIVE_ALL + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var poisongas:Object = {
         "name":"Газовая Атака",
         "desc":"Сильно отравляет всех врагов и наносит небольшой магический био-урон." + COOLDOWN_4
      };
      
      public static var airstrike1:Object = {
         "name":"Большая Бомба",
         "desc":"Подрывает одного врага магическим взрывным уроном." + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike2:Object = {
         "name":"Поддержка с Воздуха",
         "desc":"Подрывает всех врагов большим магическим взрывным уроном." + ALTERNATIVE_ONE + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike3:Object = {
         "name":"Тополь-М",
         "desc":"Подрывает всех врагов огромным магическим взрывным уроном. Очень долго перезаряжается." + equips.MAY_STAGGER + COOLDOWN_11
      };
      
      public static var medipack1:Object = {
         "name":"Медкомплект",
         "desc":"Лечит одного героя и снимает его отрицательные статусы. " + COOLDOWN_4
      };
      
      public static var medipack2:Object = {
         "name":"Гуманитарная Помощь",
         "desc":"Лечит всех героев и снимает их отрицательные статусы. " + COOLDOWN_4
      };
      
      public static var tankguns:Object = {
         "name":"Спаренные Пулеметы",
         "desc":"Стреляет очередью по всем врагам, нанося взрывной урон." + COOLDOWN_2
      };
      
      public static var armorcrush:Object = {
         "name":"Пробить Броню",
         "desc":"Бьет по цели врукопашную, рассеивая ее баффы." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var hyperbeam:Object = {
         "name":"Гипер-Луч",
         "desc":"Требует два хода, чтобы использовать: первое использование заряжает, второе использование - стреляет. Наносит огромный магический урон по всем врагам." + WEP_EFFECTS
      };
      
      public static var nuke:Object = {
         "name":"Царь-Бомба",
         "desc":LIMIT_BREAK + "Наносит огромный магический огненный урон всем врагам. Поджигает и напарников, и врагов." + HIGH_ACC + "\n • Меняет погоду на Радиацию на 5 ходов. "
      };
      
      public static var oblivion:Object = {
         "name":"Зачистка",
         "desc":LIMIT_BREAK + "Наносит огромный физический взрывной урон всем врагам. Уничтожает танк Ланса, но у него есть запасные." + HIGH_ACC
      };
      
      public static var arrowslash:Object = {
         "name":"Тычок стрелой",
         "desc":"Базовая атака стрелой по одному врагу." + WEP_EFFECTS
      };
      
      public static var bowwhack:Object = {
         "name":"Удар Луком",
         "desc":"Удар луком по одному врагу, заставляющий того задуматься о том, чтобы сдаться. Может сработать даже на сильных врагах." + WEP_EFFECTS + "\n • Это умение не может убить врага."
      };
      
      public static var gust:Object = {
         "name":"Порыв Ветра",
         "desc":"Базовое заклинание ветра, поражающее одного врага." + equips.MAY_LIGHT
      };
      
      public static var whirlwind:Object = {
         "name":"Вихрь",
         "desc":"Усиленное заклинание ветра, поражающее одного врага." + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var hurricane:Object = {
         "name":"Смерч",
         "desc":"Мощное заклинание ветра, поражающее всех врагов." + ALTERNATIVE_ONE + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var logjab:Object = {
         "name":"Бревно",
         "desc":"Базовая земляная атака по одному врагу." + equips.MAY_STAGGER
      };
      
      public static var lumbertrap:Object = {
         "name":"Частокол",
         "desc":"Мощная земляная атака по одному врагу несколько раз." + equips.MAY_STAGGER
      };
      
      public static var leafblade:Object = {
         "name":"Острые Листья",
         "desc":"Базовая двойная биологическая атака по одному врагу." + HIGH_CRITS
      };
      
      public static var razorleaf:Object = {
         "name":"Листья-Лезвия",
         "desc":"Мощная биологическая атака по всем врагам несколько раз." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var soularrow:Object = {
         "name":"Освященная Стрела",
         "desc":"Усиленная атака светом по одному врагу." + equips.MAY_WEAKEN
      };
      
      public static var frostarrow:Object = {
         "name":"Морозная Стрела",
         "desc":"Усиленная ледяная атака по одному врагу." + equips.MAY_FREEZE
      };
      
      public static var aquaarrow:Object = {
         "name":"Водная Стрела",
         "desc":"Усиленная атака водой по одному врагу." + equips.MAY_WET
      };
      
      public static var nitroarrow:Object = {
         "name":"Взрывная Стрела",
         "desc":"Усиленная взрывная атака по одному врагу." + equips.MAY_DISPEL
      };
      
      public static var sparkarrow:Object = {
         "name":"Искрящая Стрела",
         "desc":"Усиленная атака электричеством по одному врагу." + equips.MAY_STUN
      };
      
      public static var soularrow2:Object = {
         "name":"Святой Град Стрел",
         "desc":"Мощная атака светом:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WEAKEN
      };
      
      public static var frostarrow2:Object = {
         "name":"Морозный Обстрел",
         "desc":"Мощная ледяная атака:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var aquaarrow2:Object = {
         "name":"Поток Стрел",
         "desc":"Мощная атака водой:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WET
      };
      
      public static var nitroarrow2:Object = {
         "name":"Взрывной Залп",
         "desc":"Мощная взрывная атака:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_DISPEL
      };
      
      public static var sparkarrow2:Object = {
         "name":"Дождь Искр",
         "desc":"Мощная атака электричеством:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var piercingshot:Object = {
         "name":"Выстрел Навылет",
         "desc":"Очень точный выстрел." + equips.IGNORES_BUFFS + HIGH_CRITS + WEP_EFFECTS
      };
      
      public static var comboshot:Object = {
         "name":"Комбо Выстрел",
         "desc":"Комбо из трех мощных и точных выстрелов." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var arrowrain:Object = {
         "name":"Дождь из Стрел",
         "desc":"Атака множеством стрел, наносящая урон всем врагам несколько раз." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var renew:Object = {
         "name":"Заживление",
         "desc":"Простое магическое лечение одного героя."
      };
      
      public static var remedy:Object = {
         "name":"Преображение",
         "desc":"Усиленное магическое лечение одного героя. Накладывает Благословение."
      };
      
      public static var motherearth:Object = {
         "name":"Мать-Земля",
         "desc":LIMIT_BREAK + "Наносит огромный магический био-урон всем врагам и отравляет их. \n • Накладывает Благословение на всех героев." + HIGH_ACC + "\n • Меняет погоду на Ясно на 5 ходов. \n • Распространяется и на героев в резерве."
      };
      
      public static var mightyoak:Object = {
         "name":"Могучий Дуб",
         "desc":LIMIT_BREAK + "Наносит огромный физический урон от земли всем врагам несколькими сильными ударами." + HIGH_ACC
      };
      
      public static var backstab:Object = {
         "name":"Подлый Удар",
         "desc":"Наносит неожиданный базовый удар противнику в спину." + WEP_EFFECTS
      };
      
      public static var multistab:Object = {
         "name":"Фехтование",
         "desc":"Базовая атака по одному врагу 4 раза." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var bladeblitz:Object = {
         "name":"Мелькающее Лезвие",
         "desc":"Мощная атака по одному врагу 11-ю бешеными ударами." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var swiftslash:Object = {
         "name":"Разрез с Разбега",
         "desc":"Очень быстрая режущая атака по всем врагам." + WEP_EFFECTS + HIGH_ACC + COOLDOWN_2
      };
      
      public static var ninelives:Object = {
         "name":"Девять Жизней",
         "desc":"Лечит всех героев. Накладывает статус Авто-воскрешение и воскрешает павших героев. Долго перезаряжается." + COOLDOWN_11
      };
      
      public static var starblast:Object = {
         "name":"Звездный Залп",
         "desc":"Наносит магический нестихийный урон всем врагам. Долго перезаряжается." + equips.MAY_DISPEL + HIGH_ACC + COOLDOWN_11
      };
      
      public static var sworddance:Object = {
         "name":"Атака в Прыжке",
         "desc":"Базовая атака оружием:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance2:Object = {
         "name":"Танец с Саблями",
         "desc":"Усиленная атака оружием:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance3:Object = {
         "name":"Финальный Разрез",
         "desc":"Мощная атака оружием:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var darkslash:Object = {
         "name":"Удар из Тени",
         "desc":"Усиленная атака тьмой:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var darkslash2:Object = {
         "name":"Полуночное Танго",
         "desc":"Мощная атака тьмой:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var holyslash:Object = {
         "name":"Праведный Удар",
         "desc":"Усиленная атака светом:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var holyslash2:Object = {
         "name":"Блаженный Вальс",
         "desc":"Мощная атака светом:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var lightningslash:Object = {
         "name":"Молниеносный Удар",
         "desc":"Усиленная атака электричеством:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var lightningslash2:Object = {
         "name":"Электро-Буги",
         "desc":"Мощная атака электричеством:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var windslash:Object = {
         "name":"Свистящий Размах",
         "desc":"Усиленная атака ветром:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var windslash2:Object = {
         "name":"Ураганное Диско",
         "desc":"Мощная атака ветром:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var waterslash:Object = {
         "name":"Мокрый Меч",
         "desc":"Усиленная атака водой:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var waterslash2:Object = {
         "name":"Мокрая Ламбада",
         "desc":"Мощная атака водой:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var sushicat:Object = {
         "name":"Суши Кот",
         "desc":"Прыгая вокруг, наносит магический урон трем случайным врагам и лечит двух героев с самыми низкими ОЗ." + COOLDOWN_3
      };
      
      public static var sushicat2:Object = {
         "name":"Суши Кот!",
         "desc":"Прыгая вокруг, наносит магический урон трем случайным врагам и лечит двух героев с самыми низкими ОЗ. \n • Накладывает на героев Удачу." + COOLDOWN_3
      };
      
      public static var berserk:Object = {
         "name":"Берсерк",
         "desc":"Накладывает Берсерк на врага или героя, заставляя его бесконтрольно атаковать с увеличенной силой. " + COOLDOWN_2
      };
      
      public static var berserk2:Object = {
         "name":"Бесконтрольная Ярость",
         "desc":"Накладывает Берсерк на всех героев или на всех врагов. Может быть сфокусирован на одном герое или враге для усиления эффекта. " + COOLDOWN_3
      };
      
      public static var cherish:Object = {
         "name":"Умиление",
         "desc":"Накладывает Милоту, делая героя недостижимой для атак, направленных в одну цель. " + COOLDOWN_3
      };
      
      public static var cherish2:Object = {
         "name":"Аура Милоты",
         "desc":"Накладывает Милоту на всех героев. Может быть сфокусирован на одном герое для усиления эффекта. " + COOLDOWN_4
      };
      
      public static var thecreator:Object = {
         "name":"Создатель",
         "desc":LIMIT_BREAK + "Наносит огромный магический урон от света всем врагам. \n • Накладывает Удачу на всех героев. \n • Распространяется и на героев в резерве." + HIGH_ACC + "\n • Меняет погоду на Ясно на 5 ходов."
      };
      
      public static var thedestroyer:Object = {
         "name":"Разрушитель",
         "desc":LIMIT_BREAK + "Наносит огромный физический урон от тьмы всем врагам несколькими атаками." + DISPEL_ALL + HIGH_ACC
      };
      
      public static var snowbunny:Object = {
         "name":"Снежные зайчики",
         "desc":"Ледяное заклинание, поражающее всех врагов." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var snowcat:Object = {
         "name":"Снежные котики",
         "desc":"Сильное ледяное заклинание, поражающее всех врагов и подготавливающее замораживающее комбо." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var ivy:Object = {
         "name":"Плющ",
         "desc":"Биологическая атака, поражающая одного врага." + equips.MAY_POISON
      };
      
      public static var vines:Object = {
         "name":"Лианы",
         "desc":"Сильная биологическая атака, поражающая одного врага несколько раз." + equips.MAY_POISON + equips.DEBUFF_EVA
      };
      
      public static var energy:Object = {
         "name":"Энергия",
         "desc":"Базовое взрывное заклинание, поражающее одного врага." + HIGH_CRITS
      };
      
      public static var energy2:Object = {
         "name":"Энергетическая Бомба",
         "desc":"Усиленное взрывное заклинание, поражающее одного врага." + HIGH_CRITS
      };
      
      public static var energy3:Object = {
         "name":"Энергетическая Канонада",
         "desc":"Мощное взрывное заклинание, поражающее всех врагов." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var bubbles:Object = {
         "name":"Пузырь",
         "desc":"Базовое заклинание воды, поражающее одного врага." + equips.MAY_WET
      };
      
      public static var whirlpool:Object = {
         "name":"Водоворот",
         "desc":"Усиленное заклинание воды, поражающее одного врага." + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var vortex:Object = {
         "name":"Гигантский Пузырь",
         "desc":"Мощное заклинание воды, поражающее всех врагов." + ALTERNATIVE_ONE + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var laserblade:Object = {
         "name":"Шок",
         "desc":"Усиленная атака электричеством по одному врагу." + equips.MAY_STAGGER
      };
      
      public static var lasersword:Object = {
         "name":"Замыкание",
         "desc":"Мощная атака электричеством по одному врагу." + equips.MAY_STAGGER
      };
      
      public static var bulletbob:Object = {
         "name":"Крупный Калибр",
         "desc":"Усиленная взрывная атака по одному врагу." + HIGH_CRITS
      };
      
      public static var bigbullet:Object = {
         "name":"Гигантская Пуля",
         "desc":"Мощная взрывная атака по одному врагу." + HIGH_CRITS
      };
      
      public static var gale:Object = {
         "name":"Циклон",
         "desc":"Усиленная атака ветром по одному врагу." + equips.MAY_LIGHT
      };
      
      public static var tempest:Object = {
         "name":"Муссон",
         "desc":"Мощная атака ветром по одному врагу." + equips.MAY_LIGHT
      };
      
      public static var powermetal:Object = {
         "name":"Тяжелый Рок",
         "desc":"Наносит магический урон ветром всем врагам и лечит героев." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var air:Object = {
         "name":"Дуновение",
         "desc":"Базовое заклинание ветра, поражающее одного врага." + equips.MAY_STAGGER
      };
      
      public static var air2:Object = {
         "name":"Волна Воздуха",
         "desc":"Усиленное заклинание ветра, поражающее одного врага." + equips.MAY_STAGGER
      };
      
      public static var air3:Object = {
         "name":"Ударная Волна",
         "desc":"Мощное заклинание ветра, поражающее всех врагов." + ALTERNATIVE_ONE + equips.MAY_STAGGER
      };
      
      public static var sawblade:Object = {
         "name":"Циркулярка",
         "desc":"Усиленная нестихийная атака, поражающая одного врага." + equips.IGNORES_BUFFS + equips.MAY_DEATH
      };
      
      public static var sawblades:Object = {
         "name":"Потрошитель",
         "desc":"Мощная нестихийная атака, поражающая всех врагов." + equips.IGNORES_BUFFS + equips.MAY_DEATH + COOLDOWN_2
      };
      
      public static var gaia:Object = {
         "name":"Семя Геи",
         "desc":"Базовое заклинание земли, поражающее одного врага." + equips.MAY_TIRE
      };
      
      public static var gaia2:Object = {
         "name":"Росток Геи",
         "desc":"Усиленное заклинание земли, поражающее одного врага." + equips.MAY_TIRE
      };
      
      public static var gaia3:Object = {
         "name":"Цветок Геи",
         "desc":"Мощное заклинание земли, поражающее всех врагов." + ALTERNATIVE_ONE + equips.MAY_TIRE
      };
      
      public static var firespin:Object = {
         "name":"Спираль Огня",
         "desc":"Сильное огненное заклинание, поражающее всех врагов." + equips.MAY_BURN + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var purgingflame:Object = {
         "name":"Очищающее Пламя",
         "desc":"Заклинание света, рассеивающее положительные эффекты одного врага и снижающее его магическую атаку." + HIGH_ACC
      };
      
      public static var screamer:Object = {
         "name":"Скример",
         "desc":"Наносит магический урон от тьмы всем врагам и снижает их атаку." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var heal:Object = {
         "name":"Лечить",
         "desc":"Простое магическое исцеление одного героя." + COOLDOWN_2
      };
      
      public static var healmore:Object = {
         "name":"Лечить Больше",
         "desc":"Мощное магическое исцеление всех героев. Может быть сфокусировано в одного героя для усиления исцеления." + COOLDOWN_2
      };
      
      public static var revive:Object = {
         "name":"Воскрешение",
         "desc":"Воскрешает мертвого героя или дает Авто-Воскрешение живому. "
      };
      
      public static var purify:Object = {
         "name":"Избавление",
         "desc":"Снимает статусы с врагов или с героев. Не работает с нейтральными статусами типа Влага или Сухость. " + COOLDOWN_3
      };
      
      public static var lockon:Object = {
         "name":"Захват Цели",
         "desc":"Усиливает точность героя и накладывает Удачу. " + COOLDOWN_2
      };
      
      public static var protect:Object = {
         "name":"Защита",
         "desc":"Усиливает защиту всех героев, включая тех, кто в резерве." + COOLDOWN_6
      };
      
      public static var barrier:Object = {
         "name":"Барьер",
         "desc":"Усиливает магическую защиту всех героев, включая тех, кто в резерве." + COOLDOWN_6
      };
      
      public static var reflex:Object = {
         "name":"Рефлекс",
         "desc":"Усиливает уклонение всех героев, включая тех, кто в резерве. Также снимает Пелену с активных героев. " + COOLDOWN_6
      };
      
      public static var guardian:Object = {
         "name":"Эгида",
         "desc":"Усиливает защиту и магическую защиту героя. " + COOLDOWN_2
      };
      
      public static var dispel:Object = {
         "name":"Рассеивание",
         "desc":"Рассеивает все баффы и положительные статусы врагов. Может быть использовано на героях, чтобы рассеять дебаффы. " + COOLDOWN_6
      };
      
      public static var flare:Object = {
         "name":"Вспышка",
         "desc":"Снижает точность всех врагов." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var bind:Object = {
         "name":"Путы",
         "desc":"Снижает уклонение всех врагов." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var debilitate:Object = {
         "name":"Уничтожение Брони",
         "desc":"Снижает защиту всех врагов." + COOLDOWN_6
      };
      
      public static var enfeeble:Object = {
         "name":"Уничтожение Ауры",
         "desc":"Снижает магическую защиту всех врагов." + COOLDOWN_6
      };
      
      public static var teradrill:Object = {
         "name":"Гига-Бур",
         "desc":"Мощная земляная атака, поражающая одну цель. Наносит куда больший урон, если у противника усилена защита, магическая защита, или если враг блокирует. " + COOLDOWN_3
      };
      
      public static var encore:Object = {
         "name":"Выход на Бис",
         "desc":"Дает герою еще одно действие. Применять на себя бессмысленно." + COOLDOWN_3
      };
      
      public static var firecrackers:Object = {
         "name":"Петарды",
         "desc":"Накладывает Невезение на всех врагов и Удачу на всех героев, включая тех, кто в резерве." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var abzero:Object = {
         "name":"Абсолютный Ноль",
         "desc":LIMIT_BREAK + "Наносит большой магический урон от льда всем врагам, снижает их уклонение и замораживает их. \n • Перезаряжает все умения." + HIGH_ACC
      };
      
      public static var tsunami:Object = {
         "name":"Цунами",
         "desc":LIMIT_BREAK + "Наносит огромный физический или магический урон от воды всем врагам и накладывает Влагу. \n • Тип урона зависит от большего параметра атаки." + equips.MAY_DEATH + HIGH_ACC_2
      };
      
      public static var supernova:Object = {
         "name":"Сверхновая",
         "desc":LIMIT_BREAK + "Наносит огромный огненный магический урон всем врагам и героям, также поджигая их. \n • Увернуться невозможно."
      };
      
      public static var deathmetal:Object = {
         "name":"Металлопокалипсис!",
         "desc":LIMIT_BREAK + "Наносит огромный магический урон от ветра всем врагам. Лечит всех героев и накладывает на них Решимость. \n • Распространяется и на героев в резерве." + HIGH_ACC
      };
      
      public static var annihilate:Object = {
         "name":"Аннигиляция",
         "desc":LIMIT_BREAK + "Атака с высоким шансом мгновенно убить всех врагов. Не работает на боссах и имеет очень низкую точность."
      };
      
      public static var ion:Object = {
         "name":"Ионная Пушка",
         "desc":LIMIT_BREAK + "Наносит огромный магический урон от электричества всем врагам и может их оглушить. \n • Заряжает Гипер-луч Ланса." + HIGH_ACC_2
      };
      
      public static var blackhole:Object = {
         "name":"Черная Дыра",
         "desc":LIMIT_BREAK + "Наносит огромный магический урон от тьмы всем врагам и утяжеляет их. Убивает героя, использовавшего этот навык." + HIGH_ACC
      };
      
      public static var rapture:Object = {
         "name":"Дремлющая Сила",
         "desc":LIMIT_BREAK + "Наносит огромный физический или магический урон всем врагам. \n • Тип урона зависит от большего параметра атаки." + WEP_EFFECTS + HIGH_ACC
      };
      
      public static var bones:String = "Кости";
      
      public static var bonestar:String = "Костяная Звезда";
      
      public static var groundblade:String = "Меч Нежити";
      
      public static var fallingstar:String = "Падающая Звезда";
      
      public static var firerock:String = "Горящий Булыжник";
      
      public static var stalactite:String = "Сталактит";
      
      public static var stalactite2:String = "Сталактиты";
      
      public static var fume:String = "Огненная Пыль";
      
      public static var eruption:String = "Извержение";
      
      public static var scald:String = "Опаляющая Пыль";
      
      public static var rain:String = "Дождь";
      
      public static var sandstorm:String = "Песчаная Буря";
      
      public static var hail:String = "Град";
      
      public static var nitro:String = "Глубокий Ожог";
      
      public static var acid:String = "Кислотный Ожог";
      
      public static var bamboo:String = "Бамбук";
      
      public static var bamboo2:String = "Бамбуковая Ловушка";
      
      public static var bluebolt:String = "Голубая Молния";
      
      public static var deepfreeze:String = "Глубокая Заморозка";
      
      public static var wafer:String = "Вафля";
      
      public static var present:String = "Взрывной Подарок";
      
      public static var plasmacage:String = "Электро-Клеть";
      
      public static var tankcannon:String = "Главный Калибр";
      
      public static var candycanes:String = "Леденцы";
      
      public static var bonefish:String = "Скелет Рыбы";
      
      public static var riceball:String = "Рисовая бомба";
      
      public static var mushroom:String = "Гриб";
      
      public static var lifedrain:String = "Похищение Жизни";
      
      public static var smokepuff:String = "Дымок";
      
      public static var confusion:String = "Смятение";
      
      public static var ink:String = "Шар Чернил";
      
      public static var chocolate:String = "Шоколадный Шар";
      
      public static var tentacles:String = "Тентакли";
      
      public static var slowdown:String = "Замедление";
      
      public static var speedup:String = "Ускорение";
      
      public static var poisonroot:String = "Ядовитый Корень";
      
      public static var burningroot:String = "Горящий Корень";
      
      public static var searoot:String = "Морской Корень";
      
      public static var bombblast:String = "Взрыв";
      
      public static var bigblast:String = "Большой Взрыв";
      
      public static var cactus:String = "Кактус";
      
      public static var cacti:String = "Кактусы";
      
      public static var spark:String = "Искра";
      
      public static var bigspark:String = "Большая Искра";
      
      public static var talisman:String = "Талисман Печати";
      
      public static var ember:String = "Угли";
      
      public static var fireblast2:String = "Стена Огня";
      
      public static var firecrystals:String = "Огненные Кристаллы";
      
      public static var zephyrcrystals:String = "Осколки Ветра";
      
      public static var frost:String = "Заморозки";
      
      public static var rockslide:String = "Оползень";
      
      public static var avalanche:String = "Лавина";
      
      public static var blackspikes:String = "Черные Шипы";
      
      public static var stonefist:String = "Каменный Кулак";
      
      public static var spiderweb:String = "Паутина";
      
      public static var spiders:String = "Нашествие Пауков";
      
      public static var geometry2:String = "Искривление Пространства";
      
      public static var geometry3:String = "Поле Искривления";
      
      public static var sacrifice:String = "Жертвоприношение";
      
      public static var bigroot:String = "Большой Корень";
      
      public static var seabomb:String = "Мина";
      
      public static var fairy:String = "Взрывная Фея";
      
      public static var fly:String = "Бомбо-Муха";
      
      public static var starpunch:String = "Звездный Удар";
      
      public static var darken:String = "Невидимость";
      
      public static var lighten:String = "Зачарование";
      
      public static var SlimeChocolate:String = "Плюет в одного врага, нанося физический урон землей, снижая точность.";
      
      public static var SlimeIcecream:String = "Использует базовую ледяную атаку, накладывающую Озноб на одного врага.";
      
      public static var SlimeSand:String = "Использует базовую биологическую атаку, которая может оглушить одного врага.";
      
      public static var SlimeLava:String = "Использует базовую огненную атаку, которая сушит одного врага.";
      
      public static var SlimeMouse:String = "Использует слабую атаку электричеством, оглушающую одного врага.";
      
      public static var SlimeWater:String = "Использует постыдно слабую атаку водой против одного врага.";
      
      public static var SlimeMud:String = "Использует базовую биологическую атаку против одного врага.";
      
      public static var SlimeBunny:String = "Дает регенерацию всем героям, в том числе и тем, кто в резерве.";
      
      public static var SpriteFire:String = "Меняет погоду на Обжигающий Пепел на 5 ходов.";
      
      public static var SpriteIce:String = "Меняет погоду на Метель на 5 ходов.";
      
      public static var SpriteThunder:String = "Меняет погоду на Заряженный Воздух на 5 ходов.";
      
      public static var SpriteRock:String = "Меняет погоду на Землетрясение на 5 ходов.";
      
      public static var SpriteWind:String = "Меняет погоду на Ураган на 5 ходов.";
      
      public static var ChomperLeafy:String = "Меняет погоду на Свежий Ветерок на 5 ходов.";
      
      public static var ChomperSeaweed:String = "Меняет погоду на Дождь на 5 ходов.";
      
      public static var ChomperMagma:String = "Меняет погоду на Солнечно на 5 ходов.";
      
      public static var ChomperMutant:String = "Меняет погоду на Кислотный Дождь на 5 ходов.";
      
      public static var CreepThorny:String = "Укалывает усиленной земляной атакой, которая может оглушить врага.";
      
      public static var CreepIcicle:String = "Укалывает усиленной ледяной атакой, которая может наложить Озноб на врага.";
      
      public static var CreepHermit:String = "Бьет одного врага усиленной нестихийной атакой.";
      
      public static var CreepGreen:String = "Прыгает на врага три раза мощными нестихийными атаками." + RETARGETS_2;
      
      public static var CreepRed:String = "Врезается во врага сильной атакой ветром, ошеломляющей врага.";
      
      public static var CreepBlue:String = "Мощно взрывается, оглушая врага.";
      
      public static var Defender1:String = "Подрывает всех врагов мощным электрическим взрывом, который может ошеломить их.";
      
      public static var Defender2:String = "Поливает одного врага мощным потоком воды, который может намочить его. ";
      
      public static var DogFriend:String = "Дает всем героям Милоту, не давая врагам атаковать героев напрямую.";
      
      public static var DogMaxi:String = DogFriend;
      
      public static var DogTanuki:String = "Прыгает на врага огненной атакой, обжигая его.";
      
      public static var DogWolf:String = "Прыгает на врага ледяной атакой, замораживая его.";
      
      public static var DogZap:String = "Прыгает на всех врагов оглушающей атакой электричеством, которая может ошеломить их.";
      
      public static var DogMage:String = "Атакует всех врагов злобной магией света, проклиная их.";
      
      public static var ChibiKnightUltra:String = "Усиливает атаку всех героев, включая тех, что в резерве, после чего атакует одного врага несколько раз." + RETARGETS_2;
      
      public static var BushGreen:String = "Кричит на врагов, немного снижая их атаку.";
      
      public static var BushRed:String = "Кричит на врагов, немного снижая их защиту.";
      
      public static var BushDark:String = "Злобно шипит на врагов, немного снижая их уклонение.";
      
      public static var BushMud:String = "Кричит на врагов, немного снижая их магическую атаку.";
      
      public static var BushSand:String = "Злобно шипит на врагов, немного снижая их магическую защиту.";
      
      public static var GolemTopaz:String = "Бьет врага мощными электрическими атаками, которые могут оглушить его.";
      
      public static var GolemPearl:String = "Морозит всех врагов мощной магией льда и меняет погоду на Сильный Град на 5 ходов.";
      
      public static var GolemAmethyst:String = "Бьет врага мощными нестихийными атаками, которые могут ошеломить его.";
      
      public static var FishSteam:String = "Влетает в противников на сверхзвуковой скорости, что может их сделать легче.";
      
      public static var FishGold:String = "Опаляет всех врагов светлым магическим лучом, который их сушит.";
      
      public static var FishJet:String = "Поливает врагов пулями, нанося базовый взрывной урон.";
      
      public static var HandSkeleton:String = "Накладывает Удачу на всех героев, в том числе героям в резерве, увеличивая их шансы в случайных событиях.";
      
      public static var HandZombie:String = "Накладывает Приговор на всех врагов, убивая их через 3 хода.";
      
      public static var HandMagma:String = "Накладывает Берсерк на всех героев, заставляя их бесконтрольно атаковать с увеличенной силой.";
      
      public static var FlybotBlue:String = "Инвертирует баффы и дебаффы всех героев, меняя местами положительные и отрицательные.";
      
      public static var FlybotYellow:String = "Инвертирует баффы и дебаффы всех врагов, меняя местами положительные и отрицательные.";
      
      public static var FlybotRed:String = "Инвертирует баффы и дебаффы одного героя или врага, меняя местами положительные и отрицательные.";
      
      public static var FallenLost:String = "Бьет врага атакой ветром, накладывая Решимость на всех героев, включая тех, что в резерве.";
      
      public static var FallenCrucified:String = "Атакует врага режущей атакой светом, которая может мгновенно его убить.";
      
      public static var FallenDrowned:String = "Элегантно рассеивает дебаффы всех активных героев.";
      
      public static var FallenBurned:String = "Высушивает всех врагов огненной атакой и меняет погоду на Песчаную Бурю на 5 ходов.";
      
      public static var FallenBeheaded:String = "Протыкает врага атакой тьмой и накладывает Храбрость на всех героев, включая тех, что в резерве.";
      
      public static var PixelSlime:String = "Бьет врага слабой биологической магией, делая его очень уставшими.";
      
      public static var PixelBush:String = "Бьет врага слабой магией огня, делая его очень сухими.";
      
      public static var PixelBat:String = "Бьет врага слабой магией тьмы, делая его очень неудачливыми.";
      
      public static var PixelIdol:String = "Бьет врага слабой магией взрывов, делая его очень слабыми.";
      
      public static var MonolithViking:String = "Накладывает Ускорение на всех героев, буквально давая еще одно действие каждому.";
      
      public static var MonolithAncient:String = "Дает Блок всем героям, предоставляя огромную защиту на один ход.";
      
      public static var MonolithCosmic:String = "Подрывает поле боя ужасающим темным магическим взрывом по всем врагам.";
      
      public static var IdolGem:String = "Накладывает Невесомость на всех героев, включая тех, что в резерве, защищая их от урона от земли.";
      
      public static var IdolStone:String = "Накладывает Сухость на всех героев, включая тех, что в резерве, защищая их от урона от льда и от электричества.";
      
      public static var IdolMetal:String = "Накладывает Тяжесть на всех героев, включая тех, что в резерве, защищая их от урона от ветра.";
      
      public static var IdolWood:String = "Накладывает Благословение на всех героев, включая тех, что в резерве, защищая их от статусных эффектов.";
      
      public static var MirrorWise:String = IdolWood;
      
      public static var MirrorAngel:String = "Накладывает Зачарование на всех героев, защищая их от магического урона, но делая их уязвимыми к физическому урону.";
      
      public static var MirrorDemon:String = "Накладывает Невидимость на всех героев, защищая их от физического урона, но делая их уязвимыми к магическому урону.";
      
      public static var MirrorHaunted:String = "Кусает врага мощной атакой тьмой, которая проклинает его.";
      
      public static var MammothWooly:String = "Падает на одного врага, нанося огромный нестихийный урон. Задевает остальных врагов, нанося треть урона." + equips.MAY_STUN;
      
      public static var MammothCamel:String = "Усиливает магическую защиту всех героев, включая тех, что в резерве, после чего атакует всех врагов земляной атакой.";
      
      public static var MammothWar:String = "Усиливает защиту всех героев, включая тех, что в резерве, после чего атакует всех врагов взрывной магической атакой." + equips.MAY_STAGGER;
      
      public static var SquidPink:String = "Выплескивает чернила на врагов, нанося огромный урон тьмой, снижающий точность врагов и делая их невидимыми.";
      
      public static var SquidPurple:String = "Снижает точность всех врагов и может наложить Приговор.";
      
      public static var SquidLime:String = "Протыкает всех врагов мощной атакой электричеством, оглушая их.";
      
      public static var Underlegs:String = "Применяет Рассеивание на всех врагов, после чего обрушивает на них ураган нестихийных атак.";
      
      public static var SlimeBigSand:String = "Использует мощную биологическую атаку против одного врага, которая может его оглушить.";
      
      public static var SlimeBigLava:String = "Использует мощную атаку огнем против одного врага, которая сильно его обжигает.";
      
      public static var SlimeBigMud:String = "Использует грибные биологические атаки на всех врагах, выпуская оглушающие споры.";
      
      public static var SlimeBigIcecream:String = "Морозит всех врагов слабой ледяной магией и подготавливает водяное или ледяное комбо.";
      
      public static var SlimeBigChocolate:String = "Отрыгивает на всех врагов потоки шоколада, нанося магический урон от земли и утяжеляя их.";
      
      public static var WormPutrid:String = "Использует слабую нестихийную атаку паутиной и значительно снижает уклонение врага.";
      
      public static var WormScaly:String = "Делает всех напарников мокрыми, в том числе тех, что в резерве, защищая их от огненного урона.";
      
      public static var WormFuzzy:String = "Слабо кусает врага, нанося небольшой нестихийный урон и заражая его смертельным вирусом.";
      
      public static var WormCutie:String = "Избавляет всех напарников от нейтральных статусов, включая: Влагу, Сухость, Озноб, Тяжесть, Невесомость, Зачарование и Невидимость.";
      
      public static var WraithIce:String = "Пронзает сердце врага ледяной атакой, которая может его мгновенно убить.";
      
      public static var WraithFire:String = "Атакует врага магией адского огня, которая накладывает Берсерк. \n • Будет лучше, если враг этого не переживет.";
      
      public static var WraithSteel:String = "Подрывает врага несколько раз взрывными атаками, которые могут ошеломить его и снизить его защиту.";
      
      public static var WraithLeaf:String = "Стреляет во врага несколько раз биологическими атаками, которые отравляют его и снижают его магическую защиту.";
      
      public static var WraithMaster:String = "Стреляет магией тьмы в одного врага, накладывающей сильную Немоту.";
      
      public static var Glitch2:String = "???-?eII ПАРОЛЬ НЕ ВЕРЕН! ### \nОШИБКА: 0x000002";
      
      public static var Glitch1:String = "??-//ВНИМАНИЕ: ПРОФИЛЬ ##УДАЛЕН## ТЕХПОДДЕРЖКА ##НЕ ПОМОЖЕТ##!! 0?-//??";
      
      public static var GloopStone:String = "Делает врага невидимым, что удвоит магический урон по нему.";
      
      public static var GloopCrystal:String = "Делает врага зачарованным, что удвоит физический урон по нему.";
      
      public static var GloopAsh:String = "Накладывает Храбрость на всех героев, включая тех, что в резерве, увеличивая вероятность критических ударов.";
      
      public static var GloopWood:String = "Накладывает Решимость на всех героев, включая тех, что в резерве, предотвращая смертельный урон, если здоровье героя больше 50%.";
      
      public static var HydraZombie:String = "Мгновенно убивает всех врагов. Если эффект не сработал, наносит небольшой урон тьмой.";
      
      public static var HydraMagma:String = "Бьет всех врагов мощной огненной атакой, которая обжигает их.";
      
      public static var HydraIce:String = "Кусает врага несколько раз, нанося очень мощный физический ледяной урон.";
      
      public static var DragonEarth:String = "Снижает магическую защиту всех врагов, после чего плюет смертельнейшей кислотой, нанося им всем магический био-урон.";
      
      public static var DragonSky:String = "Снижает защиту всех врагов, после чего атакует ураганом перьев, нанося им всем физический урон от ветра.";
      
      public static var DragonSea:String = "Снижает атаку всех врагов после чего атакует, нанося огромный магический урон и накладывая Влагу на них всех.";
      
      public static var DragonOmega:String = "Снижает магическую атаку всех врагов, после чего подрывает, нанося огромный магический урон от света, который может оглушить их.";
      
      public static var BatBlood:String = "Похищает ОЗ у врага простой биологической атакой и передает его вызвавшему герою.";
      
      public static var BatSnow:String = "Накладывает Озноб на всех героев, включая тех, что в резерве, защищая их от био-урона.";
      
      public static var BatThunder:String = "Накладывает Смятение на всех активных героев на много ходов, фактически активируя авто-бой.  \n • Не пробуйте в битве с Боссом.";
      
      public static var BatBone:String = "Накладывает Вирус на всех героев, даже если у них сопротивление к нему.";
      
      public static var BearBrown:String = "Раздирает врага нестихийными атаками. Наносит куда больше урона, если у вызвавшего мало ОЗ и его напарники мертвы. \n • Максимальная мощность - 1000.";
      
      public static var BearGrolar:String = "Раздирает всех врагов лавиной ледяных атак, которые могут заморозить их.";
      
      public static var BearPanda:String = "Пронзает всех врагов чередой био атак, которые могут отравить их.";
      
      public static var BitIce:String = "Произносит заклинание Барьер, которое усиливает магическую защиту всех героев, включая тех, что в резерве.";
      
      public static var BitThunder:String = "Произносит заклинание Защита, которое усиливает защиту всех героев, включая тех, что в резерве. ";
      
      public static var BitHoly:String = "Произносит мощное лечащее заклинание, которое лечит всех героев.";
      
      public static var BitFire:String = "Нападает на врага огненной атакой, которая снижает его защиту и может поджечь.";
      
      public static var BitWind:String = "Нападает на врага атакой ветром, которая снижает его магическую защиту и может оглушить.";
      
      public static var BitWater:String = "Брызгает на всех врагов слабой магией воды, которая накладывает Влагу, подготавливая ледяное или электрическое комбо.";
      
      public static var BitPoison:String = "Отравляет всех врагов слабой биологической магией, нанося небольшой урон каждый ход.";
      
      public static var BoulderCoral:String = "Прыгает на врага атакой водой, которая ошеломляет его.";
      
      public static var BoulderMarble:String = "Бьет всех врагов магией ветра, накладывающей сильную Немоту.";
      
      public static var BoulderObsidian:String = "Атакует всех врагов огромной игральной костью, нанося очень случайный огненный магический урон и поджигая их.";
      
      public static var BoulderDirt:String = "Бьет всех врагов земляной физической атакой, накладывающей Усталость.";
      
      public static var BoulderSandstone:String = "Прыгает на одного врага и наносит огромный урон от земли.";
      
      public static var CatNinja:String = "Дает союзнику еще один ход.";
      
      public static var CatSniper:String = "Стреляет врагу в голову. Если повезет - смертельно.";
      
      public static var CatWizard:String = "Произносит слабое заклинание исцеления, лечащее одного героя.";
      
      public static var CatBomber:String = "Кидает бомбу во врага, нанося магический урон и ошеломляя его.";
      
      public static var CatWarrior:String = "Бьет врага серией нестихийных атак.";
      
      public static var DollMatt:String = "Значительно усиливает атаку героя и накладывает Благословение.";
      
      public static var DollNatalie:String = "Значительно усиливает магическую атаку героя и накладывает Решимость.";
      
      public static var DollLance:String = "Бьет всех врагов сильной взрывной магией, ошеломляя их.";
      
      public static var DollAnna:String = "Стреляет пронзающей био-стрелой, наносящей тем больше урона, чем больше у врага защита и магическая защита, или если он блокирует.";
      
      public static var DollNoLegs:String = "Ужасающе мяукает на врагов, снижая их уклонение и накладывая Невезение.";
      
      public static var BossCyclopsDesert:String = "Наносит огромный взрывной урон всем врагам несколькими ударами, которые могут оглушить их.";
      
      public static var BossCyclopsGlacial:String = "Избивает врага мощными ледяными атаками, задевая остальных и нанося им треть урона. \n • Может заморозить врагов. ";
      
      public static var BossCyclopsInfernal:String = "Избивает врага мощными огненными атаками, задевая остальных и нанося им треть урона. \n • Может поджечь врагов. ";
      
      public static var BossGolemWater:String = "Атакует всех врагов удивительно мощными водяными атаками, которые могут намочить их.";
      
      public static var BossGolemFire:String = "Атакует всех врагов удивительно мощными огненными атаками, которые поджигают всех выживших врагов.";
      
      public static var BossNestCat:String = "Усиливает магическую атаку всех героев, включая тех, что в резерве, после чего шинкует врагов чередой биологических атак. ";
      
      public static var BossNestNinja:String = "Бьет всех врагов удивительно мощными атаками тьмой, проклиная их.";
      
      public static var EvilMatt:String = "Бьет всех врагов один за другим удивительно мощными земляными атаками." + HIGH_CRITS;
      
      public static var EvilNatalie:String = "Подрывает всех врагов один за другим удивительно мощной магией света." + HIGH_CRITS;
      
      public static var EvilLance:String = "Подрывает всех врагов один за другим удивительно мощной магией взрывов." + HIGH_CRITS;
      
      public static var EvilAnna:String = "Кромсает всех врагов один за другим удивительно мощными атаками ветром." + HIGH_CRITS;
      
      public static var EvilNoLegs:String = "Использует самую сильную магию во всей вселенной, взрывая врагов безумно умопомрачительно огромным нестихийным уроном.";
      
      public static var WraithOrigami:String = "Шинкует врага нестихийными атаками, рассеивающими их баффы.";
      
      public static var GloopFab:String = "Меняет погоду на Цветение Сакуры на 5 ходов.";
      
      public static var CatSkeleton:String = "Бьет врага в спину, нанося физический урон и наделяя его максимально возможной дозой Невезения.";
      
      public static var HydraOrigami:String = "Бьет всех врагов бумажным мечом, нанося нестихийный урон, и усиливает уклонение всех союзников, включая тех, что в резерве.";
      
      public static var Defender3:String = "Обрушивает на врагов череду взрывных волн, нанося физический урон тьмой. \n • Всегда критические попадания.";
      
      public static var BearBlack:String = "Рубит одну цель, нанося физический урон огнем и накладывая максимально возможную Сухость.";
      
      public static var GolemBone:String = "Пронзает всех врагов нестихийными атаками, которые могут их ослабить.";
      
      public static var WormBook:String = "Усиливает точность всех сражающихся союзников.";
      
      public static var BossGigalith:String = "Обрушивает на всех врагов мощную нестихийную магию и воспламеняет их, снижая их максимум ОЗ с течением времени.";
      
      public static var BossDevourer:String = "Удаляет данную симуляцию.";
      
      public static var SketchPapalotl:String = "Протыкает всех врагов мощными физическими нестихийными атаками, совершенно игнорирующими защитные баффы. (Но не дебаффы)";
      
      public static var SketchGuncat:String = "Подрывает всех врагов мощными взрывными атаками, наполовину физическими, наполовину магическими. Так же совершенно игнорирующими защитные баффы. (Но не дебаффы)";
      
      public static var SketchXolotl:String = "Бьет врагов физическими нестихийными атаками, которые ослабляют их и игнорируют защитные баффы. (Но не дебаффы)";
      
      public static var SketchGlaurung:String = "Наносит магический урон ветром, рассеивает их статусы и игнорируют защитные баффы. (Но не дебаффы)";
      
      public static var ArcadeGuoye:String = "Значительно усиливает точность всех сражающихся героев.";
      
      public static var ArcadeTotom:String = "Полностью излечивает всех сражающихся героев и снимает все дебаффы и негативные эффекты, которые у них могут быть.";
      
      public static var ArcadeChair:String = "Значительно ослабляет магическую атаку всех врагов и наносит небольшой взрывной урон.";
      
      public static var ArcadePumpkus:String = "Обычно ничего не делает, но если вызвать его два или более раз за один ход он рассвирепеет. Тогда он начнет атаковать сильными физическими атаками случайных противников.";
      
      public static var ArcadeGlob:String = "Выпускает зловонное дыхание по одной цели, рассеивающее статусы, накладывает Усталость, Проклятье, Слабость, Неудачу и Пелену - именно в таком порядке. Также наносит небольшой нестихийный магический урон.";
      
      public static var ArcadeSnek:String = "Кусает одного врага, нанося физический нестихийный урон и накладывает максимальный эффект Горения и Яда.";
      
      public static var ArcadeRobo:String = "Обрушивает на одного врага магическую электрическую атаку, оглушает их и значительно ослабляет их точность.";
      
      public static var ArcadeBosh:String = "Значительно снижает атакующие характеристики всех врагов.";
      
      public static var ArcadeTreagure:String = "Наносит урон случайной стихии по случайным врагам и накладывает случайные статусные эффекты. \n • Эффекты включают в себя Заморозку, Воспламенение, Оглушение, Немоту, Ошеломление, Приговор и Неудачу.";
      
      public static var ArcadePhoenix:String = "Воскрешает всех сражающихся героев или накладывает Авто-воскрешение, если они еще живы.";
      
      public static var ArcadeMermaid:String = "Значительно усиливает уклонение всех героев, включая тех, кто в резерве.";
      
      public static var ArcadeMaw:String = "Заражает всех врагов смертельным вирусом и наносит небольшой био-урон.";
      
      public static var ClassicSlime:String = "Использует постыдно слабую нестихийную атаку по одному врагу.";
      
      public static var ClassicSlimeKing:String = "Колдует мощное лечащее заклинание, исцеляющее всех героев, включая тех, что в резерве. \n • Также снимает все негативные эффекты.";
      
      public static var ClassicTree:String = "Наносит крошечный био-урон всем врагам и ненадолго оглушает их.";
      
      public static var ClassicEyeball:String = "Просто атакует всех врагов нестихийными магическими атаками.";
      
      public static var ClassicBeholder:String = "Обхватывает жертву своими щупальцами, нанося био-урон и сильно отравляя.";
      
      public static var ClassicWaspRed:String = "Значительно ослабляет магическую атаку одной цели.";
      
      public static var ClassicWaspBlack:String = "Значительно ослабляет физическую атаку одной цели.";
      
      public static var ClassicSandworm:String = "Остервенело изрыгает тошноту на всех врагов, нанося магический био-урон и ослабляя их физическую и магическую атаку, а также физическую и магическую защиту.";
      
      public static var ClassicEaterIce:String = "Магическое ледяное дыхание поражает всех врагов. Оно не наносит много урона, но имеет большой шанс заморозить цели.";
      
      public static var ClassicEaterFire:String = "Магическое огненное дыхание поражает всех врагов и сушит их.";
      
      public static var ClassicClayBlue:String = "Атакует одного врага заклинанием ветра, накладывая максимальный уровень Легкости.";
      
      public static var ClassicClayRed:String = "Бьет по одной цели физической земляной атакой, накладывая максимальный уровень Тяжести.";
      
      public static var ClassicClayDark:String = "Атакует одного врага заклинанием тьмы, накладывая Приговор и ослабляя его физическую и магическую атаку, а также физическую и магическую защиту.";
      
      public static var ClassicClayLight:String = "Колдует улучшенное заклинание исцеления, лечащее всех союзников, включая тех, что в резерве.";
      
      public static var ClassicProtector:String = "Поражает всех врагов мощным магическим электрическим лучом. Все, кто выживут, будут оглушены на несколько ходов.";
      
      public static var ClassicSlingerGun:String = "Пытается подстрелить одного врага мощной взрывной атакой.\n • Всегда есть 50% шанс, что атака не попадет.\n • Не зависит от уклонения цели и ее защитных характеристик.";
      
      public static var ClassicSlingerSword:String = "Пытается уколоть одного врага мощной нестихийной атакой.\n • Всегда есть 50% шанс, что атака не попадет.\n • Не зависит от уклонения цели и ее защитных характеристик.";
      
      public static var ClassicPraetorian:String = "Накладывает Блок на всех сражающихся героев. После чего атакует всех врагов нестихийной атакой, которая может их мгновенно убить и игнорирует все защитные баффы. (но не дебаффы) ";
      
      public static var ClassicCrystalRed:String = "Взрывает одну цель магической огненной атакой, которая воспламеняет ее.";
      
      public static var ClassicCrystalBlue:String = "Не наносит много урона, но имеет большой шанс заморозить цель на много ходов.";
      
      public static var ClassicGigaGolem:String = "Бьет врага мощной физической атакой, которая либо огненная, либо ледяная - все совершенно случайно!";
      
      public static var ClassicRafflesia:String = "Наносит огромный физический био-урон всем врагам.";
      
      public static var ClassicJack:String = "Значительно усиливает физическую и магическую атаку союзников, включая тех, кто в резерве.";
      
      public static var arcadePoison:String = "Токсичный Пузырь";
      
      public static var arcadeNettle:String = "Оплетающий Плющ";
      
      public static var arcadeTeeth:String = "Острые Зубы";
      
      public static var bonePillar:String = "Костяная Колонна";
      
      public static var hellfire:String = "Адское Пламя";
      
      public static var pixelswords:String = "Вихрь Мечей";
      
      public static var pixelfork:String = "Вихрь Вилок";
      
      public static var paperSword:String = "Бумажный Меч";
      
      public static var paperStars:String = "Бумажный Ураган";
      
      public static var swordswirl:String = "Смерч Сабель";
      
      public static var iceneedle:String = "Ледяные Иглы";
      
      public static var thunderblast:String = "Электро Взрыв";
      
      public static var snowblast:String = "Взрыв Холода";
      
      public static var arcadeFlood:String = "Водопад";
      
      public static var ritual:String = "Ритуал Греха";
      
      public static var highgravity:String = "Сильная Гравитация";
      
      public static var lowgravity:String = "Слабая Гравитация";
      
      public static var snow:String = "Метель";
      
      public static var earthquake:String = "Землетрясение";
      
      public static var blossom:String = "Цветение Сакуры";
      
      public static var electrongun:Object = {
         "name":"Зомбоящик",
         "desc":"Заклинание электричества, оглушающее одну цель." + COOLDOWN_6
      };
      
      public static var sharpen:Object = {
         "name":"Заточка",
         "desc":"Продлевает время действия негативных статусов всех врагов. Также может быть использован на всех героев, включая тех, кто в резерве, чтобы продлить действие положительных статусов. Не влияет на Ускорение и Блок." + COOLDOWN_6
      };
      
      public static var sand:Object = {
         "name":"Песчаная Кочка",
         "desc":"Усиленная земляная атака по одному врагу." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var sanddune:Object = {
         "name":"Песчаная Дюна",
         "desc":"Мощная земляная атака по одному врагу." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var acid3:Object = {
         "name":"Кислота",
         "desc":"Усиленное биологическое заклинание по одному врагу." + equips.DEBUFF_MDEF
      };
      
      public static var acid2:Object = {
         "name":"Выплеск Кислоты",
         "desc":"Мощное биологическое заклинание по всем врагам." + ALTERNATIVE_ONE + equips.DEBUFF_MDEF
      };
      
      public static var bubblering:Object = {
         "name":"Кольцо Пузырей",
         "desc":"Атака водой, накладывающая на цель Немоту. \n • Тип урона зависит от большего параметра атаки."
      };
      
      public static var musicalblast:Object = {
         "name":"Благословение Фирнны",
         "desc":"Усиливает магическую атаку всех героев, включая тех, кто в резерве, и накладывает на них Регенерацию. " + COOLDOWN_11
      };
      
      public static var geometry:Object = {
         "name":"Геометрия",
         "desc":"Мощное нестихийное умение по одному врагу. \n • Тип урона зависит от большего параметра атаки." + HIGH_ACC + HIGH_CRITS + COOLDOWN_3
      };
      
      public static var fairy2:Object = {
         "name":"Взрывные Феи",
         "desc":"Мощное заклинание света по всем врагам. " + HIGH_ACC + COOLDOWN_2
      };
      
      public static var death:Object = {
         "name":"Жнец",
         "desc":"Атака тьмой, которая может мгновенно убить цель. " + LOW_ACC + COOLDOWN_6
      };
      
      public static var retroswords:Object = {
         "name":"Демонические Мечи",
         "desc":"Мощная атака тьмой по всем врагам." + ALTERNATIVE_ONE + COOLDOWN_2
      };
      
      public static var artattack:Object = {
         "name":"Бумажный Танец",
         "desc":LIMIT_BREAK + "Восстанавливает ОЗ всем героям, снимает отрицательные статусы, усиливает их уклонение, точность и максимум ОЗ. \n • Распространяется и на героев в резерве."
      };
      
      public static var sevenswords:Object = {
         "name":"Семь Мечей",
         "desc":LIMIT_BREAK + "Наносит большой урон от света по всем врагам." + HIGH_ACC
      };
      
      public function skills()
      {
         super();
      }
   }
}

