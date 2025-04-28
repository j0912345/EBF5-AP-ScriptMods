package text.english
{
   public class skills
   {
      public static var WEP_EFFECTS:String = "\n • Element and effects depend on current weapon.";
      
      public static var WEP_EFFECTS_2:String = "\n • Weapon effects are stronger than usual.";
      
      public static var LOW_ACC:String = "\n • Low accuracy.";
      
      public static var HIGH_ACC:String = "\n • High accuracy.";
      
      public static var HIGH_ACC_2:String = "\n • Super high accuracy.";
      
      public static var HIGH_CRITS:String = "\n • High critical hit rate.";
      
      public static var RETARGETS:String = "\n • Hits a new foe if the target is killed.";
      
      public static var RETARGETS_2:String = "\n • Chooses a new target if the target dies.";
      
      public static var LIMIT_BREAK:String = "Limit Break! ";
      
      public static var ALTERNATIVE_ALL:String = " It can also target all foes for even damage. ";
      
      public static var ALTERNATIVE_ONE:String = " It can also be focused on a single target for more damage.";
      
      public static var MAY_SURRENDER:String = " May make enemies surrender, even strong ones. ";
      
      public static var SWORD_DANCE:String = " Hits a single target 3 times, moving onto a new foe if the target dies.";
      
      public static var EXTRA_HITS:String = " Gets an extra hit for every foe killed.";
      
      public static var DISPEL_ALL:String = " Dispels all foes, cancelling their buffs and positive status effects.";
      
      public static var HITS_RANDOM_FOES:String = " One arrow is fired for each foe, but they hit random targets.";
      
      public static var COOLDOWN_2:String = "\n • Has a 1-turn cooldown. ";
      
      public static var COOLDOWN_3:String = "\n • Has a 2-turn cooldown. ";
      
      public static var COOLDOWN_4:String = "\n • Has a 3-turn cooldown. ";
      
      public static var COOLDOWN_6:String = "\n • Has a 5-turn cooldown. ";
      
      public static var COOLDOWN_11:String = "\n • Has a 10-turn cooldown. ";
      
      public static var defend:Object = {
         "name":"Defend",
         "desc":"All damage taken is reduced by 50% for one turn. Some equips add extra effects."
      };
      
      public static var swap:Object = {
         "name":"Switch Player",
         "desc":"Select a different player to use next. This action does not cost a turn."
      };
      
      public static var flee:Object = {
         "name":"Flee",
         "desc":"Run away from this battle. There is no penalty for doing so."
      };
      
      public static var skip:Object = {
         "name":"Skip Turn",
         "desc":"Skip this player\'s turn without doing anything."
      };
      
      public static var scan:Object = {
         "name":"Scan Foes",
         "desc":"Scan all foes on the field, revealing their weaknesses. This data is stored forever in the bestiary."
      };
      
      public static var capture:Object = {
         "name":"Capture Foe",
         "desc":"Attempt to capture a foe. Damaged foes with status problems are easier to capture. Some foes can\'t be captured."
      };
      
      public static var bring1:Object = {
         "name":"Bring in Matt",
         "desc":"Move a player to backup and bring in Matt. This action does not cost a turn."
      };
      
      public static var bring2:Object = {
         "name":"Bring in Natalie",
         "desc":"Move a player to backup and bring in Natalie. This action does not cost a turn."
      };
      
      public static var bring3:Object = {
         "name":"Bring in Lance",
         "desc":"Move a player to backup and bring in Lance. This action does not cost a turn."
      };
      
      public static var bring4:Object = {
         "name":"Bring in Anna",
         "desc":"Move a player to backup and bring in Anna. This action does not cost a turn."
      };
      
      public static var bring5:Object = {
         "name":"Bring in NoLegs",
         "desc":"Move a player to backup and bring in NoLegs. This action does not cost a turn."
      };
      
      public static var swordslash:Object = {
         "name":"Normal Attack",
         "desc":"Strike a target with a basic sword attack." + WEP_EFFECTS
      };
      
      public static var earthedge:Object = {
         "name":"Tremor",
         "desc":"Basic earth attack which hits a single target."
      };
      
      public static var quakespikes:Object = {
         "name":"Quake",
         "desc":"Advanced earth attack which hits a single target."
      };
      
      public static var cataclysmiccut:Object = {
         "name":"Cataclysm",
         "desc":"Very powerful earth attack which hits a single target." + HIGH_CRITS
      };
      
      public static var geysergush:Object = {
         "name":"Geyser",
         "desc":"Basic water attack which hits a single target." + equips.MAY_WET
      };
      
      public static var pouringpike:Object = {
         "name":"Torrent",
         "desc":"Advanced water attack which hits a single target." + equips.MAY_WET
      };
      
      public static var surgingskewer:Object = {
         "name":"Typhoon",
         "desc":"Powerful water attack which hits a single target." + equips.MAY_WET + HIGH_CRITS
      };
      
      public static var frostfragment:Object = {
         "name":"Tundra",
         "desc":"Advanced ice attack which hits a single target." + equips.MAY_CHILL
      };
      
      public static var glacialglaive:Object = {
         "name":"Iceberg",
         "desc":"Powerful ice attack which hits a single target." + equips.MAY_CHILL
      };
      
      public static var firespire:Object = {
         "name":"Magma",
         "desc":"Advanced fire attack which hits a single target." + equips.MAY_DRY
      };
      
      public static var lavalance:Object = {
         "name":"Eruption",
         "desc":"Powerful fire attack which hits a single target." + equips.MAY_DRY
      };
      
      public static var nettleknife:Object = {
         "name":"Nettle",
         "desc":"Basic bio attack which hits a single target." + equips.MAY_POISON
      };
      
      public static var shreddingshrub:Object = {
         "name":"Overgrowth",
         "desc":"Powerful bio attack which hits a single target twice." + equips.MAY_POISON
      };
      
      public static var slicingcyclone:Object = {
         "name":"Slicing Cyclone",
         "desc":"Powerful attack which hits all enemies several times." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var stealitem:Object = {
         "name":"Steal Item",
         "desc":"Steals a random item from a single target. Better items can be stolen when this skill is levelled up." + LOW_ACC
      };
      
      public static var legend:Object = {
         "name":"Legend",
         "desc":"Very powerful attack which hits a single target multiple times." + WEP_EFFECTS + COOLDOWN_3
      };
      
      public static var lightblade:Object = {
         "name":"Light Blade",
         "desc":"Advanced holy attack which hits a single target."
      };
      
      public static var holysword:Object = {
         "name":"Seiken",
         "desc":"Powerful holy attack which hits a single target." + equips.MAY_DISPEL
      };
      
      public static var unleash:Object = {
         "name":"Unleash",
         "desc":"An attack that unleashes the hidden potential of your weapon." + WEP_EFFECTS + WEP_EFFECTS_2
      };
      
      public static var quickslash:Object = {
         "name":"Quick Slash",
         "desc":"Attack a single target with super high accuracy." + WEP_EFFECTS
      };
      
      public static var temper:Object = {
         "name":"Temper",
         "desc":"Buffs an ally\'s attack power, and gives them brave status. " + COOLDOWN_2
      };
      
      public static var revenge:Object = {
         "name":"Revenge",
         "desc":"A potentially devastating attack which hits a single target. Its power increases if Matt\'s HP is low, and if his allies are dead. The power listed below is the maximum possible." + WEP_EFFECTS
      };
      
      public static var cleaver:Object = {
         "name":"Cleaver",
         "desc":LIMIT_BREAK + "Deals incredible physical damage to a single target, with multiple slashes." + WEP_EFFECTS + RETARGETS + HIGH_ACC + HIGH_CRITS
      };
      
      public static var ragnarok:Object = {
         "name":"Ragnarok",
         "desc":LIMIT_BREAK + "Hits all foes with massive non-elemental physical damage. \n • Buffs the attack power of all allies, including those in backup. \n • Also gives them brave status." + HIGH_ACC
      };
      
      public static var staffstrike:Object = {
         "name":"Normal Attack",
         "desc":"Strike a target with a basic physical attack, which unleashes the magic power of your weapon." + WEP_EFFECTS
      };
      
      public static var blessedbunny:Object = {
         "name":"Cleanse",
         "desc":"Dispels an ally\'s debuffs, heals their status problems, and also gives them blessed status."
      };
      
      public static var luckystar:Object = {
         "name":"Lucky Star",
         "desc":"Basic non-elemental magic which deals very random damage to a single target." + HIGH_CRITS
      };
      
      public static var starshower:Object = {
         "name":"Star Shower",
         "desc":"Powerful non-elemental magic which hits all foes and deals very random damage." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var starpower:Object = {
         "name":"Star Power",
         "desc":"Buffs an ally\'s magic attack, and gives them good-luck status." + COOLDOWN_2
      };
      
      public static var intoxicate:Object = {
         "name":"Toxic",
         "desc":"Simple bio magic which strongly poisons a single target."
      };
      
      public static var fireball:Object = {
         "name":"Fire",
         "desc":"Basic fire magic which hits a single target." + equips.MAY_BURN
      };
      
      public static var fireblast:Object = {
         "name":"Fireball",
         "desc":"Advanced fire magic which hits a single target." + equips.MAY_BURN
      };
      
      public static var firestorm:Object = {
         "name":"Fire Storm",
         "desc":"Powerful fire magic which hits all enemies." + ALTERNATIVE_ONE + equips.MAY_BURN
      };
      
      public static var thunderbolt:Object = {
         "name":"Thunder",
         "desc":"Basic thunder magic which hits a single target." + equips.MAY_STUN
      };
      
      public static var thundershock:Object = {
         "name":"Thunderbolt",
         "desc":"Advanced thunder magic which hits a single target." + equips.MAY_STUN
      };
      
      public static var thunderstorm:Object = {
         "name":"Thunder Storm",
         "desc":"Powerful thunder magic which hits all enemies." + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var iceshard:Object = {
         "name":"Ice",
         "desc":"Basic ice magic which hits a single target." + equips.MAY_FREEZE
      };
      
      public static var iceshatter:Object = {
         "name":"Iceshard",
         "desc":"Advanced ice magic which hits a single target." + equips.MAY_FREEZE
      };
      
      public static var icestorm:Object = {
         "name":"Ice Storm",
         "desc":"Powerful ice magic which hits all enemies." + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var darkpulse:Object = {
         "name":"Dark Pulse",
         "desc":"Advanced dark magic which hits a single target." + equips.MAY_HEAVY
      };
      
      public static var darkpulsar:Object = {
         "name":"Pulsar",
         "desc":"Very powerful dark magic which hits all enemies." + equips.MAY_HEAVY + COOLDOWN_3
      };
      
      public static var spectralflash:Object = {
         "name":"Spectrum",
         "desc":"Advanced magic which hits a single target." + WEP_EFFECTS
      };
      
      public static var rainbowblast:Object = {
         "name":"Rainbow Blast",
         "desc":"Powerful magic which hits all enemies." + ALTERNATIVE_ONE + WEP_EFFECTS
      };
      
      public static var holylight:Object = {
         "name":"Holy Light",
         "desc":"Advanced holy magic which hits a single target." + equips.MAY_WEAKEN
      };
      
      public static var divinejudgement:Object = {
         "name":"Judgement",
         "desc":"Very powerful holy magic which blasts a single target and drains their HP." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var syphon:Object = {
         "name":"Mute",
         "desc":"Syphons a single foe, making them unable to use most magical attacks." + COOLDOWN_3
      };
      
      public static var syphon2:Object = {
         "name":"Syphon",
         "desc":"Syphons all foes, making them unable to use most magical attacks. Can also target a single foe for a stronger syphoning effect." + COOLDOWN_3
      };
      
      public static var genesis:Object = {
         "name":"Genesis",
         "desc":LIMIT_BREAK + "Deals massive holy damage to all enemies, and revives or gives auto-revive status to all allies. \n • Works on backup allies too." + HIGH_ACC
      };
      
      public static var kyun:Object = {
         "name":"7th Heaven",
         "desc":LIMIT_BREAK + "Heals all allies\' HP and status problems, and buffs their attack, magic attack, defence, and magic defence. \n • Works on backup allies too. \n • Gives lovable status to Natalie."
      };
      
      public static var pistolwhip:Object = {
         "name":"Normal Attack",
         "desc":"Strike a target twice with a basic melee attack." + WEP_EFFECTS
      };
      
      public static var snipe:Object = {
         "name":"Snipe",
         "desc":"Shoot a single target with a super high accuracy attack." + WEP_EFFECTS + HIGH_CRITS + COOLDOWN_2
      };
      
      public static var doubleshot:Object = {
         "name":"Double Shot",
         "desc":"An attack which shoots a single target twice." + WEP_EFFECTS + WEP_EFFECTS_2 + RETARGETS
      };
      
      public static var unload:Object = {
         "name":"Unload",
         "desc":"Very powerful attack which shoots a target 6 times." + WEP_EFFECTS + RETARGETS + HIGH_CRITS + COOLDOWN_6
      };
      
      public static var flameshot:Object = {
         "name":"Flame Shot",
         "desc":"Basic fire shot which hits a single foe." + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var flameburst:Object = {
         "name":"Flame Burst",
         "desc":"Advanced fire shot which hits all enemies." + ALTERNATIVE_ONE + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var bullethell:Object = {
         "name":"Bullet Hell",
         "desc":"Powerful fire shot which centers on one foe, with others taking 1/3 of the damage." + ALTERNATIVE_ALL + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var plasmashot:Object = {
         "name":"Plasma Shot",
         "desc":"Basic thunder shot which hits a single foe." + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmawave:Object = {
         "name":"Plasma Wave",
         "desc":"Advanced thunder shot which hits all enemies." + ALTERNATIVE_ONE + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmafield:Object = {
         "name":"Plasma Field",
         "desc":"Powerful thunder shot which centers on one foe, with others taking 1/3 of the damage. " + ALTERNATIVE_ALL + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var darkshot:Object = {
         "name":"Dark Shot",
         "desc":"Basic dark shot which hits a single foe." + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var gravitysurge:Object = {
         "name":"Gravity Surge",
         "desc":"Advanced dark shot which hits all enemies." + ALTERNATIVE_ONE + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var antimatterflux:Object = {
         "name":"Antimatter Flux",
         "desc":"Powerful dark shot which centers on one foe, with others taking 1/3 of the damage." + ALTERNATIVE_ALL + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var poisongas:Object = {
         "name":"Poison Gas",
         "desc":"Strongly poisons all enemies, and deals some magical bio damage." + COOLDOWN_4
      };
      
      public static var airstrike1:Object = {
         "name":"Big Bomb",
         "desc":"Blasts a single foe with big magical bomb damage." + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike2:Object = {
         "name":"Air Strike",
         "desc":"Blasts all foes with big magical bomb damage." + ALTERNATIVE_ONE + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike3:Object = {
         "name":"M.O.A.B",
         "desc":"Blasts all foes with massive magical bomb damage. Takes a very long time to recharge." + equips.MAY_STAGGER + COOLDOWN_11
      };
      
      public static var medipack1:Object = {
         "name":"Medipack",
         "desc":"Heals one ally and removes any status problems they have. " + COOLDOWN_4
      };
      
      public static var medipack2:Object = {
         "name":"Health Strike",
         "desc":"Heals all allies and removes any status problems they have. " + COOLDOWN_4
      };
      
      public static var tankguns:Object = {
         "name":"Machine Guns",
         "desc":"Shoots all enemies repeatedly with bomb attacks." + COOLDOWN_2
      };
      
      public static var armorcrush:Object = {
         "name":"Armor Crush",
         "desc":"Smashes a target with a melee attack, and dispels them." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var hyperbeam:Object = {
         "name":"Hyper Beam",
         "desc":"Takes two turns to use: Charges on the first use, and fires on the second use. Deals huge magical damage to all enemies." + WEP_EFFECTS
      };
      
      public static var nuke:Object = {
         "name":"Nuke",
         "desc":LIMIT_BREAK + "Deals massive magical fire damage to all enemies, and burns all players and foes." + HIGH_ACC + "\n • Replaces the current weather with radiation for 5 turns. "
      };
      
      public static var oblivion:Object = {
         "name":"Oblivion",
         "desc":LIMIT_BREAK + "Deals massive physical bomb damage to all foes. This destroys Lance\'s tank, but he\'s got spares." + HIGH_ACC
      };
      
      public static var arrowslash:Object = {
         "name":"Normal Attack",
         "desc":"Cut a target with a basic melee attack." + WEP_EFFECTS
      };
      
      public static var bowwhack:Object = {
         "name":"Bow Whack",
         "desc":"Smack a foe with your bow, causing them to consider surrendering. Even strong foes are not immune. \n • This skill cannot kill foes." + WEP_EFFECTS
      };
      
      public static var gust:Object = {
         "name":"Gust",
         "desc":"Basic wind magic which hits a single target." + equips.MAY_LIGHT
      };
      
      public static var whirlwind:Object = {
         "name":"Whirlwind",
         "desc":"Advanced wind magic which hits a single target." + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var hurricane:Object = {
         "name":"Hurricane",
         "desc":"Powerful wind magic which hits all enemies." + ALTERNATIVE_ONE + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var logjab:Object = {
         "name":"Log",
         "desc":"Basic earth attack which hits a single target." + equips.MAY_STAGGER
      };
      
      public static var lumbertrap:Object = {
         "name":"Lumber",
         "desc":"Powerful earth attack which hits a single target several times." + equips.MAY_STAGGER
      };
      
      public static var leafblade:Object = {
         "name":"Leaf Blade",
         "desc":"Simple bio attack which hits a single target twice." + HIGH_CRITS
      };
      
      public static var razorleaf:Object = {
         "name":"Razor Leaf",
         "desc":"Powerful bio attack which hits all enemies several times." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var soularrow:Object = {
         "name":"Blessed Arrow",
         "desc":"Advanced holy attack which hits a single foe." + equips.MAY_WEAKEN
      };
      
      public static var frostarrow:Object = {
         "name":"Frost Arrow",
         "desc":"Advanced ice attack which hits a single foe." + equips.MAY_FREEZE
      };
      
      public static var aquaarrow:Object = {
         "name":"Aqua Arrow",
         "desc":"Advanced water attack which hits a single foe." + equips.MAY_WET
      };
      
      public static var nitroarrow:Object = {
         "name":"Nitro Arrow",
         "desc":"Advanced bomb attack which hits a single foe." + equips.MAY_DISPEL
      };
      
      public static var sparkarrow:Object = {
         "name":"Spark Arrow",
         "desc":"Advanced thunder attack which hits a single foe." + equips.MAY_STUN
      };
      
      public static var soularrow2:Object = {
         "name":"Blessed Barrage",
         "desc":"Powerful holy attack:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WEAKEN
      };
      
      public static var frostarrow2:Object = {
         "name":"Frost Flurry",
         "desc":"Powerful ice attack:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var aquaarrow2:Object = {
         "name":"Aqua Volley",
         "desc":"Powerful water attack:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WET
      };
      
      public static var nitroarrow2:Object = {
         "name":"Nitro Blitz",
         "desc":"Powerful bomb attack:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_DISPEL
      };
      
      public static var sparkarrow2:Object = {
         "name":"Spark Shower",
         "desc":"Powerful thunder attack:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var piercingshot:Object = {
         "name":"Piercing Shot",
         "desc":"Attack with a super high accuracy shot." + equips.IGNORES_BUFFS + HIGH_CRITS + WEP_EFFECTS
      };
      
      public static var comboshot:Object = {
         "name":"Combo Shot",
         "desc":"Attack with a powerful and accurate blast from multiple arrows." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var arrowrain:Object = {
         "name":"Arrow Rain",
         "desc":"Attack with a volley of arrows which hit all enemies multiple times." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var renew:Object = {
         "name":"Renew",
         "desc":"Simple healing magic which heals one ally."
      };
      
      public static var remedy:Object = {
         "name":"Refresh",
         "desc":"Advanced healing magic which heals one ally, and gives them blessed status."
      };
      
      public static var motherearth:Object = {
         "name":"Mother Earth",
         "desc":LIMIT_BREAK + "Deals massive magical bio damage to all foes and poisons them. \n • Blesses all allies, including those in backup." + HIGH_ACC + "\n • Clears the weather for 5 turns."
      };
      
      public static var mightyoak:Object = {
         "name":"Mighty Oak",
         "desc":LIMIT_BREAK + "Deals massive physical earth damage to all foes, with several powerful hits." + HIGH_ACC
      };
      
      public static var backstab:Object = {
         "name":"Normal Attack",
         "desc":"Stab a target with a quick ambush attack from behind." + WEP_EFFECTS
      };
      
      public static var multistab:Object = {
         "name":"Swordplay",
         "desc":"Basic attack which hits a single foe with 4 slashes." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var bladeblitz:Object = {
         "name":"Blade Blitz",
         "desc":"Powerful attack which hits a single foe with 11 frenzied slashes." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var swiftslash:Object = {
         "name":"Swift Slash",
         "desc":"A super fast slash attack which hits all enemies." + WEP_EFFECTS + HIGH_ACC + COOLDOWN_2
      };
      
      public static var ninelives:Object = {
         "name":"Nine Lives",
         "desc":"Heals all allies, gives them auto-revive status, and revives dead allies too. Takes a long time to recharge." + COOLDOWN_11
      };
      
      public static var starblast:Object = {
         "name":"Star Blast",
         "desc":"Hits all enemies with magical non-elemental damage. Takes a long time to recharge." + equips.MAY_DISPEL + HIGH_ACC + COOLDOWN_11
      };
      
      public static var sworddance:Object = {
         "name":"Jump Attack",
         "desc":"Basic melee attack:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance2:Object = {
         "name":"Sword Dance",
         "desc":"Advanced melee attack:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance3:Object = {
         "name":"Final Cutter",
         "desc":"Powerful melee attack:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var darkslash:Object = {
         "name":"Shadow Strike",
         "desc":"Advanced dark attack:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var darkslash2:Object = {
         "name":"Twilight Tango",
         "desc":"Powerful dark attack:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var holyslash:Object = {
         "name":"Sacred Strike",
         "desc":"Advanced holy attack:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var holyslash2:Object = {
         "name":"Divine Divide",
         "desc":"Powerful holy attack:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var lightningslash:Object = {
         "name":"Lightning Strike",
         "desc":"Advanced thunder attack:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var lightningslash2:Object = {
         "name":"Bolt Boogie",
         "desc":"Powerful thunder attack:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var windslash:Object = {
         "name":"Wispy Strike",
         "desc":"Advanced wind attack:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var windslash2:Object = {
         "name":"Tornado Tantrum",
         "desc":"Powerful wind attack:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var waterslash:Object = {
         "name":"Bubbly Strike",
         "desc":"Advanced water attack:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var waterslash2:Object = {
         "name":"Water Whirl",
         "desc":"Powerful water attack:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var sushicat:Object = {
         "name":"Sushi Cat",
         "desc":"Bounces around, hitting 3 random foes with magical damage, and healing the 2 most damaged players." + COOLDOWN_3
      };
      
      public static var sushicat2:Object = {
         "name":"Sushi Cat!",
         "desc":"Bounces around, hitting 3 random foes with magical damage, and healing the 2 most damaged players. \n • Gives the players good luck." + COOLDOWN_3
      };
      
      public static var berserk:Object = {
         "name":"Berserk",
         "desc":"Berserks a target, player or foe, causing them to attack constantly with increased power. " + COOLDOWN_2
      };
      
      public static var berserk2:Object = {
         "name":"Raging Force",
         "desc":"Gives berserk status to all players. It can also be focused on one player or one foe for a stronger effect. " + COOLDOWN_3
      };
      
      public static var cherish:Object = {
         "name":"Cherish",
         "desc":"Makes the target lovable, causing them to be untargettable by single-target attacks. " + COOLDOWN_3
      };
      
      public static var cherish2:Object = {
         "name":"Loving Aura",
         "desc":"Gives lovable status to all players. It can also be focused on one player for a stronger effect. " + COOLDOWN_4
      };
      
      public static var thecreator:Object = {
         "name":"The Creator",
         "desc":LIMIT_BREAK + "Deals massive magical holy damage to all enemies. \n • Gives good luck to all allies, including those in backup." + HIGH_ACC + "\n • Clears the weather for 5 turns."
      };
      
      public static var thedestroyer:Object = {
         "name":"The Destroyer",
         "desc":LIMIT_BREAK + "Deals massive physical dark damage to all enemies, with several hits." + DISPEL_ALL + HIGH_ACC
      };
      
      public static var snowbunny:Object = {
         "name":"Snow Bunnies",
         "desc":"Ice magic which hits all enemies." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var snowcat:Object = {
         "name":"Snow Cats",
         "desc":"Strong ice magic which hits all enemies, and sets up freezing combos." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var ivy:Object = {
         "name":"Ivy",
         "desc":"Bio attack which hits a single target." + equips.MAY_POISON
      };
      
      public static var vines:Object = {
         "name":"Vines",
         "desc":"Strong bio attack which hits a single target several times." + equips.MAY_POISON + equips.DEBUFF_EVA
      };
      
      public static var energy:Object = {
         "name":"Energy",
         "desc":"Basic bomb magic which hits a single target." + HIGH_CRITS
      };
      
      public static var energy2:Object = {
         "name":"Energy Bomb",
         "desc":"Advanced bomb magic which hits a single target." + HIGH_CRITS
      };
      
      public static var energy3:Object = {
         "name":"Energy Barrage",
         "desc":"Powerful bomb magic which hits all enemies." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var bubbles:Object = {
         "name":"Bubble",
         "desc":"Basic water magic which hits a single target." + equips.MAY_WET
      };
      
      public static var whirlpool:Object = {
         "name":"Whirlpool",
         "desc":"Advanced water magic which hits a single target." + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var vortex:Object = {
         "name":"Bubble Blast",
         "desc":"Powerful water magic which hits all enemies." + ALTERNATIVE_ONE + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var laserblade:Object = {
         "name":"Shock",
         "desc":"Advanced thunder attack which hits a single target." + equips.MAY_STAGGER
      };
      
      public static var lasersword:Object = {
         "name":"Surge",
         "desc":"Powerful thunder attack which hits a single target." + equips.MAY_STAGGER
      };
      
      public static var bulletbob:Object = {
         "name":"Bullet Bob",
         "desc":"Advanced bomb attack which hits a single target." + HIGH_CRITS
      };
      
      public static var bigbullet:Object = {
         "name":"Big Bullet",
         "desc":"Powerful bomb attack which hits a single target." + HIGH_CRITS
      };
      
      public static var gale:Object = {
         "name":"Gale",
         "desc":"Advanced wind attack which hits a single target." + equips.MAY_LIGHT
      };
      
      public static var tempest:Object = {
         "name":"Tempest",
         "desc":"Powerful wind attack which hits a single target." + equips.MAY_LIGHT
      };
      
      public static var powermetal:Object = {
         "name":"Power Metal",
         "desc":"Deals magical wind damage to all foes, and heals all allies." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var air:Object = {
         "name":"Air",
         "desc":"Basic wind magic which hits a single target." + equips.MAY_STAGGER
      };
      
      public static var air2:Object = {
         "name":"Airwave",
         "desc":"Advanced wind magic which hits a single target." + equips.MAY_STAGGER
      };
      
      public static var air3:Object = {
         "name":"Shockwave",
         "desc":"Powerful wind magic which hits all enemies." + ALTERNATIVE_ONE + equips.MAY_STAGGER
      };
      
      public static var sawblade:Object = {
         "name":"Sawblade",
         "desc":"Advanced non-elemental attack which hits a single target." + equips.IGNORES_BUFFS + equips.MAY_DEATH
      };
      
      public static var sawblades:Object = {
         "name":"Shredder",
         "desc":"Powerful non-elemental attack which hits all enemies." + equips.IGNORES_BUFFS + equips.MAY_DEATH + COOLDOWN_2
      };
      
      public static var gaia:Object = {
         "name":"Gaia Seed",
         "desc":"Basic earth magic which hits a single target." + equips.MAY_TIRE
      };
      
      public static var gaia2:Object = {
         "name":"Gaia Bloom",
         "desc":"Advanced earth magic which hits a single target." + equips.MAY_TIRE
      };
      
      public static var gaia3:Object = {
         "name":"Gaia Blossom",
         "desc":"Powerful earth magic which hits all enemies." + ALTERNATIVE_ONE + equips.MAY_TIRE
      };
      
      public static var firespin:Object = {
         "name":"Fire Spin",
         "desc":"Strong fire magic which hits all enemies." + equips.MAY_BURN + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var purgingflame:Object = {
         "name":"Purging Flame",
         "desc":"Holy magic which dispels a single target and debuffs their magic attack." + HIGH_ACC
      };
      
      public static var screamer:Object = {
         "name":"Screamer",
         "desc":"Deals magical dark damage to all enemies and debuffs their attack." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var heal:Object = {
         "name":"Heal",
         "desc":"Simple healing magic which heals one ally." + COOLDOWN_2
      };
      
      public static var healmore:Object = {
         "name":"Heal More",
         "desc":"Powerful healing magic which heals all allies. It can also target a single ally for concentrated healing." + COOLDOWN_2
      };
      
      public static var revive:Object = {
         "name":"Revive",
         "desc":"Revives a dead ally, or gives auto-revive status to a living one. "
      };
      
      public static var purify:Object = {
         "name":"Purify",
         "desc":"Heals the common status problems of either all allies or all foes. Does not include neutral statuses like wet or dry. " + COOLDOWN_3
      };
      
      public static var lockon:Object = {
         "name":"Lock On",
         "desc":"Buffs an ally\'s accuracy, and gives them good luck. " + COOLDOWN_2
      };
      
      public static var protect:Object = {
         "name":"Protect",
         "desc":"Buffs the defence of all allies, including those in backup." + COOLDOWN_6
      };
      
      public static var barrier:Object = {
         "name":"Barrier",
         "desc":"Buffs the magic defence of all allies, including those in backup." + COOLDOWN_6
      };
      
      public static var reflex:Object = {
         "name":"Reflex",
         "desc":"Buffs the evade of all allies, including those in backup, and also cures shroud status for active allies. " + COOLDOWN_6
      };
      
      public static var guardian:Object = {
         "name":"Heavenly Shield",
         "desc":"Buffs an ally\'s defence and magic defence. " + COOLDOWN_2
      };
      
      public static var dispel:Object = {
         "name":"Dispel",
         "desc":"Dispels all foes, cancelling their buffs and positive status effects. It can also be used on all allies to cancel their debuffs. " + COOLDOWN_6
      };
      
      public static var flare:Object = {
         "name":"Flare",
         "desc":"Debuffs the accuracy of all enemies." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var bind:Object = {
         "name":"Bind",
         "desc":"Debuffs the evade of all enemies." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var debilitate:Object = {
         "name":"Debilitate",
         "desc":"Debuffs the defence of all enemies." + COOLDOWN_6
      };
      
      public static var enfeeble:Object = {
         "name":"Enfeeble",
         "desc":"Debuffs the magic defence of all enemies." + COOLDOWN_6
      };
      
      public static var teradrill:Object = {
         "name":"Giga Drill",
         "desc":"Powerful earth attack which hits a single target. Does much more damage if the target has buffed defence or magic defence, or is defending. " + COOLDOWN_3
      };
      
      public static var encore:Object = {
         "name":"Encore",
         "desc":"Gives an ally an extra turn. Using this on yourself is pointless." + COOLDOWN_3
      };
      
      public static var firecrackers:Object = {
         "name":"Firecrackers",
         "desc":"Gives bad luck to all foes, and good luck to all allies, including those in backup." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var abzero:Object = {
         "name":"Absolute Zero",
         "desc":LIMIT_BREAK + "Deals big magical ice damage to all foes, debuffs their evade, and freezes them. \n • Clears all active cooldowns for all players." + HIGH_ACC
      };
      
      public static var tsunami:Object = {
         "name":"Tsunami",
         "desc":LIMIT_BREAK + "Deals massive physical or magical water damage to all foes, and makes them wet. \n • Damage is based on highest stat." + equips.MAY_DEATH + HIGH_ACC_2
      };
      
      public static var supernova:Object = {
         "name":"Supernova",
         "desc":LIMIT_BREAK + "Deals massive magical fire damage to all foes and allies, and burns them. \n • Cannot be evaded."
      };
      
      public static var deathmetal:Object = {
         "name":"Death Metal",
         "desc":LIMIT_BREAK + "Deals massive magical wind damage to all foes. \n • Heals all allies, including those in backup, and gives them morale status." + HIGH_ACC
      };
      
      public static var annihilate:Object = {
         "name":"Annihilate",
         "desc":LIMIT_BREAK + "Attack with a high chance of instantly killing all foes. Does not work well on bosses and has low accuracy."
      };
      
      public static var ion:Object = {
         "name":"Ion Cannon",
         "desc":LIMIT_BREAK + "Deals massive magical thunder damage to all foes, and may stun them. \n • Also charges Lance\'s Hyperbeam attack." + HIGH_ACC_2
      };
      
      public static var blackhole:Object = {
         "name":"Black Hole",
         "desc":LIMIT_BREAK + "Deals massive magical dark damage to all foes, and makes them heavy. Also kills the user." + HIGH_ACC
      };
      
      public static var rapture:Object = {
         "name":"Hidden Power",
         "desc":LIMIT_BREAK + "Deals massive physical or magical damage to all foes. \n • Damage type is based on highest stat." + WEP_EFFECTS + HIGH_ACC
      };
      
      public static var bones:String = "Bones";
      
      public static var bonestar:String = "Bone Star";
      
      public static var groundblade:String = "Undead Blade";
      
      public static var fallingstar:String = "Falling Star";
      
      public static var firerock:String = "Fire Rock";
      
      public static var stalactite:String = "Stalactite";
      
      public static var stalactite2:String = "Stalactites";
      
      public static var fume:String = "Fiery Fume";
      
      public static var eruption:String = "Volcano";
      
      public static var scald:String = "Scalding Fume";
      
      public static var rain:String = "Rain";
      
      public static var sandstorm:String = "Sandstorm";
      
      public static var hail:String = "Hail";
      
      public static var nitro:String = "Nitro Burn";
      
      public static var acid:String = "Burning Acid";
      
      public static var bamboo:String = "Bamboo";
      
      public static var bamboo2:String = "Bamboo Trap";
      
      public static var bluebolt:String = "Blue Bolt";
      
      public static var deepfreeze:String = "Deep Freeze";
      
      public static var wafer:String = "Wafer";
      
      public static var present:String = "Surprise Present";
      
      public static var plasmacage:String = "Plasma Cage";
      
      public static var tankcannon:String = "Tank Cannon";
      
      public static var candycanes:String = "Candy Canes";
      
      public static var bonefish:String = "Bone Fish";
      
      public static var riceball:String = "Rice Ball Bomb";
      
      public static var mushroom:String = "Mushroom";
      
      public static var lifedrain:String = "Life Drain";
      
      public static var smokepuff:String = "Smoke Puff";
      
      public static var confusion:String = "Confusion";
      
      public static var ink:String = "Ink Blob";
      
      public static var chocolate:String = "Chocolate Blob";
      
      public static var tentacles:String = "Tentacles";
      
      public static var slowdown:String = "Slow Down";
      
      public static var speedup:String = "Speed Up";
      
      public static var poisonroot:String = "Poison Root";
      
      public static var burningroot:String = "Burning Root";
      
      public static var searoot:String = "Sea Root";
      
      public static var bombblast:String = "Bomb Blast";
      
      public static var bigblast:String = "Big Blast";
      
      public static var cactus:String = "Cactus";
      
      public static var cacti:String = "Cacti";
      
      public static var spark:String = "Spark";
      
      public static var bigspark:String = "Big Spark";
      
      public static var talisman:String = "Talisman Seal";
      
      public static var ember:String = "Ember";
      
      public static var fireblast2:String = "Flame Blast";
      
      public static var firecrystals:String = "Fire Crystals";
      
      public static var zephyrcrystals:String = "Zephyr Crystals";
      
      public static var frost:String = "Sudden Frost";
      
      public static var rockslide:String = "Rockslide";
      
      public static var avalanche:String = "Avalanche";
      
      public static var blackspikes:String = "Black Spikes";
      
      public static var stonefist:String = "Stone Fist";
      
      public static var spiderweb:String = "Spider Web";
      
      public static var spiders:String = "Spider Swarm";
      
      public static var geometry2:String = "Space Distortion";
      
      public static var geometry3:String = "Distortion Field";
      
      public static var sacrifice:String = "Sacrifice";
      
      public static var bigroot:String = "Big Root";
      
      public static var seabomb:String = "Sea Bomb";
      
      public static var fairy:String = "Fairy Bomb";
      
      public static var fly:String = "Fly Bomb";
      
      public static var starpunch:String = "Star Punch";
      
      public static var darken:String = "Invisibility";
      
      public static var lighten:String = "Enchantment";
      
      public static var SlimeChocolate:String = "Spits at a single target, dealing physical earth damage and debuffing their accuracy.";
      
      public static var SlimeIcecream:String = "Uses basic ice magic which chills a single target.";
      
      public static var SlimeSand:String = "Uses a basic bio attack which may stun a single target.";
      
      public static var SlimeLava:String = "Uses a basic fire attack which dries a single target.";
      
      public static var SlimeMouse:String = "Uses a weak thunder attack which always stuns a single target.";
      
      public static var SlimeWater:String = "Uses a pathetically weak water attack on a single target.";
      
      public static var SlimeMud:String = "Uses a basic bio attack on a single target.";
      
      public static var SlimeBunny:String = "Gives regenerate status to all allies, including those in backup, healing them over several turns.";
      
      public static var SpriteFire:String = "Replaces the current weather with hot ash for 5 turns.";
      
      public static var SpriteIce:String = "Replaces the current weather with a blizzard for 5 turns.";
      
      public static var SpriteThunder:String = "Replaces the current weather with an electric field for 5 turns.";
      
      public static var SpriteRock:String = "Replaces the current weather with an earthquake for 5 turns.";
      
      public static var SpriteWind:String = "Replaces the current weather with stormy winds for 5 turns.";
      
      public static var ChomperLeafy:String = "Replaces the current weather with breezy weather for 5 turns.";
      
      public static var ChomperSeaweed:String = "Replaces the current weather with heavy rain for 5 turns.";
      
      public static var ChomperMagma:String = "Replaces the current weather with strong sunlight for 5 turns.";
      
      public static var ChomperMutant:String = "Replaces the current weather with acid rain for 5 turns.";
      
      public static var CreepThorny:String = "Stings with an advanced earth attack, which may stun the target.";
      
      public static var CreepIcicle:String = "Stings with an advanced ice attack, which may chill the target.";
      
      public static var CreepHermit:String = "Cuts a single target with an advanced non-elemental attack.";
      
      public static var CreepGreen:String = "Bounces into a target 3 times with powerful non-elemental attacks." + RETARGETS_2;
      
      public static var CreepRed:String = "Smashes into a target with a powerful wind attack, which also staggers the target.";
      
      public static var CreepBlue:String = "Explodes with a powerful bomb blast which also stuns the target.";
      
      public static var Defender1:String = "Nukes all enemies with a powerful thunder blast, which may also stagger them.";
      
      public static var Defender2:String = "Blasts a single target with a powerful burst of water, which may also make the target wet. ";
      
      public static var DogFriend:String = "Gives the lovable status to all allies, making enemies hesitant to attack them directly.";
      
      public static var DogMaxi:String = DogFriend;
      
      public static var DogTanuki:String = "Leaps at a target with a fire attack, which burns them.";
      
      public static var DogWolf:String = "Leaps at a target with an ice attack, which freezes them.";
      
      public static var DogZap:String = "Leaps at all enemies with a deafening thunder attack, which may stagger them.";
      
      public static var DogMage:String = "Hits all foes with evil holy magic, which curses them.";
      
      public static var ChibiKnightUltra:String = "Buffs the attack of all allies, including those in backup, and then attacks a foe several times." + RETARGETS_2;
      
      public static var BushGreen:String = "Screams at the enemies, debuffing their attack power slightly.";
      
      public static var BushRed:String = "Screams at the enemies, debuffing their defence slightly.";
      
      public static var BushDark:String = "Hisses viciously at the enemies, debuffing their evade slightly.";
      
      public static var BushMud:String = "Screams at the enemies, debuffing their magic attack slightly.";
      
      public static var BushSand:String = "Hisses viciously at the enemies, debuffing their magic defence slightly.";
      
      public static var GolemTopaz:String = "Smashes a target repeatedly with powerful thunder attacks, which may also stun them.";
      
      public static var GolemPearl:String = "Chills all enemies with powerful ice magic, and replaces the current weather with huge hail for 5 turns.";
      
      public static var GolemAmethyst:String = "Smashes all enemies repeatedly with powerful non-elemental attacks, which may also stagger them.";
      
      public static var FishSteam:String = "Flies into the enemies at supersonic speeds, which may make them lighter.";
      
      public static var FishGold:String = "Blasts all enemies with a holy magic beam, which may make them dry.";
      
      public static var FishJet:String = "Spams bullets at all enemies with a simple bomb attack.";
      
      public static var HandSkeleton:String = "Gives good luck status to all allies, including those in backup, improving their chances in random events.";
      
      public static var HandZombie:String = "Gives doom status to all enemies, causing them to die instantly after 3 turns.";
      
      public static var HandMagma:String = "Gives berserk status to all allies, making them attack uncontrollably with increased power.";
      
      public static var FlybotBlue:String = "Inverts the buffs of all allies, turning negatives into positives, and vice versa.";
      
      public static var FlybotYellow:String = "Inverts the buffs of all enemies, turning negatives into positives, and vice versa.";
      
      public static var FlybotRed:String = "Inverts the buffs of a single foe or ally, turning negatives into positives, and vice versa.";
      
      public static var FallenLost:String = "Slashes a foe with a wind attack, and gives morale status to all allies, including those in backup.";
      
      public static var FallenCrucified:String = "Attacks an enemy with a slicing holy attack, which may kill them instantly.";
      
      public static var FallenDrowned:String = "Gracefully dispels the debuffs of all active allies.";
      
      public static var FallenBurned:String = "Dries all enemies with a fire attack, and replaces the current weather with a sandstorm for 5 turns.";
      
      public static var FallenBeheaded:String = "Jabs a foe with a dark attack, and gives brave status to all allies, including those in backup.";
      
      public static var PixelSlime:String = "Hits a foe with some weak bio magic, making them very tired.";
      
      public static var PixelBush:String = "Hits a foe with some weak fire magic, making them very dry.";
      
      public static var PixelBat:String = "Hits a foe with some weak dark magic, giving them very bad luck.";
      
      public static var PixelIdol:String = "Hits a foe with some weak bomb attacks, making them very weakened.";
      
      public static var MonolithViking:String = "Gives haste status to all allies, basically giving them an extra turn each.";
      
      public static var MonolithAncient:String = "Gives defend status to all allies, which offers massive protection for a turn.";
      
      public static var MonolithCosmic:String = "Nukes the battlefield with a tremendous dark magic blast, which hits all foes and scorches them.";
      
      public static var IdolGem:String = "Gives light status to all allies, including those in backup, protecting them from earth damage.";
      
      public static var IdolStone:String = "Gives dry status to all allies, including those in backup, protecting them from thunder and ice damage.";
      
      public static var IdolMetal:String = "Gives heavy status to all allies, including those in backup, protecting them from wind damage.";
      
      public static var IdolWood:String = "Gives blessed status to all allies, including those in backup, protecting them from all status effects.";
      
      public static var MirrorWise:String = IdolWood;
      
      public static var MirrorAngel:String = "Gives enchanted status to all allies, making them immune to magical damage, but also weak against physical attacks.";
      
      public static var MirrorDemon:String = "Gives invisible status to all allies, making them immune to physical damage, but also weak against magical attacks.";
      
      public static var MirrorHaunted:String = "Bites a foe with a powerful dark attack, which also curses them.";
      
      public static var MammothWooly:String = "Body slams one foe for massive non-elemental physical damage, with other foes taking 1/3 of the damage." + equips.MAY_STUN;
      
      public static var MammothCamel:String = "Buffs the magic defence of all allies, including those in backup, and then hits all foes with an earth attack.";
      
      public static var MammothWar:String = "Buffs the defence of all allies, including those in backup, and then hits all foes with magical bomb blasts." + equips.MAY_STAGGER;
      
      public static var SquidPink:String = "Spits ink at a foe for massive magical dark damage, which also debuffs the target\'s accuracy and makes them invisible.";
      
      public static var SquidPurple:String = "Debuffs the accuracy of all foes, and may also give them doom status.";
      
      public static var SquidLime:String = "Stabs all foes with powerful thunder attacks, and totally stuns them.";
      
      public static var Underlegs:String = "Dispels all foes first, and then unleashes a blizzard of intense non-elemental attacks on all of them.";
      
      public static var SlimeBigSand:String = "Uses a powerful bio attack which hits a single foe and may stun them.";
      
      public static var SlimeBigLava:String = "Uses a powerful fire attack which hits a single foe and burns them severely.";
      
      public static var SlimeBigMud:String = "Uses mushroom bio attacks on all foes, which may stun them with spores.";
      
      public static var SlimeBigIcecream:String = "Chills all foes with weak ice magic, setting up water and ice combos.";
      
      public static var SlimeBigChocolate:String = "Pukes chocolate all over the foes, dealing magic earth damage and making them all heavy.";
      
      public static var WormPutrid:String = "Uses a weak non-elemental web attack to drastically debuff a foe\'s evade.";
      
      public static var WormScaly:String = "Gives wet status to all allies, including those in backup, protecting them from fire damage.";
      
      public static var WormFuzzy:String = "Uses a weak non-elemental bite attack, which gives the target a deadly virus.";
      
      public static var WormCutie:String = "Heals the neutral status effects of all allies, including: Wet, Chill, Dry, Heavy, Light, Enchanted and Invisible.";
      
      public static var WraithIce:String = "Attacks an enemy with a heart-piercing ice attack, which may kill them instantly.";
      
      public static var WraithFire:String = "Attacks an enemy with hellish fire magic, which gives them berserk status. \n • It\'s best if the target does not survive.";
      
      public static var WraithSteel:String = "Blasts a foe several times with bomb attacks, which may stagger them and debuff their defence.";
      
      public static var WraithLeaf:String = "Shoots a foe several times with bio attacks, which will poison them and debuff their magic defence.";
      
      public static var WraithMaster:String = "Uses dark magic on a single foe, which strongly syphons them.";
      
      public static var Glitch2:String = "???-?eII ITEM NOT FOUND! ### \nERROR: 0x000002";
      
      public static var Glitch1:String = "??-//WARNING: WARANTY ##VOID## IF SEAL ##BROKEN##!! 0?-//??";
      
      public static var GloopStone:String = "Gives invisible status to one foe, making them take double damage from magical attacks.";
      
      public static var GloopCrystal:String = "Gives enchanted status to one foe, making them take double damage from physical attacks.";
      
      public static var GloopAsh:String = "Gives brave status to all allies, including those in backup, increasing their luck with critical hits.";
      
      public static var GloopWood:String = "Gives morale status to all allies, including those in backup, protecting them from 1-hit deaths.";
      
      public static var HydraZombie:String = "Instantly kills all foes, or if that fails, hits them with some physical dark damage.";
      
      public static var HydraMagma:String = "Smashes all foes with powerful fire magic, which also burns them.";
      
      public static var HydraIce:String = "Bites a foe several times, for super massive physical ice damage.";
      
      public static var DragonEarth:String = "Debuffs the magic defence of all foes, and then spits the deadliest acid, dealing magical bio damage to all of them.";
      
      public static var DragonSky:String = "Debuffs the defence of all foes, and then attacks with a hurricane of feathers, dealing physical wind damage to all of them.";
      
      public static var DragonSea:String = "Debuffs the attack power of all foes, and then blasts them with massive magical water damage, which also makes them wet.";
      
      public static var DragonOmega:String = "Debuffs the magic attack of all foes, and then nukes them with huge magical holy damage, which may also stun them.";
      
      public static var BatBlood:String = "Drains HP from a target with a simple bio attack, and gives it to the summoning player.";
      
      public static var BatSnow:String = "Gives chill status to all allies, including those in backup, protecting them from bio damage.";
      
      public static var BatThunder:String = "Gives confused status to all active allies for many turns, basically initiating auto-battle mode.  \n • Don\'t try this on a boss.";
      
      public static var BatBone:String = "Gives virus status to all allies, even if they have resistance to it.";
      
      public static var BearBrown:String = "Mauls a foe with non-elemental attacks. Does much more damage if the user is hurt, and if party members are dead. \n • The max power is 1000.";
      
      public static var BearGrolar:String = "Pummels all foes with an avalanche of ice attacks, which may also freeze them.";
      
      public static var BearPanda:String = "Stabs all foes with a barrage of bio attacks, which may also poison them.";
      
      public static var BitIce:String = "Casts a barrier spell, which buffs the magic defence of all allies, including those in backup.";
      
      public static var BitThunder:String = "Casts a protective spell, which buffs the defence of all allies, including those in backup. ";
      
      public static var BitHoly:String = "Casts a powerful healing spell, which heals all allies.";
      
      public static var BitFire:String = "Assaults a foe with a fire attack, which debuffs their defence and may burn them.";
      
      public static var BitWind:String = "Assaults a foe with a wind attack, which debuffs their magic defence and may stun them.";
      
      public static var BitWater:String = "Splashes all foes with weak water magic, which makes them all wet, and sets up ice and thunder combos.";
      
      public static var BitPoison:String = "Poisons all foes with weak bio magic, dealing some damage to them every turn.";
      
      public static var BoulderCoral:String = "Leaps at a target with a water attack, which staggers them.";
      
      public static var BoulderMarble:String = "Hits all foes with wind magic, which strongly syphons them.";
      
      public static var BoulderObsidian:String = "Hits all foes with a d20, dealing very random magical fire damage, and burning them.";
      
      public static var BoulderDirt:String = "Hits all foes with physical earth damage, which makes them tired.";
      
      public static var BoulderSandstone:String = "Leaps at a single target and deals massive physical earth damage.";
      
      public static var CatNinja:String = "Gives an extra turn to an ally.";
      
      public static var CatSniper:String = "Shoots a foe in the face, which may kill it instantly with a bit of luck.";
      
      public static var CatWizard:String = "Casts a simple healing spell, which heals an ally.";
      
      public static var CatBomber:String = "Throws a bomb at a foe, dealing magical damage and staggering them.";
      
      public static var CatWarrior:String = "Slashes a foe with a sequence of non-elemental attacks.";
      
      public static var DollMatt:String = "Strongly buffs the attack power of an ally, and gives them blessed status.";
      
      public static var DollNatalie:String = "Strongly buffs the magic attack of an ally, and gives them morale status.";
      
      public static var DollLance:String = "Hits all foes with strong bomb magic, which may stagger them.";
      
      public static var DollAnna:String = "Attacks with a piercing bio arrow, which does more damage if the target has buffed defence or magic defence, or is defending.";
      
      public static var DollNoLegs:String = "Meows hauntingly at the enemies, debuffing their evade and giving them bad luck.";
      
      public static var BossCyclopsDesert:String = "Deals massive magical bomb damage to all foes with several hits, which may also stun them.";
      
      public static var BossCyclopsGlacial:String = "Smashes a foe repeatedly with powerful ice attacks, with other foes taking 1/3 of the damage too. \n • All foes may be frozen. ";
      
      public static var BossCyclopsInfernal:String = "Slams a foe repeatedly with powerful fire attacks, with other foes taking 1/3 of the damage too. \n • All foes may be burned. ";
      
      public static var BossGolemWater:String = "Smashes all foes with incredibly powerful water attacks, which may also wet them.";
      
      public static var BossGolemFire:String = "Blasts all foes with incredibly powerful fire attacks, which also burn any survivors.";
      
      public static var BossNestCat:String = "Buffs the magic attack of all allies, including those in backup, and then cuts through all foes with a barrage of bio attacks. ";
      
      public static var BossNestNinja:String = "Hits all foes with incredibly powerful dark magic, which curses them.";
      
      public static var EvilMatt:String = "Smashes all foes one by one with incredibly powerful earth attacks." + HIGH_CRITS;
      
      public static var EvilNatalie:String = "Blasts all foes one by one with incredibly powerful holy magic." + HIGH_CRITS;
      
      public static var EvilLance:String = "Explodes all foes one by one with incredibly powerful bomb magic." + HIGH_CRITS;
      
      public static var EvilAnna:String = "Cuts through all foes one by one with incredibly powerful wind attacks." + HIGH_CRITS;
      
      public static var EvilNoLegs:String = "Uses the strongest magic in the universe, and nukes all foes with crazy non-elemental damage.";
      
      public static var WraithOrigami:String = "Attacks an enemy with a shredding non-elemental attack, which dispels them.";
      
      public static var GloopFab:String = "Replaces the current weather with cherry blossom for 5 turns.";
      
      public static var CatSkeleton:String = "Back-stabs a foe, dealing dark physical damage, and inflicting them with the maximum dose of bad luck.";
      
      public static var HydraOrigami:String = "Hits all foes with non-elemental paper-sword attacks, and buffs the evade of all allies, including those in backup.";
      
      public static var Defender3:String = "Blasts all foes with powerful shockwaves, dealing physical dark damage. \n • Always scores critical hits.";
      
      public static var BearBlack:String = "Slashes a single target, dealing physical fire damage, and inflicting them with the maximum dose of dry status.";
      
      public static var GolemBone:String = "Skewers all foes with powerful non-elemental attacks, and may weaken them.";
      
      public static var WormBook:String = "Buffs the accuracy of all currently active allies.";
      
      public static var BossGigalith:String = "Blasts all foes with powerful non-elemental magic, and severely scorches them, lowering their max HP over time.";
      
      public static var BossDevourer:String = "Deletes current simulation.";
      
      public static var SketchPapalotl:String = "Stabs all foes for massive, physical, non-elemental damage, which completely ignores defensive buffs. (but not debuffs)";
      
      public static var SketchGuncat:String = "Blasts all foes for massive bomb damage, which is half physical, and half magical. Also ignores defensive buffs. (but not debuffs)";
      
      public static var SketchXolotl:String = "Hits all foes with physical non-elemental damage, which weakens them all, and ignores their defensive buffs. (but not debuffs)";
      
      public static var SketchGlaurung:String = "Deals magical wind damage to all foes, dispels them, and ignores their defensive buffs. (but not debuffs)";
      
      public static var ArcadeGuoye:String = "Massively buffs the accuracy of all currently active allies.";
      
      public static var ArcadeTotom:String = "Fully heals all currently active allies, and removes any debuffs or negative status effects that they may have.";
      
      public static var ArcadeChair:String = "Severely debuffs the magic attack stat of all enemies, and deals some magical bomb damage too.";
      
      public static var ArcadePumpkus:String = "Normally it does nothing, but calling it two or more times in a turn will make it angry. It will then do massive physical damage to random foes.";
      
      public static var ArcadeGlob:String = "Unleashes its bad breath on a single target, which inflicts dispel, tired, curse, weaken, bad luck, and shroud - in that order. Also deals some non-elemental magic damage.";
      
      public static var ArcadeSnek:String = "Bites a single target, dealing physical non-elemental damage, and delivering the maximum dose of burn and poison.";
      
      public static var ArcadeRobo:String = "Blasts a single target with magical thunder damage, stuns them, and severely debuffs their accuracy.";
      
      public static var ArcadeBosh:String = "Severely debuffs the attack stat of all enemies.";
      
      public static var ArcadeTreagure:String = "Deals random-elemental damage to random enemies, and inflicts them with random status effects. \n • Effects include freeze, scorch, stun, syphon, stagger, doom, and bad luck.";
      
      public static var ArcadePhoenix:String = "Revives all active allies, or gives them auto-revive status if they are already alive.";
      
      public static var ArcadeMermaid:String = "Massively buffs the evade of all allies, including those in backup.";
      
      public static var ArcadeMaw:String = "Infects all foes with a deadly virus, and deals some magical bio damage.";
      
      public static var ClassicSlime:String = "Uses a pathetically weak non-elemental attack on a single target.";
      
      public static var ClassicSlimeKing:String = "Casts a powerful healing spell, which heals all allies, including those in backup. \n • Also removes negative status effects.";
      
      public static var ClassicTree:String = "Deals tiny bio damage to all foes, and may briefly stun them.";
      
      public static var ClassicEyeball:String = "Simply hits all foes with non-elemental magic damage.";
      
      public static var ClassicBeholder:String = "Wraps its tentacles around an unlucky victim, dealing bio damage to it, and severely poisoning it.";
      
      public static var ClassicWaspRed:String = "Drastically debuffs the magic attack stat of a single target.";
      
      public static var ClassicWaspBlack:String = "Drastically debuffs the attack stat of a single target.";
      
      public static var ClassicSandworm:String = "Violently vomits onto all enemies, dealing magical bio damage, and debuffing their attack, magic attack, defence, and magic defence.";
      
      public static var ClassicEaterIce:String = "Magical icy breath hits all enemies. It doesn\'t do much damage, but has a high chance of freezing targets.";
      
      public static var ClassicEaterFire:String = "Magical fiery breath hits all enemies, and dries them.";
      
      public static var ClassicClayBlue:String = "Casts a wind spell on a single target, inflicting them with the maximum dose of light status.";
      
      public static var ClassicClayRed:String = "Hits a single target with physical earth damage, inflicting them with the maximum dose of heavy status.";
      
      public static var ClassicClayDark:String = "Casts a dark spell on a single target, giving them doom status, and debuffing their attack, magic attack, defence, and magic defence.";
      
      public static var ClassicClayLight:String = "Casts an advanced healing spell, which heals all allies, including those in backup.";
      
      public static var ClassicProtector:String = "Blasts all foes with a powerful magical thunder beam. Anything that survives will be stunned for several turns.";
      
      public static var ClassicSlingerGun:String = "Attempts to shoot a single target with a powerful bomb attack.\n • Always has a 50% chance of hitting.\n • Ignores target evade stat, and defensive buffs.";
      
      public static var ClassicSlingerSword:String = "Attempts to stab a single target with a powerful non-elemental attack.\n • Always has a 50% chance of hitting.\n • Ignores target evade stat, and defensive buffs.";
      
      public static var ClassicPraetorian:String = "Gives the defend status to all currently active allies. It then attacks all enemies with non-elemental damage, which may instantly kill them, and ignores their defensive buffs. (but not debuffs) ";
      
      public static var ClassicCrystalRed:String = "Blasts a single target with magical fire damage, which scorches them.";
      
      public static var ClassicCrystalBlue:String = "Doesn\'t do much damage, but has an incredibly high chance of freezing the target for many turns.";
      
      public static var ClassicGigaGolem:String = "Strikes a foe for massive physical damage, which is either fire or ice elemental - it\'s completely random!";
      
      public static var ClassicRafflesia:String = "Deals massive physical bio damage to all enemies.";
      
      public static var ClassicJack:String = "Massively buffs the attack and magic attack of all allies, including those in backup.";
      
      public static var arcadePoison:String = "Toxic Bubble";
      
      public static var arcadeNettle:String = "Ivy Wrap";
      
      public static var arcadeTeeth:String = "Sharp Teeth";
      
      public static var bonePillar:String = "Bone Pillar";
      
      public static var hellfire:String = "Hellfire";
      
      public static var pixelswords:String = "Sword Storm";
      
      public static var pixelfork:String = "Fork Frenzy";
      
      public static var paperSword:String = "Paper Blade";
      
      public static var paperStars:String = "Paper Storm";
      
      public static var swordswirl:String = "Sabre Swirl";
      
      public static var iceneedle:String = "Ice Needles";
      
      public static var thunderblast:String = "Electric Blast";
      
      public static var snowblast:String = "Freezing Blast";
      
      public static var arcadeFlood:String = "Waterfall";
      
      public static var ritual:String = "Unholy Ritual";
      
      public static var highgravity:String = "High Gravity";
      
      public static var lowgravity:String = "Low Gravity";
      
      public static var snow:String = "Snow";
      
      public static var earthquake:String = "Earthquake";
      
      public static var blossom:String = "Cherry Blossom";
      
      public static var electrongun:Object = {
         "name":"Electron Gun",
         "desc":"Thunder magic which stuns a single target." + COOLDOWN_6
      };
      
      public static var sharpen:Object = {
         "name":"Sharpen",
         "desc":"Extends the duration of current negative status effects on all enemies. Alternatively, it can be used on all allies, including those in backup, to extend the duration of positive status effects. It does not affect haste and defend." + COOLDOWN_6
      };
      
      public static var sand:Object = {
         "name":"Sand",
         "desc":"Advanced earth attack which hits a single target." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var sanddune:Object = {
         "name":"Sand Dune",
         "desc":"Powerful earth attack which hits a single target." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var acid3:Object = {
         "name":"Acid",
         "desc":"Advanced bio magic which hits a single target." + equips.DEBUFF_MDEF
      };
      
      public static var acid2:Object = {
         "name":"Acid Blast",
         "desc":"Powerful bio magic which hits all enemies." + ALTERNATIVE_ONE + equips.DEBUFF_MDEF
      };
      
      public static var bubblering:Object = {
         "name":"Bubble Ring",
         "desc":"Water attack which syphons a single target. \n • Damage type is based on highest stat."
      };
      
      public static var musicalblast:Object = {
         "name":"Phyrnna\'s Blessing",
         "desc":"Buffs the magic attack of all allies, including those in backup, and also gives them regen status. " + COOLDOWN_11
      };
      
      public static var geometry:Object = {
         "name":"Geometry",
         "desc":"Powerful non-elemental skill, which hits a single target. \n • Damage type is based on highest stat." + HIGH_ACC + HIGH_CRITS + COOLDOWN_3
      };
      
      public static var fairy2:Object = {
         "name":"Fairy Bombs",
         "desc":"Powerful holy magic which hits all enemies. " + HIGH_ACC + COOLDOWN_2
      };
      
      public static var death:Object = {
         "name":"The Reaper",
         "desc":"Dark attack which instantly kills a single target. " + LOW_ACC + COOLDOWN_6
      };
      
      public static var retroswords:Object = {
         "name":"Demon Swords",
         "desc":"Powerful dark attack which hits all enemies." + ALTERNATIVE_ONE + COOLDOWN_2
      };
      
      public static var artattack:Object = {
         "name":"Art Attack",
         "desc":LIMIT_BREAK + "Heals all allies\' HP and status problems, and buffs their HP, evade, and accuracy. \n • Works on backup allies too."
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

