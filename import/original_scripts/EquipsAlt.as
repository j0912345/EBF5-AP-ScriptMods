package
{
   public class EquipsAlt
   {
      public static var heavensgate:Equip = new Equip({
         "HP":[0,5,5,10,10],
         "attack":[10,15,20,30,40],
         "defence":[5,5,10,10,15],
         "magicAttack":[10,15,20,30,40],
         "magicDefence":[5,5,10,10,15],
         "accuracy":[0,5,5,10,10],
         "evade":[0],
         "resistance":{
            "holy":Equips.long100,
            "death":Equips.long100,
            "curse":Equips.long100
         },
         "element":Element.HOLY,
         "statusEffect":Status.WEAKEN,
         "statusChance":[30,60,90,120,150],
         "statusDegree":[3,3,3,3,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.HOLY],null,[Equip.CAST,Spells.holyfire,0.6],null,[Equip.DEFEND_STATUS,Status.AUTOLIFE,1]],
         "materials":[undefined,undefined,undefined,[Items.mythril,1,Items.gold,2]]
      });
      
      public static var inferno:Equip = new Equip({
         "HP":[0],
         "attack":[25,35,50,60,80],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0,0,0,5,10],
         "evade":[0,0,0,5,10],
         "resistance":{
            "bomb":Equips.long50,
            "thunder":Equips.long50,
            "freeze":Equips.long100
         },
         "element":Element.FIRE,
         "statusEffect":Status.DRY,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,2,2,2,2],
         "buffEffect":Stats.NONE,
         "buffChance":[0],
         "buffDegree":[0],
         "specials":[[Equip.STATUS,Status.BURN,1,0.5],[Equip.BOOST,Element.FIRE],[Equip.CAST,Spells.eruption,0.2]],
         "materials":[undefined,undefined,undefined,[Items.darkmatter,1,Items.magma,8,Items.ruby,1]]
      });
      
      public static var thechopper:Equip = new Equip({
         "HP":[5,10,15,20,25],
         "attack":[15,30,45,60,80],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "water":Equips.long50,
            "earth":Equips.long50,
            "bio":Equips.long50
         },
         "element":Element.NONE,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.DEFENCE,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-10,-15,-20,-25,-30],
         "specials":[[Equip.SCARE,Foe.TREES],[Equip.BOOST,Element.NONE],[Equip.COUNTER,Spells.legend],[Equip.CAST,Spells.sawblade,0.33]]
      });
      
      public static var sapphiresaint:Equip = new Equip({
         "HP":[0],
         "attack":[15,30,40,50,60],
         "defence":[0,0,0,0,5],
         "magicAttack":[15,30,40,50,60],
         "magicDefence":[0,0,0,0,5],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "water":Equips.long50,
            "ice":Equips.long50,
            "freeze":Equips.long100
         },
         "element":Element.WATER,
         "statusEffect":Status.CHILL,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[1,1,2,2,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.WATER],null,[Equip.BOOST,Element.ICE],null,[Equip.SUMMON,Spells.rain,1]]
      });
      
      public static var giantslayer:Equip = new Equip({
         "HP":[0,0,0,5,10],
         "attack":[15,30,50,65,85],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0,5,5,5,10],
         "evade":[0,5,5,5,10],
         "resistance":{
            "wind":Equips.long50,
            "stagger":Equips.long100,
            "weight":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":Status.STAGGER,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[1,1,1,1,1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.NONE],null,[Equip.CAST,Spells.sawblade,1],null,[Equip.SUMMON,Spells.bind,1]]
      });
      
      public static var iceneedle:Equip = new Equip({
         "HP":[0],
         "attack":[15,30,40,50,65],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[10,15,20,25,30],
         "resistance":{
            "fire":Equips.down30,
            "water":Equips.long50,
            "ice":Equips.long50
         },
         "element":Element.ICE,
         "statusEffect":Status.DEATH,
         "statusChance":[10,15,20,25,30],
         "statusDegree":[1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.ICE],null,[Equip.SUMMON,Summons.CreepIcicle,0.3],null,[Equip.CAST,Spells.iceneedle,0.35]],
         "materials":[undefined,undefined,undefined,[Items.sapphire,10,Summons.CreepIcicle,1]]
      });
      
      public static var hypderdrill:Equip = new Equip({
         "HP":[5,10,10,15,15],
         "attack":[20,30,45,60,75],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[-10],
         "evade":[-10],
         "resistance":{
            "earth":Equips.long50,
            "bomb":Equips.long50
         },
         "element":Element.EARTH,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.ATTACK,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-20,-25,-25,-25,-30],
         "specials":[[Equip.BOOST,Element.EARTH],[Equip.BOOST_DEBUFFS],[Equip.CAST,Spells.teradrill,0.5],null,[Equip.SUMMON,Spells.rockfall,0.5]]
      });
      
      public static var emeraldsmasher:Equip = new Equip({
         "HP":[0],
         "attack":[20,30,45,60,70],
         "defence":[0],
         "magicAttack":[20,30,45,60,70],
         "magicDefence":[0],
         "accuracy":[-10],
         "evade":[-10],
         "resistance":{
            "earth":Equips.long50,
            "bomb":Equips.long50,
            "stagger":Equips.long100
         },
         "element":Element.EARTH,
         "statusEffect":Status.DISPEL,
         "statusChance":[20,30,40,50,70],
         "statusDegree":[1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.EARTH],null,[Equip.COUNTER,Spells.quakespikes],null,[Equip.CAST,Spells.cataclysmiccut,0.17]]
      });
      
      public static var devilsfork:Equip = new Equip({
         "HP":[5,10,15,25,35],
         "attack":[10,20,30,40,50],
         "defence":[0],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":Equips.long100,
            "ice":Equips.long100,
            "bio":Equips.long100
         },
         "element":Element.FIRE,
         "statusEffect":Status.BURN,
         "statusChance":[20,40,60,80,100],
         "statusDegree":[2,2,2,3,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.SUMMON,Summons.SlimeMouse,0.7],null,[Equip.SUMMON,Summons.SlimeBigLava,0.35],null,[Equip.SUMMON,Summons.SlimeBunny,0.5]]
      });
      
      public static var berzerker:Equip = new Equip({
         "HP":[0,0,5,10,15],
         "attack":[25,35,50,75,100],
         "defence":[10,15,20,25,30],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":Equips.long50,
            "weak":Equips.long100,
            "wind":Equips.long50
         },
         "element":Element.NONE,
         "statusEffect":Status.STAGGER,
         "statusChance":[20,30,40,50,60],
         "statusDegree":[1,1,2,2,2],
         "specials":[[Equip.STATUS,Status.BERSERK,1,2],null,[Equip.COUNTER,Spells.slicingcyclone],null,[Equip.STATUS,Status.BRAVE,1,0.3]],
         "materials":[undefined,undefined,undefined,[Items.steel,8,Summons.GolemAmethyst,1]]
      });
      
      public static var ultrapro9000:Equip = new Equip({
         "HP":[0],
         "attack":[0,10,20,35,50],
         "defence":[0],
         "magicAttack":[0,10,20,35,50],
         "magicDefence":[0],
         "accuracy":[0,5,10,15,20],
         "evade":[20,40,60,80,100],
         "resistance":{
            "ice":Equips.long50,
            "wind":Equips.long50,
            "water":Equips.long50
         },
         "element":Element.NONE,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.NONE],null,[Equip.BOOST,Element.ICE],[Equip.CAST,Spells.deepfreeze,0.6],[Equip.SUMMON,Summons.SpriteIce,0.3]]
      });
      
      public static var dragonsfeather:Equip = new Equip({
         "HP":[-20],
         "attack":[-25,-20,-15,-10,0],
         "defence":[-40,-30,-25,-20,-15],
         "magicAttack":[-25,-20,-15,-10,0],
         "magicDefence":[-40,-30,-25,-20,-15],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":Equips.down30,
            "wind":Equips.long100
         },
         "element":Element.WIND,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.STATUS,Status.HASTE,2,3],null,null,null,[Equip.SUMMON,Summons.DragonSky,0.15]],
         "materials":[undefined,undefined,[Items.emerald,1,Items.sapphire,1,Items.feather,4]]
      });
      
      public static var souleather:Equip = new Equip({
         "HP":[40,50,60,70,80],
         "attack":[-50],
         "defence":[20,30,40,50,60],
         "magicAttack":[0],
         "magicDefence":[20,30,40,50,60],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":Equips.down30,
            "fire":Equips.down30
         },
         "element":Element.DARK,
         "statusEffect":Status.BAD_LUCK,
         "statusChance":[30,40,50,60,70],
         "statusDegree":[2,2,2,2,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.STATUS,Status.SCORCHED,2,1],null,[Equip.DRAIN_HP]],
         "materials":[undefined,undefined,undefined,[Items.darkmatter,1,Summons.WraithMaster,1]]
      });
      
      public static var poisonfang:Equip = new Equip({
         "HP":[0],
         "attack":[15,30,40,50,65],
         "defence":[0],
         "magicAttack":[15,30,40,50,65],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0,5,10,15,20],
         "resistance":{
            "dark":Equips.long50,
            "bio":Equips.long50
         },
         "element":Element.BIO,
         "statusEffect":Status.TIRED,
         "statusChance":[30,35,40,45,50],
         "statusDegree":[2,2,2,2,3],
         "buffEffect":Stats.ACCURACY,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-20,-25,-25,-25,-30],
         "specials":[[Equip.BOOST,Element.BIO],null,[Equip.BOOST_BUFFS],[Equip.BOOST_STATUS],[Equip.SUMMON,Summons.BearPanda,0.22]],
         "materials":[undefined,undefined,undefined,[Items.opal,2,Summons.BearPanda,1]]
      });
      
      public static var lightningbolt:Equip = new Equip({
         "HP":[0],
         "attack":[10,20,35,50,60],
         "defence":[0],
         "magicAttack":[10,20,35,50,60],
         "magicDefence":[0],
         "accuracy":[0,5,5,10,10],
         "evade":[0,5,5,10,10],
         "resistance":{
            "thunder":Equips.long50,
            "earth":Equips.long50,
            "stun":Equips.long100
         },
         "element":Element.THUNDER,
         "statusEffect":Status.HEAVY,
         "statusChance":[20,40,60,80,100],
         "statusDegree":[2,2,2,3,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.THUNDER],[Equip.BOOST,Element.EARTH],null,[Equip.CAST,Spells.bigspark,0.5],[Equip.STATUS,Status.HASTE,2,0.3]],
         "materials":[undefined,undefined,[Items.topaz,1,Summons.BitThunder,1]]
      });
      
      public static var crimsonrazorback:Equip = new Equip({
         "HP":[0],
         "attack":[15,25,40,55,70],
         "defence":[0,5,5,5,10],
         "magicAttack":[15,25,40,55,70],
         "magicDefence":[0,5,5,5,10],
         "accuracy":[-5],
         "evade":[-5],
         "resistance":{
            "wind":Equips.long50,
            "thunder":Equips.long50,
            "fire":Equips.long50
         },
         "element":Element.WIND,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.WIND],null,[Equip.COUNTER,Spells.slash],[Equip.STEAL],[Equip.SUMMON,Spells.musicalblastP,0.33]]
      });
      
      public static var fusionblade:Equip = new Equip({
         "HP":[0],
         "attack":[15,30,45,60,75],
         "defence":[0,0,0,5,10],
         "magicAttack":[10,20,30,40,55],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dispel":Equips.long100,
            "thunder":Equips.long50,
            "fire":Equips.long50
         },
         "element":Element.BOMB,
         "statusEffect":Status.DRY,
         "statusChance":[10,20,30,40,50],
         "statusDegree":[2,2,2,3,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.BOMB],[Equip.BOOST,Element.FIRE],[Equip.COUNTER,Spells.unleash],null,[Equip.CAST,Spells.bigbullet,0.2]],
         "materials":[undefined,undefined,undefined,[Items.plutonium,1,Items.gamechild,1]]
      });
      
      public static var goldenaxe:Equip = new Equip({
         "HP":[0],
         "attack":[20,30,40,50,60],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[-10],
         "resistance":{
            "holy":Equips.long100,
            "dark":Equips.down30,
            "curse":Equips.long100
         },
         "element":Element.HOLY,
         "statusEffect":Status.STUN,
         "statusChance":[10,20,30,40,50],
         "statusDegree":[1,1,1,2,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.HOLY],null,[Equip.SUMMON,Spells.purify,0.5],null,[Equip.COUNTER,Spells.slicingcyclone]],
         "materials":[undefined,undefined,undefined,[Items.grail,1,Summons.MirrorAngel,1]]
      });
      
      public static var darkstalker:Equip = new Equip({
         "HP":[0],
         "attack":[15,25,40,55,70],
         "defence":[0,5,5,5,10],
         "magicAttack":[15,25,40,55,70],
         "magicDefence":[0,5,5,5,10],
         "accuracy":[0,5,5,10,10],
         "evade":[0],
         "resistance":{
            "dark":Equips.long50,
            "bio":Equips.long50,
            "holy":Equips.down30
         },
         "element":Element.DARK,
         "statusEffect":Status.WEAKEN,
         "statusChance":[10,20,30,40,50],
         "statusDegree":[2,2,2,2,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.DARK],[Equip.DRAIN_HP],[Equip.COUNTER,Spells.slash],null,[Equip.STATUS,Status.BRAVE,1,0.5]],
         "materials":[[Items.claw,1],[Items.claw,2],[Items.rune,1,Items.spike,4],[Items.darkmatter,1,Summons.BatBone,1]]
      });
      
      public static var loveblade:Equip = new Equip({
         "HP":[0,5,10,15,20],
         "attack":[20,30,40,50,60],
         "defence":[0],
         "magicAttack":[20,30,40,50,60],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0,0,5,5,10],
         "resistance":{
            "holy":Equips.long50,
            "dark":Equips.long50,
            "curse":Equips.long100
         },
         "element":Element.HOLY,
         "statusEffect":Status.REGEN,
         "statusChance":[60,70,80,90,100],
         "statusDegree":[1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST_STATUS],[Equip.BOOST,Element.HOLY],[Equip.COUNTER,Spells.legend],null,[Equip.CAST,Spells.spectrum2,0.35]],
         "materials":[[Items.cupcake,1],[Items.flower,4],[Items.dragonfruit,4,Items.cloudberries,4],[Items.moonpearl,2,Summons.WormCutie,1]]
      });
      
      public static var clubofwithering:Equip = new Equip({
         "HP":[0],
         "attack":[10,15,20,25,30],
         "defence":[0],
         "magicAttack":[10,15,20,25,30],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "death":Equips.long100,
            "weak":Equips.long100,
            "curse":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.DEFENCE,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-30,-35,-40,-45,-50],
         "specials":[[Equip.BOOST_DEBUFFS],null,[Equip.CAST,Spells.bonePillar,0.2],null,[Equip.SUMMON,Summons.GolemBone,0.2]],
         "materials":[undefined,undefined,undefined,[Items.moonpearl,2,Items.spike,4]]
      });
      
      public static var solspear:Equip = new Equip({
         "HP":[-15],
         "attack":[20,35,50,65,80],
         "defence":[0],
         "magicAttack":[20,35,50,65,80],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":Equips.long50,
            "holy":Equips.long50,
            "dark":Equips.long50
         },
         "element":Element.FIRE,
         "statusEffect":Status.DRY,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,2,3,3,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.FIRE],null,[Equip.BOOST,Element.HOLY],[Equip.STATUS,Status.BRAVE,1,0.5],[Equip.DEFEND_BUFF,Stats.MAGIC_ATTACK,80]],
         "materials":[undefined,undefined,[Summons.FishGold,1,Items.satin,2]]
      });
      
      public static var darktooth:Equip = new Equip({
         "HP":[0],
         "attack":[10,20,35,50,65],
         "defence":[0,0,5,5,10],
         "magicAttack":[10,20,35,50,65],
         "magicDefence":[0,0,5,5,10],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":Equips.long50,
            "thunder":Equips.long50,
            "ice":Equips.long50
         },
         "element":Element.DARK,
         "buffEffect":Stats.NONE,
         "statusEffect":Status.DISPEL,
         "statusChance":[20,30,40,40,50],
         "statusDegree":[1,1,1,1,1],
         "specials":[[Equip.BOOST,Element.FIRE],[Equip.BOOST,Element.ICE],[Equip.BOOST,Element.THUNDER]],
         "materials":[undefined,undefined,undefined,[Items.darkmatter,1,Summons.FallenBeheaded,1]]
      });
      
      public static var druidstaff:Equip = new Equip({
         "HP":[0,5,10,15,20],
         "attack":[10,20,35,50,65],
         "defence":[0],
         "magicAttack":[10,20,35,55,70],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bio":Equips.long50,
            "water":Equips.long50,
            "earth":Equips.long50
         },
         "element":Element.EARTH,
         "statusEffect":Status.POISON,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,2,3,3,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.EARTH],[Equip.BOOST,Element.BIO],[Equip.CAST,Spells.gaiablossom,0.5],null,[Equip.SUMMON,Summons.GloopWood,0.25]],
         "materials":[undefined,undefined,undefined,[Items.opal,3,Summons.GloopWood,1]]
      });
      
      public static var arctictrident:Equip = new Equip({
         "HP":[0,5,10,15,15],
         "attack":[0,10,20,30,45],
         "defence":[5,10,10,15,20],
         "magicAttack":[10,25,40,55,70],
         "magicDefence":[5,10,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "ice":Equips.long50,
            "water":Equips.long50,
            "freeze":Equips.long100
         },
         "element":Element.ICE,
         "statusEffect":Status.WET,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[5],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.ICE],[Equip.BOOST,Element.WATER],[Equip.BOOST_STATUS],null,[Equip.COUNTER,Spells.icestorm]]
      });
      
      public static var wrathofzeus:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[-5],
         "magicAttack":[45,65,85,110,140],
         "magicDefence":[-5],
         "accuracy":[0,5,5,5,10],
         "evade":[0,5,5,5,10],
         "resistance":{
            "thunder":Equips.long50,
            "holy":Equips.long50,
            "dispel":Equips.long100
         },
         "element":Element.THUNDER,
         "statusEffect":Status.STUN,
         "statusChance":[20,30,40,50,60],
         "statusDegree":[1],
         "specials":[[Equip.STATUS,Status.CONFUSE,1,0.2],[Equip.BOOST,Element.THUNDER],[Equip.BOOST,Element.HOLY],null,[Equip.SUMMON,Summons.SpriteThunder,0.5]],
         "materials":[undefined,undefined,[Items.gold,3,Items.gems,4],[Items.starfragment,1,Summons.BatThunder,1]]
      });
      
      public static var dragonwings:Equip = new Equip({
         "HP":[0],
         "attack":[10,20,30,40,50],
         "defence":[0],
         "magicAttack":[10,25,40,55,70],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0,5,5,10,10],
         "resistance":{
            "fire":Equips.long50,
            "wind":Equips.long50,
            "stagger":Equips.long100
         },
         "element":Element.FIRE,
         "statusEffect":Status.LIGHT,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[5],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.FIRE],[Equip.BOOST,Element.EARTH],[Equip.BOOST,Element.WIND],[Equip.BOOST,Element.WATER],null]
      });
      
      public static var nimbusrod:Equip = new Equip({
         "HP":[0,5,5,10,15],
         "attack":[0,5,10,15,20],
         "defence":[0],
         "magicAttack":[15,35,45,55,65],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "water":Equips.long50,
            "fire":Equips.long50,
            "holy":Equips.long50
         },
         "element":Element.WATER,
         "statusEffect":Status.CHILL,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[5],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.WATER],null,[Equip.BOOST,Element.HOLY],[Equip.SUMMON,Summons.DragonSea,0.15],[Equip.DEFEND_BUFF,Stats.MAGIC_ATTACK,80]]
      });
      
      public static var alchemyset:Equip = new Equip({
         "HP":[0,5,5,10,15],
         "attack":[0],
         "defence":[0,5,5,10,15],
         "magicAttack":[0,5,10,25,40],
         "magicDefence":[0,5,5,10,15],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "weak":Equips.long100,
            "curse":Equips.long100,
            "death":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":Status.RANDOM,
         "statusChance":[70,80,90,100,120],
         "statusDegree":[2,2,2,2,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST_STATUS],null,[Equip.BOOST_DEBUFFS],null,[Equip.BOOST_BUFFS]],
         "materials":[undefined,undefined,[Items.gems,10,Items.virus,10,Items.flower,10]]
      });
      
      public static var kaladanda:Equip = new Equip({
         "HP":[0,5,10,15,20],
         "attack":[10,20,30,40,50],
         "defence":[0,5,10,20,30],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[0,5,10,20,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "stagger":Equips.long100,
            "weak":Equips.long100,
            "curse":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":Status.TIRED,
         "statusChance":[60,70,80,90,100],
         "statusDegree":[1,2,2,3,3],
         "buffEffect":Stats.ATTACK,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-30,-35,-40,-45,-50],
         "specials":[[Equip.STATUS,Status.TIRED,1,0.5],null,[Equip.CAST,Spells.bones,0.5],null,[Equip.SUMMON,Summons.HandSkeleton,0.22]],
         "materials":[undefined,undefined,[Items.spike,3],[Summons.HandSkeleton,1,Items.spike,16]]
      });
      
      public static var knife:Equip = new Equip({
         "HP":[0],
         "attack":[30,60,90,120,150],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[5,10,15,20,25],
         "evade":[5,10,15,20,25],
         "resistance":{
            "dark":Equips.long100,
            "curse":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.NONE],[Equip.CAST,Spells.pixelfork,0.5],[Equip.SUMMON,Spells.pixelswords,1],null,[Equip.STATUS,Status.HASTE,2,0.5]],
         "materials":[undefined,undefined,undefined,[Items.dragonfruit,18,Items.cloudberries,2,Items.cookie,1]]
      });
      
      public static var celticcross:Equip = new Equip({
         "HP":[5,5,5,10,10],
         "attack":[0,5,10,20,30],
         "defence":[0],
         "magicAttack":[0,5,10,20,30],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":Equips.long100,
            "curse":Equips.long100
         },
         "element":Element.HOLY,
         "statusEffect":Status.DOOM,
         "statusChance":[40,60,80,100,120],
         "statusDegree":[3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.SCARE,Foe.GHOSTS],[Equip.BOOST,Element.HOLY],[Equip.CAST,Spells.holysword,0.5],null,[Equip.COUNTER,Spells.staffstrike]]
      });
      
      public static var obsidianstaff:Equip = new Equip({
         "SID":"obsidianstaff",
         "type":Equip.STAFF,
         "icon":248,
         "skin":12,
         "map":[15],
         "HP":[0],
         "attack":[15,25,35,50,70],
         "defence":[0],
         "magicAttack":[15,25,35,50,70],
         "magicDefence":[0],
         "accuracy":[0,0,5,5,10],
         "evade":[0,5,5,10,10],
         "resistance":{
            "fire":Equips.long100,
            "dark":Equips.long100
         },
         "element":Element.DARK,
         "statusEffect":Status.BURN,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[5,5,5,5,5],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.DARK],null,[Equip.CAST,Spells.ritual,0.2]],
         "materials":[undefined,undefined,undefined,[Items.darkmatter,1,Items.opal,1,Items.amber,3]]
      });
      
      public static var paperfan:Equip = new Equip({
         "HP":[0,5,5,10,10],
         "attack":[0,5,10,15,25],
         "defence":[0],
         "magicAttack":[0,5,10,15,25],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[20,30,40,50,60],
         "resistance":{
            "stagger":Equips.long100,
            "syphon":Equips.long100,
            "stun":Equips.long100
         },
         "element":Element.WIND,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[null,[Equip.STEAL],[Equip.SUMMON,Summons.WraithOrigami,0.4],[Equip.BOOST_DEBUFFS],[Equip.BOOST_BUFFS]],
         "materials":[undefined,undefined,undefined,[Items.kevlar,2,Items.tape,4,Summons.WraithOrigami,1]]
      });
      
      public static var wreckingrod:Equip = new Equip({
         "HP":[0,5,10,15,20],
         "attack":[0,5,10,15,20],
         "defence":[30,60,90,120,150],
         "magicAttack":[-50],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bomb":Equips.long50,
            "wind":Equips.long50,
            "thunder":Equips.long50
         },
         "element":Element.BOMB,
         "statusEffect":Status.DISPEL,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST_DEBUFFS],null,[Equip.BOOST_HEALING],null,[Equip.DEFEND_BUFF,Stats.DEFENCE,80]]
      });
      
      public static var slimestaff:Equip = new Equip({
         "HP":[-25],
         "attack":[0],
         "defence":[0],
         "magicAttack":[30,50,70,90,110],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[-25],
         "resistance":{
            "thunder":Equips.long50,
            "ice":Equips.long50,
            "fire":Equips.long50
         },
         "element":Element.HOLY,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST_HEALING],null,[Equip.BOOST,Element.HOLY],null,[Equip.CAST,Spells.holyfire,0.5]],
         "materials":[undefined,undefined,undefined,[Items.grail,1,Items.gems,6,Items.feather,6]]
      });
      
      public static var elderswisdom:Equip = new Equip({
         "HP":[0],
         "attack":[0,10,20,30,40],
         "defence":[-25],
         "magicAttack":[40,60,80,105,130],
         "magicDefence":[-25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":Equips.long50,
            "wind":Equips.long50,
            "weight":Equips.long100
         },
         "element":Element.EARTH,
         "statusEffect":Status.WEAKEN,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,2,2,2,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.STATUS,Status.WEAKEN,1,0.5],[Equip.BOOST,Element.WIND],[Equip.BOOST,Element.EARTH],null,[Equip.CAST,Spells.hurricane,0.5]]
      });
      
      public static var gigavolt:Equip = new Equip({
         "HP":[0],
         "attack":[10,25,40,55,70],
         "defence":[0],
         "magicAttack":[10,25,40,55,70],
         "magicDefence":[0],
         "accuracy":[10,15,20,25,30],
         "evade":[0],
         "resistance":{
            "thunder":Equips.long50,
            "bomb":Equips.long50,
            "stun":Equips.long100
         },
         "element":Element.THUNDER,
         "statusEffect":Status.DRY,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[5],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.THUNDER],null,[Equip.BOOST,Element.BOMB],null,[Equip.COUNTER,Spells.thunderstorm]]
      });
      
      public static var soulcrusher:Equip = new Equip({
         "SID":"soulcrusher",
         "type":Equip.STAFF,
         "icon":261,
         "skin":18,
         "map":[15],
         "HP":[10,15,20,25,30],
         "attack":[40,80,120,160,200],
         "defence":[10,15,20,25,30],
         "magicAttack":[-20],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[-20],
         "evade":[-20],
         "resistance":{
            "thunder":Equips.long100,
            "weight":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.INTIMIDATE],null,[Equip.CAST,Spells.deathP,0.2],[Equip.COUNTER,Spells.staffstrike],[Equip.BOOST_STATUS]],
         "materials":[undefined,undefined,undefined,[Items.titanium,1,Items.rune,1,Items.steel,6]]
      });
      
      public static var oakstaff:Equip = new Equip({
         "HP":[0,5,5,10,10],
         "attack":[-50],
         "defence":[0],
         "magicAttack":[-50],
         "magicDefence":[30,60,90,120,150],
         "accuracy":[0],
         "evade":[0,5,10,15,20],
         "resistance":{
            "earth":Equips.long50,
            "water":Equips.long50,
            "bio":Equips.long50
         },
         "element":Element.EARTH,
         "elementDegree":50,
         "statusEffect":Status.HEAVY,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[5],
         "specials":[[Equip.BOOST_BUFFS],null,[Equip.BOOST_HEALING],null,[Equip.DEFEND_BUFF,Stats.MAGIC_DEFENCE,80]],
         "materials":[undefined,undefined,[Items.opal,1,Items.root,15,Items.flower,15],[Items.emerald,6,Items.opal,3]]
      });
      
      public static var shootingstar:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[10,25,35,55,70],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[5,10,15,20,25],
         "resistance":{
            "dispel":Equips.long100,
            "syphon":Equips.long100,
            "curse":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.NONE],[Equip.BOOST,Element.DARK],[Equip.COUNTER,Spells.starshower],null,[Equip.SUMMON,Spells.pulsar,0.4]]
      });
      
      public static var beholdingeye:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0,0,5,10,10],
         "magicAttack":[10,25,40,55,75],
         "magicDefence":[0,0,5,10,10],
         "accuracy":[10,15,20,25,30],
         "evade":[0],
         "resistance":{
            "bio":Equips.long100,
            "dark":Equips.long100
         },
         "element":Element.BIO,
         "statusEffect":Status.POISON,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,2,2,2,3],
         "buffEffect":Stats.NONE,
         "buffChance":[0],
         "buffDegree":[0],
         "specials":[[Equip.BOOST,Element.BIO],null,[Equip.CAST,Spells.acidP,0.5],null,[Equip.SUMMON,Summons.ClassicBeholder,0.25]],
         "materials":[undefined,undefined,undefined,[Summons.ClassicEyeball,1,Items.rune,1]]
      });
      
      public static var shadowblaster:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[15,30,40,55,70],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dark":Equips.long50,
            "fire":Equips.long50,
            "thunder":Equips.long50
         },
         "element":Element.DARK,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.DARK],null,[Equip.BOOST,Element.FIRE],[Equip.SUMMON,Summons.Defender3,0.17],[Equip.CAST,Spells.geometry2,0.22]],
         "materials":[undefined,undefined,[Items.rune,2,Items.bomb,2]]
      });
      
      public static var biohazardblaster:Equip = new Equip({
         "HP":[0],
         "attack":[5,10,15,20,25],
         "defence":[5,10,15,20,25],
         "magicAttack":[5,10,15,20,25],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bio":Equips.long50,
            "dark":Equips.long50,
            "curse":Equips.long100
         },
         "element":Element.BIO,
         "statusEffect":Status.RANDOM,
         "statusChance":[60,70,80,90,100],
         "statusDegree":[1],
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[30,40,50,60,70],
         "buffDegree":[-10,-20,-30,-40,-50],
         "specials":[[Equip.BOOST_DEBUFFS],null,[Equip.DRAIN_HP],null,[Equip.CAST,Spells.acidP,1]]
      });
      
      public static var coconutshooter:Equip = new Equip({
         "HP":[10,15,20,30,40],
         "attack":[-45],
         "defence":[5,10,15,20,30],
         "magicAttack":[-45],
         "magicDefence":[5,10,15,20,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bio":Equips.long50,
            "earth":Equips.long50,
            "water":Equips.long50
         },
         "element":Element.EARTH,
         "statusEffect":Status.TIRED,
         "statusChance":[20,30,40,50,60],
         "statusDegree":[2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.EARTH],null,[Equip.BOOST_HEALING],[Equip.SUMMON,Summons.GloopWood,0.25],[Equip.DEFEND_STATUS,Status.BLESS,3]],
         "materials":[undefined,[Summons.IdolWood,1],undefined,[Items.opal,4,Items.wood,12]]
      });
      
      public static var gungnir:Equip = new Equip({
         "HP":[0],
         "attack":[10,30,50,75,100],
         "defence":[0],
         "magicAttack":[10,30,50,75,100],
         "magicDefence":[0],
         "accuracy":[5,10,15,20,25],
         "evade":[0],
         "resistance":{
            "dispel":Equips.long100,
            "stagger":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[],
         "materials":[undefined,undefined,undefined,[Items.plutonium,1,Summons.FishJet,1]]
      });
      
      public static var heartstopper:Equip = new Equip({
         "HP":[-25],
         "attack":[10,20,30,40,50],
         "defence":[0],
         "magicAttack":[40,60,80,100,120],
         "magicDefence":[0],
         "accuracy":[0,5,5,5,10],
         "evade":[0,5,5,5,10],
         "resistance":{
            "death":[-300],
            "thunder":Equips.long100,
            "dark":Equips.long100
         },
         "element":Element.THUNDER,
         "statusEffect":Status.DOOM,
         "statusChance":[30,35,40,45,50],
         "statusDegree":[3,3,3,3,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.STATUS,Status.DOOM,2,1],null,[Equip.COUNTER,Spells.plasma],null,[Equip.BOOST,Element.DARK]],
         "materials":[undefined,undefined,undefined,[Summons.GolemTopaz,1]]
      });
      
      public static var heavyclaw:Equip = new Equip({
         "HP":[5,5,10,10,15],
         "attack":[10,20,30,45,60],
         "defence":[0],
         "magicAttack":[5,10,15,20,30],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[-20],
         "resistance":{
            "bomb":Equips.long50,
            "weight":Equips.long100,
            "stagger":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":Status.STAGGER,
         "statusChance":[60,70,80,90,100],
         "statusDegree":[1,1,1,1,1],
         "buffEffect":Stats.DEFENCE,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-30,-35,-40,-45,-50],
         "specials":[[Equip.BOOST,Element.NONE],null,[Equip.COUNTER,Spells.crush],null,[Equip.DEFEND_BUFF,Stats.DEFENCE,80]]
      });
      
      public static var hellfireshotgun:Equip = new Equip({
         "HP":[0],
         "attack":[15,30,45,65,85],
         "defence":[0],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[5,10,10,15,15],
         "resistance":{
            "fire":Equips.long50,
            "burn":Equips.long100,
            "dark":Equips.long50
         },
         "element":Element.FIRE,
         "statusEffect":Status.BERSERK,
         "statusChance":[50,60,80,90,100],
         "statusDegree":[2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.FIRE],null,[Equip.CAST,Spells.hellfire,1],[Equip.STEAL],[Equip.COUNTER,Spells.unloadd]]
      });
      
      public static var crystalwing:Equip = new Equip({
         "HP":[0,5,10,15,20],
         "attack":[10,20,30,40,50],
         "defence":[0],
         "magicAttack":[10,20,30,45,60],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "water":Equips.long50,
            "wind":Equips.long50,
            "ice":Equips.long50
         },
         "element":Element.HOLY,
         "statusEffect":Status.ENCHANTED,
         "statusChance":[30,35,40,45,50],
         "statusDegree":[1,1,1,1,1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.HOLY],null,[Equip.DRAIN_HP],null,[Equip.COUNTER,Spells.doubleshot]],
         "materials":[undefined,undefined,[Items.silver,5,Summons.BitHoly,1]]
      });
      
      public static var spinesnapper:Equip = new Equip({
         "HP":[0],
         "attack":[0,10,20,30,40],
         "defence":[0],
         "magicAttack":[0,10,20,30,40],
         "magicDefence":[0],
         "accuracy":[-20],
         "evade":[10,15,20,25,30],
         "resistance":{
            "dark":Equips.long50,
            "death":Equips.long100,
            "holy":Equips.down30
         },
         "element":Element.NONE,
         "statusEffect":Status.DEATH,
         "statusChance":[20,20,30,40,50],
         "statusDegree":[1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.DRAIN_HP],[Equip.STATUS,Status.BAD_LUCK,1,3],[Equip.COUNTER,Spells.snipe],null,[Equip.BOOST_STATUS]],
         "materials":[undefined,undefined,[Summons.PixelBat,1]]
      });
      
      public static var soulpistol:Equip = new Equip({
         "HP":[0],
         "attack":[10,20,30,45,65],
         "defence":[0],
         "magicAttack":[10,20,30,45,65],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0,5,10,15,20],
         "resistance":{
            "wind":Equips.long50,
            "holy":Equips.long50,
            "weak":Equips.long100
         },
         "element":Element.WIND,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.MAGIC_ATTACK,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-30,-35,-40,-45,-50],
         "specials":[[Equip.BOOST,Element.WIND],[Equip.BOOST,Element.HOLY],[Equip.CAST,Spells.tempest,0.25],[Equip.SUMMON,Summons.FishSteam,1.5],null],
         "materials":[undefined,undefined,undefined,[Items.plutonium,1,Items.silver,1,Items.gold,1]]
      });
      
      public static var thundercore:Equip = new Equip({
         "HP":[0],
         "attack":[0,5,5,10,10],
         "defence":[0],
         "magicAttack":[20,30,40,50,65],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "thunder":Equips.long50,
            "stun":Equips.long100,
            "bomb":Equips.long50
         },
         "element":Element.THUNDER,
         "statusEffect":Status.STUN,
         "statusChance":[20,30,40,50,60],
         "statusDegree":[1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.THUNDER],null,[Equip.BOOST,Element.WIND],[Equip.SUMMON,Summons.Defender1,0.19],[Equip.CAST,Spells.thunderstorm,0.2]],
         "materials":[undefined,undefined,[Items.cpu,2,Items.tape,6]]
      });
      
      public static var deepblue:Equip = new Equip({
         "HP":[0],
         "attack":[20,30,45,60,75],
         "defence":[-10],
         "magicAttack":[0,5,10,15,20],
         "magicDefence":[-10],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "water":Equips.long50,
            "bomb":Equips.long50,
            "wet":Equips.long100
         },
         "element":Element.WATER,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.WATER],null,[Equip.BOOST,Element.BOMB],[Equip.SUMMON,Summons.Defender2,0.2],[Equip.CAST,Spells.surgingskewer,0.2]]
      });
      
      public static var subzero:Equip = new Equip({
         "HP":[0],
         "attack":[10,20,30,40,50],
         "defence":[0],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[10,10,15,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "ice":Equips.long50,
            "water":Equips.long50,
            "wind":Equips.long50
         },
         "element":Element.ICE,
         "statusEffect":Status.FREEZE,
         "statusChance":[20,40,60,80,100],
         "statusDegree":[1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.ICE],null,[Equip.SUMMON,Spells.hail,0.66],null,[Equip.CAST,Spells.icestorm,0.2]],
         "materials":[undefined,undefined,[Items.steel,18,Items.spring,2]]
      });
      
      public static var vortexcannon:Equip = new Equip({
         "HP":[0,5,5,10,10],
         "attack":[0],
         "defence":[0],
         "magicAttack":[25,40,55,70,85],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "wind":Equips.long100,
            "stagger":Equips.long100
         },
         "element":Element.WIND,
         "statusEffect":Status.LIGHT,
         "statusChance":[50,60,70,85,100],
         "statusDegree":[2,2,2,2,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.WIND],[Equip.BOOST,Element.WATER],[Equip.BOOST,Element.ICE],null,[Equip.SUMMON,Spells.lowgravity,0.6]]
      });
      
      public static var chainsawgun:Equip = new Equip({
         "HP":[0],
         "attack":[100,125,150,175,200],
         "defence":[-50],
         "magicAttack":[0],
         "magicDefence":[-50],
         "accuracy":[0,5,5,10,10],
         "evade":[0,5,5,10,10],
         "resistance":{
            "bomb":Equips.long50,
            "stagger":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.SCARE,Foe.TREES],[Equip.BOOST,Element.NONE],[Equip.COUNTER,Spells.crush],null,[Equip.CAST,Spells.sawblade,0.5]]
      });
      
      public static var nitrobomber:Equip = new Equip({
         "HP":[0],
         "attack":[0,10,20,30,40],
         "defence":[0],
         "magicAttack":[20,30,40,50,65],
         "magicDefence":[0],
         "accuracy":[0,0,5,10,15],
         "evade":[0,0,5,10,15],
         "resistance":{
            "bomb":Equips.long100,
            "stagger":Equips.long100,
            "stun":Equips.long100
         },
         "element":Element.BOMB,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.BOMB],null,[Equip.CAST,Spells.airstrike1,0.2],null,[Equip.SUMMON,Spells.airstrike3,0.35]],
         "materials":[undefined,[Summons.IdolMetal,1],undefined]
      });
      
      public static var desertscorpion:Equip = new Equip({
         "HP":[0],
         "attack":[10,25,40,55,70],
         "defence":[0,5,5,10,15],
         "magicAttack":[10,20,30,40,55],
         "magicDefence":[0,0,5,5,15],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":Equips.long50,
            "thunder":Equips.long50,
            "fire":Equips.long50
         },
         "element":Element.EARTH,
         "statusEffect":Status.STAGGER,
         "statusChance":[50,60,70,85,100],
         "statusDegree":[1,1,1,1,1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.EARTH],null,[Equip.CAST,Spells.cataclysmiccut,0.2],null,[Equip.SUMMON,Spells.highgravity,0.6]]
      });
      
      public static var accelerator:Equip = new Equip({
         "HP":[-10],
         "attack":[-40,-35,-35,-30,-30],
         "defence":[-30],
         "magicAttack":[-40,-35,-35,-30,-30],
         "magicDefence":[-30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "stun":Equips.long100,
            "syphon":Equips.long100,
            "stagger":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":Status.STUN,
         "statusChance":[10,20,30,40,50],
         "statusDegree":[1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.STATUS,Status.HASTE,2,3],null,[Equip.BOOST_BUFFS],null,[Equip.BOOST_DEBUFFS]],
         "materials":[undefined,undefined,[Summons.FallenBurned,1,Items.gear,2,Items.spring,2]]
      });
      
      public static var supersnipe:Equip = new Equip({
         "HP":[0],
         "MP":[0],
         "attack":[25,45,70,95,125],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[25,30,35,40,50],
         "evade":[0],
         "resistance":{
            "stun":Equips.long100,
            "dispel":Equips.long100,
            "syphon":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":Status.DEATH,
         "statusChance":[10,15,15,15,20],
         "statusDegree":[1,1,1,1,1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.NONE],null,[Equip.SUMMON,Summons.CatSniper,0.5],null,[Equip.STATUS,Status.GOOD_LUCK,2,0.3]],
         "materials":[undefined,undefined,undefined,[Items.gamechild,1,Items.cpu,1,Items.magazine,1]]
      });
      
      public static var greengoliath:Equip = new Equip({
         "HP":[0,5,10,15,20],
         "MP":[0],
         "attack":[10,20,25,35,45],
         "defence":[0],
         "magicAttack":[10,20,25,35,45],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bio":Equips.long50,
            "earth":Equips.long50,
            "weak":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":Status.TIRED,
         "statusChance":[30,35,40,45,50],
         "statusDegree":[2,2,2,2,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.BIO],null,[Equip.STATUS,Status.CHARGE,1,3],null,[Equip.COUNTER,Spells.crush]]
      });
      
      public static var flametitan:Equip = new Equip({
         "HP":[0],
         "attack":[-20],
         "defence":[0],
         "magicAttack":[40,60,80,100,120],
         "magicDefence":[0],
         "accuracy":[-20],
         "evade":[-20],
         "resistance":{
            "earth":Equips.long50,
            "wind":Equips.long50,
            "weight":Equips.long100
         },
         "element":Element.FIRE,
         "statusEffect":Status.DRY,
         "statusChance":[50,65,80,90,100],
         "statusDegree":[2,2,2,2,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.STATUS,Status.TIRED,2,0.5],null,[Equip.COUNTER,Spells.flameshot],null,[Equip.STATUS,Status.CHARGE,1,0.2]],
         "materials":[undefined,[Summons.GloopAsh,1],undefined,[Items.iron,12,Items.titanium,1]]
      });
      
      public static var fairybow:Equip = new Equip({
         "HP":[0,0,0,0,5],
         "attack":[20,35,50,65,80],
         "defence":[0],
         "magicAttack":[0,0,10,20,30],
         "magicDefence":[5,5,10,10,15],
         "accuracy":[0],
         "evade":[0,0,0,0,5],
         "resistance":{
            "bio":Equips.long50,
            "earth":Equips.long50,
            "curse":Equips.long100
         },
         "element":Element.EARTH,
         "statusEffect":Status.NONE,
         "specials":[[Equip.BOOST,Element.EARTH],null,[Equip.CAST,Spells.bigroot,0.3],null,[Equip.COUNTER,Spells.piercingshot]],
         "materials":[undefined,[Summons.BushGreen,1],undefined]
      });
      
      public static var emeraldcyclone:Equip = new Equip({
         "HP":[0],
         "attack":[0,5,10,20,25],
         "defence":[-25],
         "magicAttack":[50,70,90,115,140],
         "magicDefence":[-25],
         "accuracy":[0],
         "evade":[10,15,20,25,30],
         "resistance":{
            "wind":Equips.long100,
            "weak":Equips.long100,
            "syphon":Equips.long100
         },
         "element":Element.WIND,
         "statusEffect":Status.DISPEL,
         "statusChance":[20,40,60,80,100],
         "statusDegree":[1,1,1,1,1],
         "specials":[[Equip.BOOST,Element.WIND],null,[Equip.DEFEND_BUFF,Stats.EVADE,30],null,[Equip.SUMMON,Spells.arrowrain,0.66]]
      });
      
      public static var crimsondragon:Equip = new Equip({
         "HP":[0,5,5,10,10],
         "MP":[0],
         "attack":[0,5,10,15,20],
         "defence":[10,15,20,25,30],
         "magicAttack":[5,15,30,45,65],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":Equips.long50,
            "dark":Equips.long50,
            "ice":Equips.long50
         },
         "element":Element.FIRE,
         "statusEffect":Status.DRY,
         "statusChance":[50,60,70,80,100],
         "statusDegree":[2,2,2,2,2],
         "specials":[[Equip.BOOST,Element.FIRE],[Equip.BOOST_DEBUFFS],null,[Equip.SUMMON,Summons.ClassicCrystalRed,0.66],[Equip.SUMMON,Summons.ClassicEaterFire,0.44]],
         "materials":[undefined,undefined,[Summons.BearBlack,1,Items.ruby,1]]
      });
      
      public static var coldsteel:Equip = new Equip({
         "HP":[0,5,5,10,10],
         "MP":[0],
         "attack":[10,25,40,55,70],
         "defence":[0],
         "magicAttack":[0,0,5,10,15],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0,5,10,10,10],
         "resistance":{
            "ice":Equips.long50,
            "wind":Equips.long50,
            "water":Equips.long50
         },
         "element":Element.ICE,
         "statusEffect":Status.CHILL,
         "statusChance":[50,60,70,80,100],
         "statusDegree":[2,2,2,2,2],
         "specials":[[Equip.BOOST,Element.ICE],[Equip.BOOST,Element.WATER],null,[Equip.SUMMON,Summons.ClassicCrystalBlue,0.66],[Equip.SUMMON,Summons.ClassicEaterIce,0.44]],
         "materials":[undefined,undefined,[Items.sapphire,1,Summons.BearGrolar,1]]
      });
      
      public static var thorshammer:Equip = new Equip({
         "HP":[0],
         "MP":[0],
         "attack":[10,20,30,40,50],
         "defence":[0],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[0],
         "accuracy":[0,5,10,15,15],
         "evade":[0,5,10,15,15],
         "resistance":{
            "fire":Equips.long50,
            "thunder":Equips.long50,
            "holy":Equips.long50
         },
         "element":Element.THUNDER,
         "statusEffect":Status.STAGGER,
         "statusChance":[50,60,70,80,100],
         "statusDegree":[1],
         "specials":[[Equip.BOOST_BUFFS],null,[Equip.SUMMON,Summons.SlimeMouse,0.66],[Equip.SUMMON,Summons.SquidLime,0.44],[Equip.BOOST_STATUS]],
         "materials":[undefined,undefined,[Summons.DogZap,1,Items.topaz,3]]
      });
      
      public static var gaiasgift:Equip = new Equip({
         "HP":[0],
         "attack":[10,25,35,50,65],
         "defence":[0],
         "magicAttack":[20,35,50,70,90],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":Equips.long50,
            "dark":Equips.long50,
            "weight":Equips.long100
         },
         "element":Element.EARTH,
         "statusEffect":Status.HEAVY,
         "statusChance":[50,60,70,80,100],
         "statusDegree":[2,2,2,2,2],
         "specials":[[Equip.BOOST,Element.EARTH],null,[Equip.BOOST,Element.BIO],null,[Equip.COUNTER,Spells.gaiablossom]],
         "materials":[undefined,undefined,[Items.emerald,2,Items.opal,1]]
      });
      
      public static var irontusk:Equip = new Equip({
         "HP":[0,5,5,10,10],
         "MP":[0],
         "attack":[10,25,40,55,70],
         "defence":[0],
         "magicAttack":[10,25,40,55,70],
         "magicDefence":[0],
         "accuracy":[-15],
         "evade":[-15],
         "resistance":{
            "stagger":Equips.long100,
            "thunder":Equips.long100
         },
         "element":Element.BOMB,
         "statusEffect":Status.STAGGER,
         "statusChance":[50,60,70,80,100],
         "statusDegree":[1,1,1,1,1],
         "specials":[[Equip.BOOST,Element.NONE],[Equip.BOOST,Element.BOMB],[Equip.SUMMON,Summons.MammothWar,0.15],null,[Equip.DEFEND_BUFF,Stats.HP,20]]
      });
      
      public static var chieftainshorns:Equip = new Equip({
         "HP":[0],
         "MP":[0],
         "attack":[0,10,20,30,40],
         "defence":[5,10,15,20,25],
         "magicAttack":[0,10,20,30,40],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":Equips.long50,
            "wind":Equips.long50
         },
         "element":Element.EARTH,
         "statusEffect":Status.WEAKEN,
         "statusChance":[60,70,80,90,100],
         "statusDegree":[2,2,2,2,3],
         "buffEffect":Stats.MAGIC_ATTACK,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-20,-30,-40,-50,-60],
         "specials":[[Equip.STATUS,Status.MORALE,2,0.5],null,[Equip.SUMMON,Summons.MirrorWise,0.66],null,[Equip.COUNTER,Spells.arrowrain]]
      });
      
      public static var juggernaut:Equip = new Equip({
         "HP":[10,15,20,30,40],
         "MP":[0],
         "attack":[10,15,20,25,30],
         "defence":[10,15,20,25,30],
         "magicAttack":[10,15,20,25,30],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dispel":Equips.long100,
            "stagger":Equips.long100,
            "stun":Equips.long100
         },
         "element":Element.BOMB,
         "statusEffect":Status.STAGGER,
         "statusChance":[30,50,60,70,80],
         "statusDegree":[1,1,1,1,1],
         "specials":[[Equip.STATUS,Status.CONFUSE,1,0.5],null,[Equip.SUMMON,Spells.airstrike3,0.33],[Equip.SUMMON,Spells.seabomb,0.77],[Equip.SUMMON,Spells.tankgun,2]]
      });
      
      public static var aquamarine:Equip = new Equip({
         "HP":[10,15,20,25,30],
         "attack":[0,5,10,15,20],
         "defence":[0],
         "magicAttack":[20,40,60,80,100],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[0],
         "evade":[5,10,10,10,15],
         "resistance":{
            "water":Equips.long50,
            "holy":Equips.long50,
            "dark":Equips.long50
         },
         "element":Element.WATER,
         "statusEffect":Status.CHILL,
         "statusChance":[30,40,50,60,70],
         "statusDegree":[2,2,2,2,2],
         "specials":[[Equip.BOOST,Element.WATER],[Equip.BOOST,Element.ICE],null,[Equip.SUMMON,Summons.BitWater,1],[Equip.SUMMON,Summons.GolemPearl,0.75]],
         "materials":[undefined,undefined,[Items.sapphire,3,Items.gems,6],[Items.moonpearl,2,Summons.BoulderCoral,1]]
      });
      
      public static var eagleeye:Equip = new Equip({
         "HP":[0],
         "attack":[0,5,10,15,20],
         "defence":[0],
         "magicAttack":[0,5,10,15,20],
         "magicDefence":[0],
         "accuracy":[25,35,45,60,75],
         "evade":[0,5,10,15,20],
         "resistance":{
            "curse":Equips.long100,
            "syphon":Equips.long100,
            "weak":Equips.long100
         },
         "element":Element.NONE,
         "elementDegree":100,
         "buffEffect":Stats.ATTACK,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-30,-35,-40,-45,-50],
         "statusEffect":Status.STUN,
         "statusChance":[10,20,30,40,50],
         "statusDegree":[1,1,1,1,1],
         "specials":[[Equip.STEAL],null,[Equip.SUMMON,Spells.bind,1],[Equip.CAST,Spells.slowdown,0.25],[Equip.COUNTER,Spells.piercingshot]]
      });
      
      public static var thestinger:Equip = new Equip({
         "HP":[0,0,0,5,5],
         "attack":[10,10,15,20,30],
         "defence":[0,5,5,10,10],
         "magicAttack":[10,10,15,20,30],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[0],
         "evade":[0,0,0,5,5],
         "resistance":{
            "bio":Equips.long150,
            "fire":Equips.down30
         },
         "element":Element.BIO,
         "statusEffect":Status.VIRUS,
         "statusChance":[60,70,80,90,100],
         "statusDegree":[2,2,2,2,2],
         "specials":[null,[Equip.SUMMON,Spells.arcadePoison,0.66],[Equip.CAST,Spells.arcadeNettle,0.4],[Equip.STATUS,Status.POISON,2,1]],
         "materials":[undefined,undefined,undefined,[Items.spike,8,Summons.PixelSlime,1,Items.emerald,2]]
      });
      
      public static var thedeceased:Equip = new Equip({
         "HP":[0],
         "attack":[10,30,40,60,75],
         "defence":[0],
         "magicAttack":[10,30,40,60,75],
         "magicDefence":[0],
         "accuracy":[0,5,5,10,15],
         "evade":[0,5,5,10,15],
         "resistance":{
            "weak":Equips.long100,
            "curse":Equips.long100,
            "stagger":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":Status.BAD_LUCK,
         "statusChance":[60,70,80,90,100],
         "statusDegree":[1,2,2,3,3],
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-30,-35,-40,-45,-50],
         "specials":[[Equip.BOOST,Element.NONE],null,[Equip.CAST,Spells.bonePillar,0.33],null,[Equip.COUNTER,Spells.arrowcut]],
         "materials":[undefined,undefined,undefined,[Items.darkmatter,1,Summons.DollAnna,1]]
      });
      
      public static var blackwidow:Equip = new Equip({
         "HP":[0],
         "attack":[15,25,35,45,60],
         "defence":[0],
         "magicAttack":[0,5,10,20,30],
         "magicDefence":[0],
         "accuracy":[5,15,25,35,45],
         "evade":[0],
         "resistance":{
            "dark":Equips.long50,
            "curse":Equips.long100,
            "death":Equips.long100
         },
         "element":Element.BIO,
         "statusEffect":Status.DOOM,
         "statusChance":[30,35,40,45,50],
         "statusDegree":[1],
         "specials":[[Equip.BOOST,Element.DARK],[Equip.DRAIN_HP],[Equip.COUNTER,Spells.arrowcut],null,[Equip.CAST,Spells.spiderweb,1]]
      });
      
      public static var sharanga:Equip = new Equip({
         "HP":[0],
         "attack":[15,30,45,60,75],
         "defence":[0],
         "magicAttack":[5,15,30,40,50],
         "magicDefence":[0],
         "accuracy":[0,5,5,10,10],
         "evade":[0,5,5,10,10],
         "resistance":{
            "dark":Equips.long50,
            "holy":Equips.long50
         },
         "element":Element.DARK,
         "elementDegree":50,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.DARK],null,[Equip.COUNTER,Spells.comboshot]]
      });
      
      public static var heavensvoice:Equip = new Equip({
         "HP":[0,5,5,10,10],
         "attack":[0,10,20,30,40],
         "defence":[0],
         "magicAttack":[20,35,50,65,80],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "weight":Equips.long100,
            "syphon":Equips.long100,
            "death":Equips.long100
         },
         "element":Element.HOLY,
         "statusEffect":Status.SYPHON,
         "statusChance":[20,30,40,60,70],
         "statusDegree":[2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.HOLY],[Equip.COUNTER,Spells.arrowcut],[Equip.CAST,Spells.syphon,0.33],null,[Equip.SUMMON,Spells.musicalblastP,0.33]]
      });
      
      public static var fenrirsjaw:Equip = new Equip({
         "HP":[-70],
         "attack":[100,125,150,175,200],
         "defence":[-10],
         "magicAttack":[-10],
         "magicDefence":[-10],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":Equips.long50,
            "thunder":Equips.long50,
            "wind":Equips.long50
         },
         "element":Element.NONE,
         "statusEffect":Status.NONE,
         "specials":[[Equip.BOOST,Element.NONE],null,[Equip.COUNTER,Spells.comboshot],null,[Equip.SUMMON,Spells.sharpenP,0.4]]
      });
      
      public static var alchemistsbow:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0,5,5,15,15],
         "magicAttack":[0],
         "magicDefence":[0,5,5,15,15],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "syphon":Equips.long100,
            "stagger":Equips.long100,
            "dispel":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":Status.RANDOM,
         "statusChance":[60,70,80,90,100],
         "statusDegree":[1],
         "buffEffect":Stats.DEFENCE,
         "buffChance":[30,40,50,60,70],
         "buffDegree":[-10,-20,-30,-40,-50],
         "specials":[[Equip.BOOST_DEBUFFS],null,[Equip.BOOST_BUFFS],null,[Equip.CAST,Spells.spectrum,0.66]],
         "materials":[undefined,undefined,[Items.emerald,1,Items.sapphire,1,Items.ruby,1]]
      });
      
      public static var angelwing:Equip = new Equip({
         "HP":[0],
         "MP":[0],
         "attack":[15,25,40,60,80],
         "defence":[0],
         "magicAttack":[15,25,35,50,60],
         "magicDefence":[0],
         "accuracy":[0,0,0,5,15],
         "evade":[0],
         "resistance":{
            "holy":Equips.long50,
            "wind":Equips.long50,
            "dark":Equips.long50
         },
         "element":Element.WIND,
         "statusEffect":Status.WEAKEN,
         "statusChance":[20,30,40,50,60],
         "statusDegree":[5,5,5,5,5],
         "specials":[[Equip.BOOST,Element.WIND],null,[Equip.BOOST,Element.THUNDER],null,[Equip.BOOST,Element.HOLY]]
      });
      
      public static var earthswhisper:Equip = new Equip({
         "HP":[0],
         "attack":[10,25,40,55,70],
         "defence":[0],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bio":Equips.long100,
            "earth":Equips.long100
         },
         "element":Element.BIO,
         "statusEffect":Status.TIRED,
         "statusChance":[20,40,60,80,100],
         "statusDegree":[2,2,2,3,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.BIO],[Equip.COUNTER,Spells.arrowcut],[Equip.CAST,Spells.razorleaf2,0.4],null,[Equip.SUMMON,Summons.BoulderDirt,0.55]],
         "materials":[undefined,undefined,undefined,[Items.opal,5,Summons.MirrorWise,1]]
      });
      
      public static var regalturtle:Equip = new Equip({
         "HP":[0],
         "MP":[0],
         "attack":[0,0,5,10,15],
         "defence":[10,15,20,30,40],
         "magicAttack":[0,0,5,10,15],
         "magicDefence":[10,15,20,30,40],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":Equips.long50,
            "thunder":Equips.long50,
            "curse":Equips.long100
         },
         "element":Element.THUNDER,
         "statusEffect":Status.DISPEL,
         "statusChance":[20,40,60,80,100],
         "statusDegree":[1,1,1,1,1],
         "specials":[[Equip.BOOST,Element.THUNDER],null,[Equip.BOOST_DEBUFFS],null,[Equip.BOOST_STATUS]],
         "materials":[undefined,undefined,[Items.gold,2,Items.silver,2]]
      });
      
      public static var steelbuckler:Equip = new Equip({
         "HP":[0,5,5,10,15],
         "MP":[0],
         "attack":[10,20,30,40,50],
         "defence":[10,20,30,40,50],
         "magicAttack":[10,15,20,25,30],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[-10],
         "resistance":{
            "earth":Equips.long50,
            "wind":Equips.long50,
            "weight":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":null,
         "specials":[[Equip.BOOST,Element.NONE],null,[Equip.DEFEND_STATUS,Status.MORALE,3]],
         "materials":[undefined,undefined,[Items.rune2,2,Summons.CatWarrior,1]]
      });
      
      public static var elvenshield:Equip = new Equip({
         "HP":[0],
         "attack":[10,20,30,40,50],
         "defence":[0,0,5,10,15],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[0,0,5,10,15],
         "accuracy":[0],
         "evade":[0,5,5,10,15],
         "resistance":{
            "earth":Equips.long100,
            "holy":Equips.long100
         },
         "element":Element.HOLY,
         "specials":[[Equip.BOOST,Element.HOLY],[Equip.BOOST,Element.EARTH],null,[Equip.BOOST_BUFFS],[Equip.BOOST_HEALING]]
      });
      
      public static var vikingbuckler:Equip = new Equip({
         "SID":"vikingbuckler",
         "type":Equip.TOYS,
         "icon":322,
         "skin":3,
         "map":[56],
         "HP":[0,5,5,10,10],
         "attack":[20,35,45,60,80],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "water":Equips.long50,
            "ice":Equips.long50,
            "wind":Equips.long50
         },
         "element":Element.NONE,
         "statusEffect":Status.STAGGER,
         "statusChance":[20,30,40,50,60],
         "statusDegree":[1],
         "specials":[null,[Equip.STATUS,Status.BRAVE,2,0.5],[Equip.STATUS,Status.MORALE,2,0.5],[Equip.SUMMON,Summons.FallenLost,0.4],[Equip.SUMMON,Summons.MammothWooly,0.25]]
      });
      
      public static var pixelpopper:Equip = new Equip({
         "HP":[0],
         "attack":[5,10,15,20,25],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[10,20,30,40,50],
         "resistance":{
            "weight":Equips.long100,
            "thunder":Equips.long50,
            "stun":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":Status.RANDOM,
         "statusChance":[60,70,80,90,100],
         "statusDegree":[1],
         "specials":[[Equip.SUMMON,Summons.ArcadeBosh,0.2],null,[Equip.SUMMON,Summons.ArcadeTotom,0.2],null,[Equip.SUMMON,Summons.ArcadePhoenix,0.2]],
         "materials":[[Items.floppy,1],[Items.tape,8],[Items.cpu,1,Items.tape,2],[Items.cpu,2,Summons.Glitch2,1]]
      });
      
      public static var godlybook:Equip = new Equip({
         "HP":[0,5,5,10,10],
         "attack":[0],
         "defence":[10,15,20,25,30],
         "magicAttack":[5,10,15,20,25],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":Equips.long50,
            "dark":Equips.long50,
            "weak":Equips.long100
         },
         "element":Element.HOLY,
         "statusEffect":Status.CURSE,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,2,2,2,3],
         "specials":[[Equip.BOOST_HEALING],null,[Equip.SUMMON,Spells.purify,0.5],null,[Equip.COUNTER,Spells.healmore]],
         "materials":[undefined,undefined,[Summons.DollNoLegs,1,Items.silver,2],[Items.grail,1,Items.waterbottle,1]]
      });
      
      public static var humanskull:Equip = new Equip({
         "HP":[0],
         "attack":[0,5,10,15,20],
         "defence":[0],
         "magicAttack":[0,5,10,20,30],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bio":Equips.long50,
            "dark":Equips.long50,
            "earth":Equips.long50
         },
         "element":Element.NONE,
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-30,-35,-40,-45,-50],
         "specials":[[Equip.BOOST_DEBUFFS],null,[Equip.SUMMON,Summons.CatSkeleton,0.4],[Equip.SUMMON,Summons.HandSkeleton,0.3],[Equip.SUMMON,Summons.HydraZombie,0.15]],
         "materials":[undefined,undefined,[Summons.CatSkeleton,1,Items.claw,4]]
      });
      
      public static var devilssunrise:Equip = new Equip({
         "HP":[0],
         "attack":[20,40,60,80,100],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":Equips.long50,
            "dark":Equips.long50,
            "burn":Equips.long100
         },
         "element":Element.DARK,
         "statusEffect":Status.SHROUD,
         "statusChance":[100],
         "statusDegree":[2],
         "specials":[[Equip.STATUS,Status.SHROUD,2,1],null,[Equip.BOOST,Element.DARK],null,[Equip.CAST,Spells.blackspikes,0.5]],
         "materials":[undefined,undefined,undefined,[Items.rune,2,Items.darkmatter,1]]
      });
      
      public static var kingsguard:Equip = new Equip({
         "HP":[0],
         "attack":[15,25,40,60,75],
         "defence":[0,0,5,10,15],
         "magicAttack":[15,25,40,60,75],
         "magicDefence":[0,0,5,10,15],
         "accuracy":[-30],
         "evade":[0],
         "resistance":{
            "thunder":Equips.long50,
            "dark":Equips.long50,
            "curse":Equips.long100
         },
         "element":Element.HOLY,
         "statusEffect":Status.STUN,
         "statusChance":[10,20,30,40,50],
         "statusDegree":[1],
         "specials":[[Equip.BOOST,Element.HOLY],null,[Equip.BOOST,Element.NONE],null,[Equip.COUNTER,Spells.backstab]],
         "materials":[undefined,undefined,undefined,[Items.gold,3,Items.grail,1]]
      });
      
      public static var masamune:Equip = new Equip({
         "HP":[-70],
         "attack":[10,20,30,40,50],
         "defence":[0],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[0],
         "accuracy":[10,20,30,40,50],
         "evade":[100,125,150,175,200],
         "resistance":{
            "syphon":Equips.long100,
            "dispel":Equips.long100,
            "stun":Equips.long100
         },
         "element":Element.NONE,
         "statusEffect":Status.NONE,
         "specials":[[Equip.BOOST,Element.NONE],null,[Equip.BOOST_BUFFS],null,[Equip.STATUS,Status.GOOD_LUCK,2,0.25]]
      });
      
      public static var leafshield:Equip = new Equip({
         "HP":[5,10,15,20,25],
         "attack":[-50],
         "defence":[10,15,20,30,40],
         "magicAttack":[-50],
         "magicDefence":[10,15,20,30,40],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":Equips.long50,
            "dark":Equips.long50,
            "bio":Equips.long50
         },
         "element":Element.EARTH,
         "statusEffect":Status.TIRED,
         "statusChance":[100],
         "statusDegree":[1,2,2,3,3],
         "specials":[[Equip.SUMMON,Summons.BushGreen,0.25],[Equip.SUMMON,Summons.MirrorWise,0.25],null,null,[Equip.SUMMON,Summons.GloopWood,0.25]]
      });
      
      public static var dogsausage:Equip = new Equip({
         "HP":[0,5,5,10,10],
         "attack":[0,5,10,20,30],
         "defence":[0],
         "magicAttack":[20,35,50,65,80],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0,5,5,10,10],
         "resistance":{
            "fire":Equips.long50,
            "ice":Equips.long50,
            "bio":Equips.long50
         },
         "element":Element.FIRE,
         "statusEffect":Status.DRY,
         "statusChance":[50,60,70,80,100],
         "statusDegree":[3,4,4,5,5],
         "specials":[[Equip.BOOST,Element.FIRE],[Equip.BOOST_FOOD],[Equip.CAST,Spells.firespin,0.5],null,[Equip.COUNTER,Spells.backstab]]
      });
      
      public static var bloodbank:Equip = new Equip({
         "HP":[0,0,5,10,15],
         "attack":[20,30,45,60,75],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bio":Equips.long100,
            "death":Equips.long100,
            "dispel":Equips.long100
         },
         "element":Element.BIO,
         "statusEffect":Status.VIRUS,
         "statusChance":[50,60,70,80,100],
         "statusDegree":[1,1,1,1,1],
         "specials":[[Equip.STATUS,Status.BERSERK,1,2],null,[Equip.STATUS,Status.AUTOLIFE,1,0.5],null,[Equip.DRAIN_HP]]
      });
      
      public static var bookofspells:Equip = new Equip({
         "HP":[0],
         "attack":[10,20,30,40,50],
         "defence":[0],
         "magicAttack":[10,20,35,50,65],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":Equips.long50,
            "wind":Equips.long50,
            "stagger":Equips.long100
         },
         "element":Element.WIND,
         "statusEffect":Status.FREEZE,
         "statusChance":[20,25,30,40,50],
         "statusDegree":[2,2,2,2,2],
         "specials":[[Equip.BOOST,Element.WIND],null,[Equip.CAST,Spells.lasercrystals,0.6],null,[Equip.SUMMON,Summons.GloopCrystal,0.66]],
         "materials":[undefined,undefined,[Items.rune2,2,Summons.CatWizard,1]]
      });
      
      public static var turtleshell:Equip = new Equip({
         "HP":[20,40,60,80,100],
         "attack":[10,20,30,45,60],
         "defence":[5,10,15,20,25],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[-50],
         "resistance":{
            "water":Equips.long50,
            "wet":Equips.long100,
            "ice":Equips.long50
         },
         "element":Element.WATER,
         "specials":[[Equip.BOOST,Element.WATER],null,[Equip.SUMMON,Summons.CreepGreen,0.4],null,[Equip.STATUS,Status.DEFEND,1,0.25]],
         "materials":[undefined,undefined,[Summons.CreepBlue,1,Items.seashell,9]]
      });
      
      public static var icecreamsandwich:Equip = new Equip({
         "HP":[0,5,5,10,15],
         "attack":[-10],
         "defence":[0],
         "magicAttack":[30,45,50,65,85],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0,5,5,10,10],
         "resistance":{
            "ice":Equips.long50,
            "freeze":Equips.long100,
            "dispel":Equips.long100
         },
         "element":Element.ICE,
         "statusEffect":Status.CHILL,
         "statusChance":[50,60,70,80,100],
         "statusDegree":[2,2,2,2,2],
         "specials":[[Equip.BOOST,Element.ICE],[Equip.BOOST,Element.WATER],[Equip.CAST,Spells.deepfreeze,0.6],null,[Equip.SUMMON,Summons.SlimeBigIcecream,0.25]],
         "materials":[undefined,undefined,undefined,[Items.moonpearl,1,Items.cookie,1]]
      });
      
      public static var neonlightbulb:Equip = new Equip({
         "HP":[0],
         "attack":[15,30,45,65,85],
         "defence":[0],
         "magicAttack":[15,30,45,65,85],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "thunder":Equips.long50,
            "dark":Equips.long50,
            "water":Equips.down30
         },
         "element":Element.THUNDER,
         "statusEffect":Status.DISPEL,
         "statusChance":[10,20,30,40,50],
         "statusDegree":[1],
         "specials":[[Equip.BOOST,Element.THUNDER],null,[Equip.CAST,Spells.bigspark,0.5],null,[Equip.COUNTER,Spells.backstab]],
         "materials":[undefined,undefined,undefined,[Items.topaz,7,Items.spring,15]]
      });
      
      public static var riotshield:Equip = new Equip({
         "HP":[5,5,5,5,10,10],
         "attack":[15,25,35,45,60],
         "defence":[5,10,20,30,35],
         "magicAttack":[0],
         "magicDefence":[5,10,20,30,35],
         "accuracy":[0],
         "evade":[-10],
         "resistance":{
            "dark":Equips.long50,
            "bomb":Equips.long50,
            "bio":Equips.long50
         },
         "element":Element.BOMB,
         "statusEffect":Status.STAGGER,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[1],
         "specials":[[Equip.BOOST,Element.BOMB],null,[Equip.COUNTER,Spells.rapidslash2],null,[Equip.SUMMON,Spells.poisongas,0.6]]
      });
      
      public static var banditblade:Equip = new Equip({
         "SID":"banditblade",
         "type":Equip.TOYS,
         "icon":341,
         "skin":18,
         "map":[56],
         "HP":[0],
         "attack":[10,20,30,40,50],
         "defence":[0],
         "magicAttack":[5,10,15,20,25],
         "magicDefence":[0],
         "accuracy":[5,10,15,20,25],
         "evade":[10,20,30,40,55],
         "resistance":{
            "water":Equips.long50,
            "bomb":Equips.long50,
            "death":Equips.long100
         },
         "element":Element.WATER,
         "specials":[[Equip.BOOST,Element.WATER],[Equip.STEAL],[Equip.COUNTER,Spells.backstab],null,[Equip.SUMMON,Summons.ArcadeMermaid,0.12]]
      });
      
      public static var powerpaw:Equip = new Equip({
         "HP":[0,5,5,10,10],
         "attack":[10,20,30,40,55],
         "defence":[0],
         "magicAttack":[10,20,30,40,55],
         "magicDefence":[0],
         "accuracy":[0,5,10,15,20],
         "evade":[0],
         "resistance":{
            "bomb":Equips.long50,
            "thunder":Equips.long50,
            "stagger":Equips.long100
         },
         "element":Element.THUNDER,
         "statusEffect":Status.STAGGER,
         "statusChance":[30,35,40,45,50],
         "statusDegree":[1],
         "specials":[[Equip.BOOST,Element.THUNDER],[Equip.BOOST_STATUS],[Equip.CAST,Spells.electrongunP,0.2],null,[Equip.SUMMON,Summons.ArcadeRobo,0.5]],
         "materials":[undefined,undefined,[Items.cpu,1,Items.floppy,4],[Items.gamechild,1,Summons.PixelIdol,1]]
      });
      
      public static var starhammer:Equip = new Equip({
         "HP":[0],
         "attack":[50,70,90,110,130],
         "defence":[0],
         "magicAttack":[50,70,90,110,130],
         "magicDefence":[0],
         "accuracy":[0,5,10,15,20],
         "evade":[0,5,10,15,20],
         "resistance":{
            "fire":Equips.long50,
            "ice":Equips.long50,
            "thunder":Equips.long50
         },
         "element":Element.NONE,
         "statusEffect":Status.STUN,
         "statusChance":[20,40,60,80,100],
         "statusDegree":[1],
         "specials":[[Equip.BOOST,Element.NONE],null,[Equip.COUNTER,Spells.backstab],null,[Equip.SUMMON,Summons.EvilNoLegs,0.07]]
      });
      
      public static var bustersword:Equip = new Equip({
         "HP":[0],
         "attack":[50,65,80,95,110],
         "defence":[0],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":Equips.down30,
            "water":Equips.down30,
            "wind":Equips.down30
         },
         "element":Element.NONE,
         "specials":[[Equip.CAST,Spells.paperStars,0.25],null,[Equip.COUNTER,Spells.rapidslash2],null,[Equip.SUMMON,Summons.HydraOrigami,0.18]],
         "materials":[[Items.newspaper,1],[Items.tape,8],[Items.lego,2,Items.tape,4],[Summons.HydraOrigami,1,Items.lego,1,Items.tape,6]]
      });
      
      public static var captainshat:Equip = new Equip({
         "HP":[0],
         "attack":[5,5,5,5,10],
         "defence":[0,5,10,15,20],
         "magicAttack":[5,5,5,5,10],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0,0,0,5,10],
         "resistance":{
            "dark":Equips.long50,
            "water":Equips.long50
         },
         "specials":[null,null,[Equip.SUMMON,Summons.DollMatt,0.5],null,[Equip.STATUS,Status.GOOD_LUCK,2,0.25]]
      });
      
      public static var scottishcap:Equip = new Equip({
         "HP":[0],
         "attack":[5,10,15,20,25],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "water":Equips.long50,
            "wind":Equips.long50,
            "weak":Equips.long100
         },
         "specials":[null,null,[Equip.DEFEND_BUFF,Stats.ATTACK,80],null,[Equip.BOOST_CATCH]]
      });
      
      public static var dragonhelm:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0,0,0,0,5],
         "evade":[0,0,0,0,5],
         "resistance":{
            "holy":Equips.long50,
            "wind":Equips.long50,
            "fire":Equips.long50
         },
         "specials":[null,null,[Equip.BOOST_STATUS]]
      });
      
      public static var deathmask:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[15,20,30,40,50],
         "magicDefence":[0],
         "accuracy":[-25],
         "evade":[-25],
         "resistance":{
            "fire":Equips.down30,
            "weak":Equips.down30
         },
         "specials":[],
         "materials":[undefined,undefined,[Items.spike,2,Summons.BushRed,1]]
      });
      
      public static var spacehelmet:Equip = new Equip({
         "HP":[5,5,10,10,15],
         "attack":[0],
         "defence":[10,15,20,25,30],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[-5],
         "evade":[-5],
         "resistance":{
            "ice":Equips.long50,
            "fire":Equips.long50,
            "thunder":Equips.long50
         },
         "specials":[null,null,[Equip.DEFEND_BUFF,Stats.HP,20]]
      });
      
      public static var headband:Equip = new Equip({
         "HP":[5,5,5,5,10],
         "attack":[0],
         "defence":[0,5,5,10,10],
         "magicAttack":[0],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[5,5,5,5,10],
         "evade":[0,0,0,5,10],
         "resistance":{
            "fire":Equips.long50,
            "bomb":Equips.long50,
            "holy":Equips.long50
         },
         "specials":[null,null,[Equip.SUMMON,Summons.CatBomber,1],null,[Equip.DEFEND_STATUS,Status.REGEN,2]],
         "materials":[undefined,undefined,[Items.satin,1,Items.headband,1]]
      });
      
      public static var cardboardbox:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":Equips.down30,
            "water":Equips.down30,
            "wind":Equips.down30
         },
         "specials":[null,[Equip.DEFEND_BUFF,Stats.DEFENCE,80],[Equip.DEFEND_BUFF,Stats.MAGIC_DEFENCE,80],[Equip.DEFEND_BUFF,Stats.EVADE,30],[Equip.DEFEND_BUFF,Stats.HP,20]],
         "materials":[[Items.newspaper,1],undefined,undefined]
      });
      
      public static var puppyhat:Equip = new Equip({
         "HP":[10,15,20,25,30],
         "attack":[0],
         "defence":[0],
         "magicAttack":[5,5,10,15,20],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[-10],
         "evade":[-10],
         "resistance":{
            "freeze":Equips.long100,
            "death":Equips.long100,
            "dispel":Equips.long100
         },
         "specials":[[Equip.BOOST_FOOD],null,[Equip.SUMMON,Summons.DogMaxi,0.5]]
      });
      
      public static var armyhelmet:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0,5,10,15,20],
         "magicAttack":[0],
         "magicDefence":[0,0,5,10,15],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bomb":Equips.long50,
            "earth":Equips.long50,
            "bio":Equips.long50
         },
         "specials":[[Equip.BOOST_FOOD],[Equip.BOOST_THROWS],null,[Equip.BOOST_BUFFS]]
      });
      
      public static var gasmask:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0,5,10,15,20],
         "magicAttack":[0],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[-10],
         "evade":[0],
         "resistance":{
            "bio":Equips.long150,
            "dark":Equips.long100
         },
         "specials":[null,null,[Equip.BOOST_DEBUFFS],null,[Equip.BOOST_STATUS]]
      });
      
      public static var spelunkinghat:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0,0,5,10,15],
         "magicAttack":[0],
         "magicDefence":[0,0,5,10,15],
         "accuracy":[0],
         "evade":[0,5,5,10,10],
         "resistance":{
            "dark":Equips.long50,
            "earth":Equips.long50,
            "stagger":Equips.long100
         },
         "specials":[[Equip.BOOST_BUFFS],null,[Equip.BOOST_DEBUFFS],null,[Equip.SUMMON,Spells.lockon,1]]
      });
      
      public static var genjihelmet:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0,0,0,5,10],
         "resistance":{
            "earth":Equips.long50,
            "wind":Equips.long50
         },
         "specials":[null,null,[Equip.DEFEND_STATUS,Status.MORALE,3]]
      });
      
      public static var pumpkinhead:Equip = new Equip({
         "HP":[10],
         "attack":[5,5,5,5,10],
         "defence":[5,10,15,20,25],
         "magicAttack":[5,5,5,5,10],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[-10],
         "evade":[-10],
         "resistance":{
            "earth":Equips.long50,
            "dark":Equips.long50
         },
         "specials":[[Equip.INTIMIDATE],null,[Equip.SUMMON,Summons.ArcadePumpkus,0.8]],
         "materials":[[Items.pumpkin,1],[Items.pumpkin,4],[Items.watermelon,6],[Items.dragonfruit,8,Items.pumpkin,6,Items.halloweencandy,1]]
      });
      
      public static var wizardhat:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[5,10,15,20,25],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[5,5,5,10,15],
         "evade":[0],
         "resistance":{
            "fire":Equips.long50,
            "thunder":Equips.long50,
            "ice":Equips.long50
         },
         "specials":[null,null,[Equip.DEFEND_BUFF,Stats.MAGIC_ATTACK,80],null,[Equip.DEFEND_STATUS,Status.GOOD_LUCK,3]]
      });
      
      public static var baskethat:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0,5,5,10,10],
         "magicAttack":[0],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[5,10,15,15,20],
         "evade":[5,10,15,15,20],
         "resistance":{
            "weak":Equips.long100,
            "death":Equips.long100,
            "thunder":Equips.long50
         },
         "specials":[null,null,[Equip.BOOST_THROWS],null,[Equip.STATUS,Status.HASTE,2,0.25]]
      });
      
      public static var hornedhelmet:Equip = new Equip({
         "HP":[0],
         "attack":[15,20,30,40,50],
         "defence":[5,10,15,20,25],
         "magicAttack":[-25],
         "magicDefence":[-25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "thunder":Equips.down30,
            "ice":Equips.down30,
            "fire":Equips.down30
         },
         "specials":[],
         "materials":[undefined,undefined,undefined,[Items.spike,8,Summons.BushDark,1]]
      });
      
      public static var santahat:Equip = new Equip({
         "HP":[0,0,5,5,10],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "ice":Equips.long50,
            "freeze":Equips.long100
         },
         "specials":[[Equip.BOOST_THROWS],null,[Equip.BOOST_CATCH],null,[Equip.BOOST_BUFFS]]
      });
      
      public static var knightshelmet:Equip = new Equip({
         "HP":[5,5,5,10,10],
         "attack":[0],
         "defence":[15,20,20,25,35],
         "magicAttack":[0],
         "magicDefence":[0,5,5,10,15],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "thunder":Equips.long50,
            "weak":Equips.long100,
            "weight":Equips.long100
         },
         "specials":[null,null,[Equip.DEFEND_STATUS,Status.BLESS,3]]
      });
      
      public static var officershat:Equip = new Equip({
         "HP":[0],
         "attack":[0,0,5,10,15],
         "defence":[0,5,5,10,10],
         "magicAttack":[0,0,5,10,15],
         "magicDefence":[0,5,10,10,10],
         "accuracy":[0,0,0,5,10],
         "evade":[0,0,0,5,10],
         "resistance":{
            "bomb":Equips.long50,
            "wet":Equips.long100,
            "curse":Equips.long100
         },
         "specials":[null,null,[Equip.SUMMON,Summons.DollLance,0.25],null,[Equip.STATUS,Status.BRAVE,2,0.2]],
         "materials":[undefined,undefined,undefined,[Items.satin,4,Summons.DollLance,1]]
      });
      
      public static var spartanhelmet:Equip = new Equip({
         "HP":[0],
         "attack":[0,5,10,15,20],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":Equips.long200,
            "death":Equips.long100,
            "weak":Equips.long100
         },
         "specials":[[Equip.STATUS,Status.BERSERK,1,2],null,[Equip.STATUS,Status.BURN,3,3]]
      });
      
      public static var necromandershelmet:Equip = new Equip({
         "HP":[0],
         "attack":[-10],
         "defence":[10,15,20,25,30],
         "magicAttack":[15,20,25,30,35],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dark":Equips.long50,
            "holy":Equips.down30,
            "death":Equips.down50
         },
         "specials":[[Equip.STATUS,Status.SHROUD,2,1],null,[Equip.DEFEND_BUFF,Stats.MAGIC_ATTACK,80]]
      });
      
      public static var bunnyears:Equip = new Equip({
         "HP":[0,0,0,5,10],
         "attack":[0],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[10,10,15,15,20],
         "resistance":{
            "stun":Equips.long100,
            "death":Equips.long100
         },
         "specials":[null,[Equip.DEFEND_BUFF,Stats.EVADE,30],[Equip.DEFEND_STATUS,Status.BLESS,3],[Equip.DEFEND_BUFF,Stats.HP,20],null],
         "materials":[undefined,undefined,[Summons.SlimeBunny,1],[Items.moonpearl,1,Items.sock1,1]]
      });
      
      public static var redribbon:Equip = new Equip({
         "HP":[0],
         "attack":[-10],
         "defence":[0,5,5,10,15],
         "magicAttack":[-10],
         "magicDefence":[0,5,5,10,15],
         "accuracy":[10,10,10,15,15],
         "evade":[10,10,10,15,15],
         "resistance":{
            "dispel":Equips.long100,
            "curse":Equips.long100
         },
         "specials":[[Equip.STATUS,Status.GOOD_LUCK,2,0.25],null,[Equip.DEFEND_STATUS,Status.GOOD_LUCK,3],null,[Equip.BOOST_STATUS]]
      });
      
      public static var kittyears:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[15,20,25,30,35],
         "evade":[15,20,25,30,35],
         "resistance":{
            "curse":Equips.long100,
            "weak":Equips.long100
         },
         "specials":[null,null,[Equip.STATUS,Status.AUTOLIFE,2,0.15],null,[Equip.BOOST_CATCH]],
         "materials":[undefined,undefined,[Items.satin,1,Summons.CatNinja,1]]
      });
      
      public static var curlyhorns:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[10,15,20,25,30],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dispel":Equips.long100,
            "syphon":Equips.long100
         },
         "specials":[[Equip.BOOST_BUFFS,10],null,null,null,[Equip.BOOST_DEBUFFS,10]]
      });
      
      public static var nursehat:Equip = new Equip({
         "HP":[0,5,10,15,20],
         "attack":[0],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "syphon":Equips.long100,
            "death":Equips.long100,
            "holy":Equips.long50
         },
         "specials":[[Equip.DEFEND_BUFF,Stats.MAGIC_DEFENCE,80],null,null,null,[Equip.DEFEND_BUFF,Stats.DEFENCE,80]]
      });
      
      public static var iceshards:Equip = new Equip({
         "HP":[0],
         "attack":[0,0,0,5,10],
         "defence":[5,5,10,15,20],
         "magicAttack":[0,0,0,5,10],
         "magicDefence":[5,5,10,15,20],
         "accuracy":[0],
         "evade":[0,0,5,10,15],
         "resistance":{
            "ice":Equips.long100,
            "wind":Equips.long100,
            "freeze":Equips.long100
         },
         "specials":[[Equip.STATUS,Status.CHILL,2,0.5]]
      });
      
      public static var leafyhairclip:Equip = new Equip({
         "HP":[0],
         "MP":[0],
         "attack":[10,15,20,25,30],
         "defence":[0,5,5,5,10],
         "magicAttack":[0],
         "magicDefence":[0,5,5,5,10],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":Equips.long50,
            "fire":Equips.down30,
            "burn":Equips.down30
         },
         "specials":[null,null,[Equip.BOOST_DEBUFFS]]
      });
      
      public static var robotears:Equip = new Equip({
         "HP":[0],
         "MP":[0],
         "attack":[0],
         "defence":[10,15,20,25,30],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0,0,0,5,10],
         "evade":[0,0,0,5,10],
         "resistance":{
            "thunder":Equips.long50,
            "bomb":Equips.long50
         },
         "specials":[[Equip.SUMMON,Spells.lockon,1]]
      });
      
      public static var rubberduck:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[5,10,10,15,20],
         "magicDefence":[5,10,10,15,20],
         "accuracy":[0,0,0,5,10],
         "evade":[0],
         "resistance":{
            "holy":Equips.long50,
            "fire":Equips.long50,
            "burn":Equips.long100
         },
         "specials":[[Equip.BOOST_HEALING],null,[Equip.BOOST_STATUS]],
         "materials":[undefined,[Summons.SlimeWater,1],undefined]
      });
      
      public static var darkbobble:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0,5,5,10,15],
         "magicAttack":[0,5,5,10,15],
         "magicDefence":[5,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dark":Equips.long50,
            "syphon":Equips.long100
         },
         "specials":[null,null,[Equip.SUMMON,Spells.geometry2,0.8],null,[Equip.SUMMON,Spells.geometry3,0.3]]
      });
      
      public static var popehat:Equip = new Equip({
         "HP":[0,0,0,0,5],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":Equips.long50,
            "holy":Equips.long50,
            "thunder":Equips.long50
         },
         "specials":[[Equip.SCARE,Foe.GHOSTS],null,null,null,[Equip.BOOST_BUFFS]]
      });
      
      public static var hollyhairpin:Equip = new Equip({
         "HP":[-5],
         "attack":[5,10,15,20,25],
         "defence":[0,0,5,10,15],
         "magicAttack":[0],
         "magicDefence":[0,0,5,10,15],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":Equips.long50,
            "weak":Equips.long100,
            "curse":Equips.long100
         },
         "specials":[[Equip.SUMMON,Spells.candycane,1],null,[Equip.DEFEND_BUFF,Stats.ATTACK,80]]
      });
      
      public static var flowerbobble:Equip = new Equip({
         "HP":[0],
         "MP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[10,15,20,25,30],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bio":Equips.long50,
            "fire":Equips.down30,
            "dark":Equips.long50
         },
         "specials":[null,null,[Equip.SUMMON,Spells.renew,1.22]]
      });
      
      public static var drillbits:Equip = new Equip({
         "HP":[0],
         "attack":[0,5,10,15,20],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bomb":Equips.long50,
            "wind":Equips.long50,
            "weak":Equips.long100
         },
         "specials":[null,null,[Equip.SUMMON,Summons.ClassicJack,0.12]]
      });
      
      public static var spiderbobble:Equip = new Equip({
         "HP":[0,0,0,5,10],
         "attack":[5,10,15,20,25],
         "defence":[0],
         "magicAttack":[5,10,15,20,25],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "death":Equips.long100,
            "bio":Equips.long50,
            "stun":Equips.long100
         },
         "specials":[null,null,[Equip.SUMMON,Summons.ArcadeGlob,0.75],null,[Equip.BOOST_CATCH]]
      });
      
      public static var royalcrown:Equip = new Equip({
         "HP":[0],
         "attack":[15,20,25,30,40],
         "defence":[0],
         "magicAttack":[15,20,25,30,40],
         "magicDefence":[0],
         "accuracy":[-5],
         "evade":[-5],
         "resistance":{
            "dark":Equips.long50,
            "ice":Equips.long50,
            "death":Equips.down50
         },
         "specials":[[Equip.STATUS,Status.BAD_LUCK,1,0.66]]
      });
      
      public static var slimebunny:Equip = new Equip({
         "HP":[5,10,10,10,15],
         "MP":[0],
         "attack":[0],
         "defence":[0,5,5,10,15],
         "magicAttack":[0],
         "magicDefence":[0,5,5,10,15],
         "accuracy":[-5],
         "evade":[-5],
         "resistance":{
            "dark":Equips.down30,
            "curse":Equips.down30
         },
         "specials":[[Equip.STATUS,Status.AUTOLIFE,1,0.3],null,[Equip.DEFEND_STATUS,Status.AUTOLIFE,3],null,[Equip.SUMMON,Summons.SlimeBunny,0.5]]
      });
      
      public static var furhat:Equip = new Equip({
         "HP":[0,5,5,10,10],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "ice":Equips.long50,
            "earth":Equips.long50,
            "stagger":Equips.long100
         },
         "specials":[null,null,[Equip.DEFEND_BUFF,Stats.HP,20]],
         "materials":[undefined,undefined,undefined,[Summons.BearBrown,1,Items.fur,1]]
      });
      
      public static var blueelephant:Equip = new Equip({
         "HP":[5,5,10,15],
         "attack":[5,10,15,20,25],
         "defence":[5,10,10,15,20],
         "magicAttack":[0],
         "magicDefence":[5,10,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bomb":Equips.long50,
            "water":Equips.long50,
            "bio":Equips.long50
         },
         "specials":[[Equip.STATUS,Status.BERSERK,1,2],null,[Equip.STATUS,Status.HASTE,2,0.25]]
      });
      
      public static var ninjachopsticks:Equip = new Equip({
         "HP":[0],
         "attack":[0,5,5,10,10],
         "defence":[0],
         "magicAttack":[0,5,5,10,10],
         "magicDefence":[0],
         "accuracy":[5,10,15,15,20],
         "evade":[5,10,15,15,20],
         "resistance":{
            "weak":Equips.long100,
            "wind":Equips.long50,
            "thunder":Equips.long50
         },
         "specials":[null,null,[Equip.BOOST_THROWS],null,[Equip.SUMMON,Summons.CatNinja,0.45]]
      });
      
      public static var fierybobble:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[0,5,10,15,25],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0,5,5,10,10],
         "resistance":{
            "fire":Equips.long50,
            "thunder":Equips.long50,
            "earth":Equips.long50
         },
         "specials":[null,null,[Equip.DEFEND_BUFF,Stats.MAGIC_ATTACK,80],null,[Equip.SUMMON,Summons.CatWizard,0.5]]
      });
      
      public static var hoboclothes:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[5],
         "resistance":{
            "stun":Equips.long100,
            "earth":Equips.long50,
            "death":Equips.long100
         },
         "specials":[null,[Equip.BOOST,Element.BIO],[Equip.STEAL],[Equip.BOOST_CATCH],[Equip.SUMMON,Summons.WormPutrid,1.2]],
         "materials":[undefined,undefined,[Items.leather,12,Items.sock2,1],[Items.kevlar,2,Summons.WormPutrid,1]]
      });
      
      public static var shellarmor:Equip = new Equip({
         "HP":[10],
         "attack":[-10],
         "defence":[10,20,30,40,50],
         "magicAttack":[-10],
         "magicDefence":[10,20,30,40,50],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":Equips.long50,
            "bio":Equips.long50,
            "death":Equips.long100
         },
         "specials":[[Equip.BOOST_HEALING],null,[Equip.SUMMON,Summons.MonolithAncient,0.22]]
      });
      
      public static var coatofteeth:Equip = new Equip({
         "HP":[0],
         "attack":[20,20,20,25,25],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0,0,0,5,5],
         "evade":[0,0,0,0,5],
         "resistance":{
            "dark":Equips.long150,
            "death":Equips.long100
         },
         "specials":[[Equip.STATUS,Status.SHROUD,2,1],null,[Equip.BOOST,Element.DARK],null,[Equip.DEFEND_BUFF,Stats.ATTACK,80]]
      });
      
      public static var explorersjacket:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[5,5,10,15,20],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0,5,5,10,15],
         "resistance":{
            "earth":Equips.long50,
            "bio":Equips.long50,
            "weak":Equips.long100
         },
         "specials":[null,null,[Equip.SUMMON,Spells.bind,1],null,[Equip.BOOST_DEBUFFS]]
      });
      
      public static var spaceace:Equip = new Equip({
         "HP":[0,0,0,0,5],
         "attack":[0],
         "defence":[10,15,20,30,45],
         "magicAttack":[0],
         "magicDefence":[10,15,20,30,45],
         "accuracy":[-5],
         "evade":[-5],
         "resistance":{
            "ice":Equips.long50,
            "fire":Equips.long50,
            "thunder":Equips.long50
         },
         "specials":[[Equip.BOOST,Element.THUNDER],null,[Equip.SUMMON,Summons.ArcadeRobo,0.33]],
         "materials":[undefined,undefined,undefined,[Items.kevlar,1,Items.lego,1,Items.rubberboots,1]]
      });
      
      public static var spartancuirass:Equip = new Equip({
         "HP":[0],
         "attack":[0,0,0,5,10],
         "defence":[10,15,25,30,40],
         "magicAttack":[0],
         "magicDefence":[10,20,25,30,40],
         "accuracy":[5],
         "evade":[5],
         "resistance":{
            "fire":Equips.long50,
            "burn":Equips.long100,
            "weak":Equips.long100
         },
         "specials":[[Equip.DEFEND_STATUS,Status.BRAVE,4],null,[Equip.DEFEND_BUFF,Stats.ATTACK,80]]
      });
      
      public static var flamesuit:Equip = new Equip({
         "HP":[10],
         "attack":[0],
         "defence":[5,10,15,25,30],
         "magicAttack":[0],
         "magicDefence":[5,10,20,25,30],
         "accuracy":[-10],
         "evade":[-10],
         "resistance":{
            "fire":Equips.long100,
            "water":Equips.long100,
            "burn":Equips.long100
         },
         "specials":[[Equip.BOOST,Element.WATER],null,[Equip.BOOST_STATUS],null,[Equip.BOOST_DEBUFFS,10]]
      });
      
      public static var dragonarmor:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[10,15,20,25,35],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,35],
         "accuracy":[0,0,0,0,5],
         "evade":[0,0,0,0,5],
         "resistance":{
            "holy":Equips.long50,
            "wind":Equips.long50,
            "fire":Equips.long50
         },
         "specials":[[Equip.BOOST,Element.FIRE],[Equip.BOOST,Element.WIND],[Equip.BOOST,Element.HOLY]]
      });
      
      public static var officerscoat:Equip = new Equip({
         "HP":[0],
         "attack":[0,5,5,10,15],
         "defence":[5,10,15,25,30],
         "magicAttack":[0,5,5,10,15],
         "magicDefence":[5,10,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bomb":Equips.long50,
            "stagger":Equips.long100,
            "death":Equips.long100
         },
         "specials":[[Equip.BOOST,Element.BOMB],null,[Equip.SUMMON,Summons.MammothWar,0.15]]
      });
      
      public static var scottishkilt:Equip = new Equip({
         "HP":[0],
         "attack":[5,5,10,10,15],
         "defence":[5,10,15,25,30],
         "magicAttack":[5,5,10,10,15],
         "magicDefence":[5,10,20,25,30],
         "accuracy":[5,5,10,10,15],
         "evade":[0],
         "resistance":{
            "earth":Equips.long50,
            "water":Equips.long50,
            "freeze":Equips.down50
         },
         "specials":[[Equip.BOOST,Element.WATER],null,null,null,[Equip.BOOST_CATCH]]
      });
      
      public static var heroicarmor:Equip = new Equip({
         "HP":[0,5,10,15,20],
         "attack":[0],
         "defence":[20,30,40,50,60],
         "magicAttack":[0],
         "magicDefence":[20,30,40,50,60],
         "accuracy":[0],
         "evade":[-20],
         "resistance":{
            "fire":Equips.down30,
            "water":Equips.down30,
            "thunder":Equips.long100
         },
         "specials":[[Equip.STATUS,Status.TIRED,1,0.5],null,[Equip.DEFEND_BUFF,Stats.DEFENCE,80]]
      });
      
      public static var camojacket:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[10,15,20,25,30],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bomb":Equips.long50,
            "earth":Equips.long50,
            "bio":Equips.long50
         },
         "specials":[[Equip.BOOST_HEALING],[Equip.BOOST_THROWS],[Equip.BOOST_BUFFS],[Equip.BOOST_DEBUFFS]]
      });
      
      public static var prieststunic:Equip = new Equip({
         "HP":[5,5,5,10,15],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0,0,0,5,5],
         "resistance":{
            "holy":Equips.long50,
            "dark":Equips.long50,
            "poison":Equips.long100
         },
         "specials":[[Equip.BOOST_FOOD],null,[Equip.BOOST_BUFFS],[Equip.STATUS,Status.REGEN,2,0.3],[Equip.SUMMON,Summons.ClassicClayLight,0.33]],
         "materials":[undefined,undefined,undefined,[Items.moonpearl,1,Summons.ClassicClayLight,1]]
      });
      
      public static var wizardrobe:Equip = new Equip({
         "HP":[-10],
         "attack":[-20],
         "defence":[0],
         "magicAttack":[15,20,25,30,45],
         "magicDefence":[10,20,30,40,50],
         "accuracy":[10],
         "evade":[0],
         "resistance":{
            "fire":Equips.long50,
            "thunder":Equips.long50,
            "ice":Equips.long50
         },
         "specials":[null,null,[Equip.DEFEND_BUFF,Stats.MAGIC_DEFENCE,80],null,[Equip.DEFEND_STATUS,Status.INVISIBLE,1]]
      });
      
      public static var genjiarmor:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[10,20,30,35,40],
         "magicAttack":[0],
         "magicDefence":[10,20,30,35,40],
         "accuracy":[0],
         "evade":[0,0,0,0,5,10],
         "resistance":{
            "earth":Equips.long50,
            "wind":Equips.long50
         },
         "specials":[[Equip.BOOST,Element.EARTH],null,[Equip.BOOST,Element.WIND],null,[Equip.DEFEND_STATUS,Status.GOOD_LUCK,3]]
      });
      
      public static var ninjagear:Equip = new Equip({
         "HP":[0],
         "attack":[0,5,5,10,15],
         "defence":[0],
         "magicAttack":[0,5,5,10,15],
         "magicDefence":[0],
         "accuracy":[5,5,10,15,20],
         "evade":[5,5,10,15,20],
         "resistance":{
            "wind":Equips.long50,
            "thunder":Equips.long50,
            "dark":Equips.long50
         },
         "specials":[[Equip.BOOST_THROWS],[Equip.BOOST,Element.WIND],[Equip.BOOST,Element.THUNDER],[Equip.BOOST,Element.DARK],null]
      });
      
      public static var vikingfur:Equip = new Equip({
         "HP":[0,5,5,10,10],
         "attack":[0],
         "defence":[10,15,20,25,30],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "water":Equips.long50,
            "ice":Equips.long50,
            "freeze":Equips.long100
         },
         "specials":[[Equip.BOOST,Element.ICE],null,[Equip.BOOST,Element.WATER],null,[Equip.BOOST_STATUS]]
      });
      
      public static var santaoutfit:Equip = new Equip({
         "HP":[0,5,10,15,20],
         "attack":[0],
         "defence":[10,15,20,25,35],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,35],
         "accuracy":[0],
         "evade":[-10],
         "resistance":{
            "ice":Equips.long50,
            "freeze":Equips.long100,
            "wet":Equips.long100
         },
         "specials":[[Equip.BOOST_THROWS],null,[Equip.BOOST_FOOD],null,[Equip.BOOST_BUFFS]],
         "materials":[undefined,undefined,undefined,[Items.lego,1,Items.cookie,1]]
      });
      
      public static var turtlegi:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "stun":Equips.long100,
            "dispel":Equips.long100
         },
         "specials":[[Equip.RANDOM_BUFFS],null,null,null,[Equip.DEFEND_STATUS,Status.ENCHANTED,1]]
      });
      
      public static var hipstershirt:Equip = new Equip({
         "HP":[0],
         "attack":[0,5,5,10,15],
         "defence":[0,5,10,15,20],
         "magicAttack":[0,5,5,10,15],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0,5,5,5,10],
         "resistance":{
            "bomb":Equips.long50,
            "curse":Equips.long100,
            "death":Equips.long100
         },
         "specials":[[Equip.BOOST,Element.NONE],null,[Equip.BOOST,Element.HOLY],null,[Equip.BOOST_BUFFS]],
         "materials":[undefined,undefined,undefined,[Items.burger,6,Items.cookie,1]]
      });
      
      public static var captainscoat:Equip = new Equip({
         "HP":[0],
         "attack":[5,5,5,10,15],
         "defence":[0,5,10,15,20],
         "magicAttack":[5,5,5,10,15],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0,0,0,0,5],
         "evade":[0,0,0,0,5],
         "resistance":{
            "water":Equips.long50,
            "dark":Equips.long50
         },
         "specials":[[Equip.BOOST,Element.WATER],null,[Equip.BOOST,Element.BOMB],null,[Equip.BOOST_FOOD]]
      });
      
      public static var magicalskirt:Equip = new Equip({
         "HP":[0,0,0,5,10],
         "attack":[0,0,0,5,10],
         "defence":[0,5,10,15,20],
         "magicAttack":[0,0,0,5,10],
         "magicDefence":[5,5,10,15,20],
         "accuracy":[0,0,0,5,10],
         "evade":[0,5,5,10,10],
         "resistance":{
            "dark":Equips.long50,
            "death":Equips.long100,
            "curse":Equips.long100
         },
         "specials":[[Equip.BOOST_HEALING],[Equip.BOOST,Element.HOLY],[Equip.SUMMON,Summons.WormCutie,1]]
      });
      
      public static var bubblydress:Equip = new Equip({
         "HP":[5,5,5,10,10],
         "attack":[5,5,10,15,15],
         "defence":[5,5,10,15,20],
         "magicAttack":[5,5,10,15,15],
         "magicDefence":[5,5,10,15,20],
         "accuracy":[0],
         "evade":[-5],
         "resistance":{
            "water":Equips.long50,
            "wind":Equips.long50,
            "ice":Equips.long50
         },
         "specials":[[Equip.BOOST,Element.WATER],null,[Equip.BOOST,Element.ICE],null,[Equip.BOOST,Element.WIND]]
      });
      
      public static var rangerskirt:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[10,15,20,25,30],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0,5,5,10,15],
         "resistance":{
            "earth":Equips.long50,
            "bio":Equips.long50,
            "weak":Equips.long100
         },
         "specials":[[Equip.BOOST,Element.EARTH],null,[Equip.DEFEND_BUFF,Stats.EVADE,30],[Equip.BOOST_STATUS],[Equip.BOOST_CATCH]],
         "materials":[undefined,undefined,undefined,[Items.kevlar,2,Items.leather,2,Items.oldboots,1]]
      });
      
      public static var maidoutfit:Equip = new Equip({
         "HP":[-10],
         "attack":[0],
         "defence":[0],
         "magicAttack":[15,20,25,35,40],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[10],
         "evade":[0],
         "resistance":{
            "holy":Equips.long50,
            "dark":Equips.long50,
            "syphon":Equips.long100
         },
         "specials":[[Equip.BOOST_FOOD],null,[Equip.BOOST_DEBUFFS],[Equip.SUMMON,Spells.purify,0.66],[Equip.DEFEND_BUFF,Stats.MAGIC_DEFENCE,80]],
         "materials":[undefined,undefined,undefined,[Items.coffee,10,Items.burger,2,Items.chocolate,1]]
      });
      
      public static var schooluniform:Equip = new Equip({
         "HP":[0],
         "attack":[15,25,30,35,45],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0,0,0,5,10],
         "resistance":{
            "weight":Equips.long100,
            "weak":Equips.long100,
            "curse":Equips.long100
         },
         "specials":[[Equip.BOOST_STATUS],null,[Equip.DEFEND_BUFF,Stats.ATTACK,80],null,[Equip.DEFEND_BUFF,Stats.DEFENCE,80]]
      });
      
      public static var camoskirt:Equip = new Equip({
         "HP":[0],
         "attack":[5,5,10,15,15],
         "defence":[5,5,10,15,20],
         "magicAttack":[5,5,10,15,15],
         "magicDefence":[5,5,10,15,20],
         "accuracy":[5],
         "evade":[5],
         "resistance":{
            "bomb":Equips.long50,
            "bio":Equips.long50,
            "earth":Equips.long50
         },
         "specials":[[Equip.BOOST,Element.BOMB],null,[Equip.BOOST,Element.EARTH],null,[Equip.BOOST,Element.BIO]]
      });
      
      public static var reddress:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0,5,10,15,20],
         "magicAttack":[0,0,5,10,15],
         "magicDefence":[15,20,25,30,40],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "syphon":Equips.long100,
            "dispel":Equips.long100
         },
         "specials":[null,[Equip.BOOST,Element.FIRE],[Equip.BOOST,Element.ICE],[Equip.BOOST,Element.THUNDER]]
      });
      
      public static var obsidianarmor:Equip = new Equip({
         "HP":[0,0,0,0,5],
         "attack":[0,5,5,5,5],
         "defence":[5,10,15,20,25],
         "magicAttack":[0,5,5,5,5],
         "magicDefence":[15,25,35,45,50],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "water":Equips.long50,
            "fire":Equips.long50,
            "thunder":Equips.long50
         },
         "specials":[[Equip.BOOST,Element.FIRE],null,[Equip.BOOST,Element.DARK],null,[Equip.DEFEND_BUFF,Stats.DEFENCE,80]]
      });
      
      public static var summerkimono:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[10,20,25,35,40],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":Equips.long50,
            "water":Equips.long50,
            "dispel":Equips.long100
         },
         "specials":[[Equip.BOOST,Element.THUNDER],null,[Equip.DEFEND_STATUS,Status.AUTOLIFE,1],null,[Equip.SUMMON,Summons.WraithOrigami,0.3]]
      });
      
      public static var popedress:Equip = new Equip({
         "HP":[0,0,0,0,5],
         "attack":[0],
         "defence":[10,15,20,25,35],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,35],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":Equips.long50,
            "holy":Equips.long50,
            "thunder":Equips.long50
         },
         "specials":[[Equip.BOOST,Element.HOLY],null,[Equip.BOOST_HEALING],null,[Equip.BOOST_BUFFS]],
         "materials":[undefined,undefined,undefined,[Items.lego,2,Items.cupcake,2,Items.valentine,1]]
      });
      
      public static var nurseuniform:Equip = new Equip({
         "HP":[0,5,5,10,10],
         "attack":[0,5,5,5,10],
         "defence":[5,10,15,20,20],
         "magicAttack":[0,5,5,5,10],
         "magicDefence":[5,10,15,20,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dark":Equips.long50,
            "syphon":Equips.long100,
            "stun":Equips.long100
         },
         "specials":[[Equip.BOOST_HEALING],[Equip.BOOST_FOOD],[Equip.SUMMON,Spells.medipack,1]]
      });
      
      public static var darkgown:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[15,20,25,30,45],
         "magicDefence":[15,20,25,30,45],
         "accuracy":[0],
         "evade":[-10],
         "resistance":{
            "dark":Equips.long100,
            "ice":Equips.down30
         },
         "specials":[[Equip.BOOST,Element.DARK],null,[Equip.BOOST,Element.NONE],null,[Equip.DEFEND_STATUS,Status.ENCHANTED,1]]
      });
      
      public static var samidress:Equip = new Equip({
         "HP":[0,5,5,10,10],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0,5,5,10,10],
         "resistance":{
            "wind":Equips.long50,
            "dark":Equips.long50
         },
         "specials":[null,null,[Equip.DEFEND_STATUS,Status.ENCHANTED,1],[Equip.STEAL],[Equip.BOOST_STATUS]]
      });
      
      public static var cowcostume:Equip = new Equip({
         "HP":[0],
         "attack":[5,5,5,10,15],
         "defence":[5,10,15,20,25],
         "magicAttack":[5,5,5,10,15],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":Equips.long100,
            "wind":Equips.long100
         },
         "specials":[[Equip.DEFEND_STATUS,Status.GOOD_LUCK,2],null,[Equip.DEFEND_STATUS,Status.REGEN,2],null,[Equip.DEFEND_STATUS,Status.BRAVE,2]],
         "materials":[undefined,undefined,undefined,[Items.burger,3,Items.leather,2,Items.milkbottle,1]]
      });
      
      public static var furdress:Equip = new Equip({
         "HP":[5,5,5,10,10],
         "attack":[0],
         "defence":[10,15,20,30,45],
         "magicAttack":[0],
         "magicDefence":[10,15,20,30,45],
         "accuracy":[0],
         "evade":[-10],
         "resistance":{
            "ice":Equips.long50,
            "earth":Equips.long50,
            "freeze":Equips.long100
         },
         "specials":[[Equip.BOOST,Element.ICE],null,[Equip.BOOST,Element.EARTH],null,[Equip.BOOST_CATCH]]
      });
      
      public static var santaskirt:Equip = new Equip({
         "HP":[0],
         "attack":[0,0,0,5,10],
         "defence":[5,10,15,20,25],
         "magicAttack":[0,0,0,5,10],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "ice":Equips.long50,
            "freeze":Equips.long100,
            "wet":Equips.long100
         },
         "specials":[[Equip.SUMMON,Spells.snow,0.66],null,[Equip.SUMMON,Spells.candycane2,1],null,[Equip.BOOST,Element.ICE]],
         "materials":[undefined,undefined,undefined,[Items.lego,1,Items.candycane,1]]
      });
      
      public static var mechasuit:Equip = new Equip({
         "HP":[0,0,5,5,5],
         "attack":[0,0,5,10,15],
         "defence":[10,15,20,25,35],
         "magicAttack":[0,0,5,10,15],
         "magicDefence":[10,15,20,25,35],
         "accuracy":[0,5,5,10,10],
         "evade":[0],
         "resistance":{
            "thunder":Equips.long150,
            "stun":Equips.long100,
            "water":Equips.down30
         },
         "specials":[[Equip.BOOST,Element.BOMB],null,[Equip.STATUS,Status.DEFEND,1,0.33]]
      });
      
      public static var cactusdress:Equip = new Equip({
         "HP":[0,5,5,10,10],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0,5,5,10,10],
         "resistance":{
            "earth":Equips.long50,
            "bio":Equips.long50,
            "poison":Equips.long100
         },
         "specials":[[Equip.DEFEND_STATUS,Status.REGEN,2],null,[Equip.DEFEND_STATUS,Status.MORALE,2],null,[Equip.BOOST,Element.BIO]],
         "materials":[undefined,[Summons.SlimeSand,1],undefined]
      });
      
      public static var ninjaskirt:Equip = new Equip({
         "HP":[0],
         "attack":[0,5,5,10,15],
         "defence":[0],
         "magicAttack":[0,5,5,10,15],
         "magicDefence":[0],
         "accuracy":[5,5,10,15,20],
         "evade":[5,5,10,15,20],
         "resistance":{
            "wind":Equips.long50,
            "thunder":Equips.long50,
            "holy":Equips.long50
         },
         "specials":[[Equip.BOOST_THROWS],[Equip.BOOST,Element.WIND],[Equip.BOOST,Element.THUNDER],[Equip.BOOST,Element.HOLY],null]
      });
      
      public static var casualskirt:Equip = new Equip({
         "HP":[0],
         "attack":[0],
         "defence":[0,5,10,15,20],
         "magicAttack":[0],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[5,10,10,15,20],
         "resistance":{
            "death":Equips.long100,
            "syphon":Equips.long100,
            "stagger":Equips.long100
         },
         "specials":[[Equip.BOOST,Element.NONE],null,[Equip.BOOST_BUFFS],null,[Equip.BOOST_DEBUFFS]],
         "materials":[undefined,undefined,undefined,[Items.burger,6,Items.chocolate,1]]
      });
      
      public static var spidergown:Equip = new Equip({
         "HP":[0,0,0,0,5],
         "attack":[0,0,0,0,5],
         "defence":[5,10,15,20,25],
         "magicAttack":[0,0,0,0,5],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0,0,0,0,5],
         "evade":[0,0,0,0,5],
         "resistance":{
            "dark":Equips.long50,
            "holy":Equips.long50,
            "death":Equips.long100
         },
         "specials":[[Equip.BOOST,Element.DARK],null,[Equip.SUMMON,Spells.screamer,0.28],null,[Equip.DEFEND_STATUS,Status.INVISIBLE,1]]
      });
      
      public static var empty:Equip = new Equip({"materials":[]});
      
      public static var swordmedal:Equip = new Equip({
         "attack":[10,15,20],
         "accuracy":[0,5,10],
         "materials":[[Items.silver,4,Items.gold,4],[Items.silver,6,Items.gold,6]]
      });
      
      public static var shieldmedal:Equip = new Equip({
         "defence":[10,15,20],
         "evade":[0,5,5],
         "HP":[0,0,5],
         "materials":[[Items.silver,4,Items.gold,4],[Items.silver,6,Items.gold,6]]
      });
      
      public static var goldstar:Equip = new Equip({
         "magicAttack":[10,15,20],
         "accuracy":[0,5,10],
         "materials":[[Items.gold,5],[Items.gold,8]]
      });
      
      public static var platinumstar:Equip = new Equip({
         "magicDefence":[10,15,20],
         "evade":[0,5,5],
         "HP":[0,0,5],
         "materials":[[Items.silver,10],[Items.silver,16]]
      });
      
      public static var smallcloud:Equip = new Equip({
         "evade":[0,5,10],
         "resistance":{"water":Equips.short30},
         "specials":[[Equip.MORE_SP]]
      });
      
      public static var ironcross:Equip = new Equip({"resistance":{
         "bomb":Equips.short50,
         "stagger":Equips.short100
      }});
      
      public static var bandage:Equip = new Equip({
         "resistance":{
            "earth":Equips.short50,
            "death":Equips.short100
         },
         "materials":[[Items.silk,4,Items.turd,2],[Items.silk,4,Items.headband,1]]
      });
      
      public static var goldenpentagram:Equip = new Equip({
         "SID":"goldenpentagram",
         "type":Equip.FLAIR,
         "icon":448,
         "skin":28,
         "resistance":{
            "holy":Equips.short50,
            "weak":Equips.short100
         }
      });
      
      public static var targetbadge:Equip = new Equip({
         "resistance":{"bomb":Equips.short30},
         "accuracy":[10,20,30],
         "specials":[null,null,[Equip.DEFEND_STATUS,Status.TARGET,2]]
      });
      
      public static var bigeyebrows:Equip = new Equip({
         "resistance":{
            "death":Equips.short100,
            "syphon":Equips.short100,
            "dispel":Equips.short100
         },
         "specials":[]
      });
      
      public static var frostbadge:Equip = new Equip({"resistance":{
         "ice":Equips.short50,
         "freeze":Equips.short100
      }});
      
      public static var hoopearings:Equip = new Equip({
         "attack":[0,5,10],
         "resistance":{"thunder":Equips.short30},
         "specials":[[Equip.STATUS,Status.GOOD_LUCK,2,0.25],null,[Equip.DEFEND_STATUS,Status.GOOD_LUCK,2]]
      });
      
      public static var pearlnecklace:Equip = new Equip({"resistance":{
         "water":Equips.short50,
         "wet":Equips.short100
      }});
      
      public static var greencross:Equip = new Equip({
         "defence":[0,5,10],
         "resistance":{"freeze":Equips.short50},
         "specials":[[Equip.STATUS,Status.REGEN,2,0.3],null,[Equip.DEFEND_STATUS,Status.REGEN,2]]
      });
      
      public static var minidrone:Equip = new Equip({
         "accuracy":[0,5,10],
         "resistance":{
            "thunder":Equips.short30,
            "wind":Equips.short30
         },
         "specials":[[Equip.BOOST_CATCH]],
         "materials":[undefined,[Items.cpu,1,Items.keycard,1]]
      });
      
      public static var surgicalmask:Equip = new Equip({"resistance":{
         "bio":Equips.short50,
         "poison":Equips.short100
      }});
      
      public static var silvercross:Equip = new Equip({"resistance":{
         "dark":Equips.short50,
         "curse":Equips.short100
      }});
      
      public static var balancebadge:Equip = new Equip({
         "resistance":{
            "fire":Equips.short30,
            "water":Equips.short30
         },
         "HP":[0,0,5],
         "attack":[5,5,5],
         "defence":[0,5,5],
         "magicAttack":[5,5,5],
         "magicDefence":[0,5,5],
         "accuracy":[5,5,5],
         "evade":[0,0,5]
      });
      
      public static var fakemustache:Equip = new Equip({
         "resistance":{"dark":Equips.short30},
         "specials":[[Equip.STEAL]]
      });
      
      public static var lightningbadge:Equip = new Equip({"resistance":{
         "thunder":Equips.short50,
         "stun":Equips.short100
      }});
      
      public static var chromeearings:Equip = new Equip({
         "statusEffect":Status.FREEZE,
         "statusChance":[10,20,30],
         "statusDegree":[2,2,2],
         "resistance":{"holy":Equips.short30},
         "specials":[[Equip.NO_STACK]]
      });
      
      public static var cattail:Equip = new Equip({
         "evade":[10,15,15],
         "resistance":{"death":Equips.short100},
         "specials":[null,null,[Equip.DEFEND_BUFF,Stats.EVADE,30]]
      });
      
      public static var fatfly:Equip = new Equip({
         "statusEffect":Status.DOOM,
         "statusChance":[30,40,50],
         "statusDegree":[3,3,2],
         "resistance":{
            "wind":Equips.short30,
            "bio":Equips.short30
         },
         "specials":[[Equip.NO_STACK],null,[Equip.SUMMON,Spells.flybomb,1.25]]
      });
      
      public static var luckyclover:Equip = new Equip({
         "resistance":{"earth":Equips.short30},
         "specials":[[Equip.STATUS,Status.BLESS,2,0.25],null,[Equip.DEFEND_STATUS,Status.BLESS,2]]
      });
      
      public static var heartpendant:Equip = new Equip({
         "defence":[0,0,5],
         "magicDefence":[0,0,5],
         "resistance":{"holy":Equips.short30},
         "specials":[[Equip.STATUS,Status.LOVED,2,0.25],null,[Equip.DEFEND_STATUS,Status.LOVED,2]]
      });
      
      public static var crossbonepin:Equip = new Equip({
         "statusEffect":Status.CURSE,
         "statusChance":[30,45,60],
         "statusDegree":[4,5,6],
         "resistance":{
            "death":Equips.short50,
            "syphon":Equips.short50
         },
         "specials":[[Equip.NO_STACK]]
      });
      
      public static var battlepaint:Equip = new Equip({
         "magicAttack":[0,5,10],
         "resistance":{"ice":Equips.short30},
         "specials":[[Equip.STATUS,Status.BRAVE,2,0.2],null,[Equip.DEFEND_STATUS,Status.BRAVE,4]]
      });
      
      public static var flamebadge:Equip = new Equip({"resistance":{
         "fire":Equips.short50,
         "burn":Equips.short100
      }});
      
      public static var amethystearings:Equip = new Equip({
         "statusEffect":Status.DRY,
         "statusChance":[100,100,100],
         "statusDegree":[2,3,4],
         "resistance":{"water":Equips.short30},
         "specials":[[Equip.NO_STACK]]
      });
      
      public static var tentacle:Equip = new Equip({
         "statusEffect":Status.VIRUS,
         "statusChance":[30,60,100],
         "statusDegree":[1,1,1],
         "resistance":{"wet":Equips.short50},
         "specials":[[Equip.NO_STACK],null,[Equip.SUMMON,Spells.tentacles,1.25]]
      });
      
      public static var fairy:Equip = new Equip({
         "resistance":{"dark":Equips.short30},
         "specials":[[Equip.STATUS,Status.AUTOLIFE,2,0.15],null,[Equip.DEFEND_STATUS,Status.AUTOLIFE,1]]
      });
      
      public static var thetriforce:Equip = new Equip({
         "resistance":{
            "dispel":Equips.short50,
            "curse":Equips.short50
         },
         "specials":[[Equip.STATUS,Status.MORALE,2,0.25],null,[Equip.DEFEND_STATUS,Status.MORALE,2]]
      });
      
      public static var peacebadge:Equip = new Equip({
         "statusEffect":Status.WEAKEN,
         "statusChance":[30,45,60],
         "statusDegree":[4,5,6],
         "defence":[0,5,10],
         "resistance":{"weak":Equips.short50},
         "specials":[[Equip.NO_STACK]]
      });
      
      public static var angelpin:Equip = new Equip({"resistance":{
         "wind":Equips.short50,
         "weight":Equips.short100
      }});
      
      public static var emeraldearings:Equip = new Equip({
         "statusEffect":Status.POISON,
         "statusChance":[50,80,100],
         "statusDegree":[2,2,3],
         "resistance":{"earth":Equips.short30},
         "specials":[[Equip.NO_STACK]]
      });
      
      public static var angryfaic:Equip = new Equip({
         "evade":[0,5,5],
         "accuracy":[0,5,5],
         "resistance":{"stun":Equips.short50},
         "specials":[[Equip.DEFEND_STATUS,Status.TARGET,3],null,[Equip.INTIMIDATE]]
      });
      
      public static var pocketwatch:Equip = new Equip({
         "resistance":{"dispel":Equips.short50},
         "specials":[[Equip.STATUS,Status.HASTE,2,0.2]]
      });
      
      public static var coincharm:Equip = new Equip({
         "defence":[0,5,5],
         "magicDefence":[0,0,5],
         "specials":[[Equip.MORE_GOLD]]
      });
      
      public static var luckyfish:Equip = new Equip({
         "attack":[0,0,5],
         "magicAttack":[0,5,5],
         "specials":[[Equip.MORE_ITEMS]]
      });
      
      public static var petrock:Equip = new Equip({
         "defence":[0,5,10],
         "statusEffect":Status.HEAVY,
         "statusChance":[100,100,100],
         "statusDegree":[2,3,4],
         "resistance":{"thunder":Equips.short30},
         "specials":[[Equip.NO_STACK]]
      });
      
      public static var narutomaki:Equip = new Equip({
         "SID":"narutomaki",
         "type":Equip.FLAIR,
         "icon":443 + 56,
         "skin":42,
         "magicDefence":[0,5,10],
         "resistance":{"water":Equips.short30},
         "specials":[[Equip.REVIVE_BUFF,40,60,80]]
      });
      
      public static var biteybadge:Equip = new Equip({
         "evade":[0,0,5],
         "statusEffect":Status.TIRED,
         "statusChance":[100,100,100],
         "statusDegree":[1,2,3],
         "resistance":{
            "dark":Equips.short30,
            "weak":Equips.short50
         },
         "specials":[[Equip.NO_STACK]]
      });
      
      public static var dinoegg:Equip = new Equip({
         "HP":[0,5,10],
         "specials":[[Equip.MORE_AP,1.1,1.15,1.2]],
         "materials":[undefined,[Items.scales,3,Items.easteregg,1]]
      });
      
      public static var viridian:Equip = new Equip({
         "resistance":{
            "wind":Equips.short30,
            "earth":Equips.short30,
            "weight":Equips.short50
         },
         "specials":[[Equip.SKIP_HASTE]]
      });
      
      public static var tetromino:Equip = new Equip({
         "HP":[0,5,10],
         "specials":[[Equip.TETRIS]]
      });
      
      public static var dogtags:Equip = new Equip({
         "attack":[0,5,10],
         "resistance":{"dispel":Equips.short50},
         "specials":[[Equip.REVIVE_BUFF,40,60,80]]
      });
      
      public static var companioncube:Equip = new Equip({
         "HP":[0,0,5],
         "resistance":{"bomb":Equips.short30},
         "specials":[[Equip.REVIVE_BUFF,20,30,50]]
      });
      
      public static var pixelglasses:Equip = new Equip({
         "accuracy":[-10],
         "resistance":{
            "dark":Equips.short30,
            "holy":Equips.short30
         },
         "specials":[[Equip.DEAL_WITH_IT]],
         "materials":[[Items.glass,8,Items.plastic,2],[Items.glass,2,Items.lego,1,Items.sunglasses,1]]
      });
      
      public static var nanomachines:Equip = new Equip({
         "magicAttack":[0,5,10],
         "resistance":{"syphon":Equips.short100},
         "specials":[[Equip.FAST_COOLDOWN]]
      });
      
      public static var meowmeowbadge:Equip = new Equip({
         "attack":[0,0,5],
         "magicAttack":[0,0,5],
         "resistance":{"stun":Equips.short50},
         "specials":[]
      });
      
      public static var ramchip:Equip = new Equip({
         "resistance":{"thunder":Equips.short30},
         "specials":[[Equip.MORE_MAX_SP,1.033,1.066,1.1]]
      });
      
      public static var babypenguin:Equip = new Equip({
         "evade":[0,0,5],
         "statusEffect":Status.WET,
         "statusChance":[100,100,100],
         "statusDegree":[2,3,4],
         "resistance":{"water":Equips.short30},
         "specials":[[Equip.NO_STACK]]
      });
      
      public static var onering:Equip = new Equip({
         "HP":[0],
         "attack":[5,10,15],
         "defence":[5,10,15],
         "magicAttack":[5,10,15],
         "magicDefence":[5,10,15],
         "accuracy":[10,15,20],
         "evade":[10,15,20],
         "resistance":{
            "ice":Equips.short30,
            "freeze":Equips.short50
         },
         "specials":[[Equip.STATUS,Status.CURSE,2,1]]
      });
      
      public static var juicybeast:Equip = new Equip({
         "resistance":{"bio":Equips.short30},
         "specials":[[Equip.SP_RECOVERY],[1.2,1.8,2.5]],
         "materials":[[Items.virus,3,Items.fur,3],[Items.virus,10,Items.fur,10]]
      });
      
      public static var tooth:Equip = new Equip({
         "HP":[10,15,15],
         "resistance":{"syphon":Equips.short100},
         "specials":[null,null,[Equip.DEFEND_BUFF,Stats.HP,20]]
      });
      
      public function EquipsAlt()
      {
         super();
      }
   }
}

