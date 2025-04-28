package
{
   import text.*;
   
   public class Spells
   {
      public static var limitAP1:Array = [100,300,1000,3000,10000];
      
      public static var limitAP2:Array = [100,300,1000,3000,10000];
      
      public static var WEP_EFFECTS:String = "Element and effects depend on current weapon. ";
      
      public static var LIMIT_BREAK:String = "Limit Break! ";
      
      public static var LOW_ACC:String = "Low accuracy. ";
      
      public static var HIGH_ACC:String = "High accuracy. ";
      
      public static var HIGH_CRITS:String = "High critical hit rate. ";
      
      public static var RANDOM:String = "Very random damage. ";
      
      public static var WILL_WET:String = "Wets the targets. ";
      
      public static var HEALS_ONE:String = "Heals an ally. ";
      
      public static var HEALS_ALL:String = "Heals all allies. ";
      
      public static var HITS_ALL:String = "Targets all foes. ";
      
      public static var ALTERNATIVE_ALL:String = "Alternatively, can target all foes for even damage. ";
      
      public static var ALTERNATIVE_ONE:String = "Alternatively, can be concentrated on a single target. ";
      
      public static var HITS_ALL_CENTERED:String = "Targets one foe, with other foes taking 1/3 of the damage. ";
      
      public static var MAY_SURRENDER:String = "May make targets surrender, even strong and brave ones. ";
      
      public static var AUTO_REVIVE_ALL:String = "Revives or gives auto-revive status to all allies. ";
      
      public static var RETARGETS:String = "Hits a new target if original target is killed. ";
      
      public static var SWORD_DANCE:String = "Hits 3 times, plus an extra hit for every foe killed. ";
      
      public static var SWORD_DANCE_2:String = "Hits 4 times, plus an extra hit for every foe killed. ";
      
      public static var SWORD_DANCE_3:String = "Hits 5 times, plus an extra hit for every foe killed. ";
      
      public static var DISPEL_ALL:String = "Dispels all foes, cancelling their buffs and positive status effects. ";
      
      public static var SUSHI_CAT:String = "Bounces around, hitting 3 random foes and healing the 2 most damaged players. ";
      
      public static var HITS_RANDOM_FOES:String = "One arrow is fired for each foe, but they hit random targets. ";
      
      public static var COOLDOWN_2:String = "Has a 1-turn cooldown. ";
      
      public static var COOLDOWN_3:String = "Has a 2-turn cooldown. ";
      
      public static var COOLDOWN_4:String = "Has a 3-turn cooldown. ";
      
      public static var COOLDOWN_6:String = "Has a 5-turn cooldown. ";
      
      public static var COOLDOWN_11:String = "Has a 10-turn cooldown. ";
      
      public static var defend:Spell = new Spell({
         "SID":"defend",
         "icon":155,
         "unsyphonable":true,
         "target":Target.AUTO,
         "statusEffect":Status.DEFEND,
         "statusChance":[0],
         "statusDegree":[1]
      });
      
      public static var swap:Spell = new Spell({
         "SID":"swap",
         "icon":158,
         "unsyphonable":true,
         "target":Target.READY_ALLY
      });
      
      public static var standby1:Spell = new Spell({
         "SID":"bring1",
         "icon":157,
         "unsyphonable":true,
         "target":Target.SWAPABLE_ALLY
      });
      
      public static var standby2:Spell = new Spell({
         "SID":"bring1",
         "icon":163,
         "unsyphonable":true,
         "target":Target.SWAPABLE_ALLY
      });
      
      public static var flee:Spell = new Spell({
         "SID":"flee",
         "icon":159,
         "unsyphonable":true,
         "target":Target.ALL_ALLY
      });
      
      public static var skip:Spell = new Spell({
         "SID":"skip",
         "icon":156,
         "unsyphonable":true,
         "target":Target.AUTO
      });
      
      public static var scan:Spell = new Spell({
         "SID":"scan",
         "icon":162,
         "animation":["magic4","magic3","magic2","magic1","magic1"],
         "MC":"Scan",
         "type":Stats.NONE,
         "unsyphonable":true,
         "target":Target.ALL_ENEMY
      });
      
      public static var capture:Spell = new Spell({
         "SID":"capture",
         "animation":["magic4","magic3","magic1","magic1","magic1"],
         "MC":"Box",
         "icon":160,
         "unsyphonable":true,
         "target":Target.CAPTURABLE_ENEMY
      });
      
      public static var ALL_TACTICS:Array = [defend,swap,standby1,standby2,scan,flee,skip,capture];
      
      public static var slash:Spell = new Spell({
         "SID":"swordslash",
         "icon":18,
         "AP":[0,200,2000],
         "animation":["attack1"],
         "unsyphonable":true,
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":1,
         "damage":[40,75,150],
         "element":Element.WEAPON,
         "elementDegree":100,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "bonus":Spell.BERSERKABLE
      });
      
      public static var earthedge:Spell = new Spell({
         "SID":"earthedge",
         "icon":3,
         "AP":[0,30],
         "animation":["magic2"],
         "MC":"Tremor",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30,40],
         "element":Element.EARTH
      });
      
      public static var quakespikes:Spell = new Spell({
         "SID":"quakespikes",
         "icon":4,
         "AP":[100,300],
         "animation":["magic2"],
         "MC":"Quake",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60,90],
         "element":Element.EARTH,
         "accuracy":140
      });
      
      public static var cataclysmiccut:Spell = new Spell({
         "SID":"cataclysmiccut",
         "icon":5,
         "AP":[1000,3000,9000],
         "animation":["magic2"],
         "MC":"Cataclysm",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[130,170,210],
         "element":Element.EARTH,
         "critical":30
      });
      
      public static var geysergush:Spell = new Spell({
         "SID":"geysergush",
         "icon":8,
         "AP":[0,30],
         "animation":["magic2"],
         "MC":"Geyser",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30,40],
         "element":Element.WATER,
         "statusEffect":Status.WET,
         "statusChance":[40,40,40],
         "statusDegree":[1,1,1]
      });
      
      public static var pouringpike:Spell = new Spell({
         "SID":"pouringpike",
         "icon":9,
         "AP":[100,300],
         "animation":["magic2"],
         "MC":"Flood",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60,85],
         "element":Element.WATER,
         "accuracy":100,
         "statusEffect":Status.WET,
         "statusChance":[40,45,50],
         "statusDegree":[2,2,2]
      });
      
      public static var surgingskewer:Spell = new Spell({
         "SID":"surgingskewer",
         "icon":10,
         "AP":[1000,3000,9000],
         "animation":["magic2"],
         "MC":"Torrent",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[120,160,200],
         "element":Element.WATER,
         "statusEffect":Status.WET,
         "statusChance":[50,55,60],
         "statusDegree":[2,2,2],
         "critical":30
      });
      
      public static var frostfragment:Spell = new Spell({
         "SID":"frostfragment",
         "icon":11,
         "AP":[50,200],
         "animation":["magic2"],
         "MC":"Tundra",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50,75],
         "element":Element.ICE,
         "statusEffect":Status.CHILL,
         "statusChance":[20,25,30],
         "statusDegree":[2,2,2]
      });
      
      public static var glacialglaive:Spell = new Spell({
         "SID":"glacialglaive",
         "icon":12,
         "AP":[750,2000,5000],
         "animation":["magic2"],
         "MC":"IceBerg",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[110,150,190],
         "element":Element.ICE,
         "statusEffect":Status.CHILL,
         "statusChance":[30,35,40],
         "statusDegree":[2,2,2]
      });
      
      public static var slicingcyclone:Spell = new Spell({
         "SID":"slicingcyclone",
         "icon":20,
         "AP":[180,600,2000,4000],
         "animation":["attack8"],
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[40,55,75,100],
         "element":Element.WEAPON,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "bonus":Spell.BERSERKABLE,
         "cooldownTime":2
      });
      
      public static var stealitem:Spell = new Spell({
         "SID":"stealitem",
         "icon":29,
         "AP":[0,100,500,2500],
         "MP":[0,0,0,0],
         "animation":["special1"],
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[5,10,15,20],
         "element":Element.NONE,
         "accuracy":80
      });
      
      public static var firespire:Spell = new Spell({
         "SID":"firespire",
         "icon":6,
         "AP":[50,200],
         "animation":["magic2"],
         "MC":"FireSpire",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50,75],
         "element":Element.FIRE,
         "statusEffect":Status.DRY,
         "statusChance":[20,25,30],
         "statusDegree":[2,2,2]
      });
      
      public static var lavalance:Spell = new Spell({
         "SID":"lavalance",
         "icon":7,
         "AP":[750,2000,5000],
         "animation":["magic2"],
         "MC":"LavaLance",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[110,150,190],
         "element":Element.FIRE,
         "statusEffect":Status.DRY,
         "statusChance":[30,35,40],
         "statusDegree":[2,2,2]
      });
      
      public static var nettleknife:Spell = new Spell({
         "SID":"nettleknife",
         "icon":16,
         "AP":[15,50],
         "animation":["magic2"],
         "MC":"Nettle",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30,45],
         "element":Element.BIO,
         "statusEffect":Status.POISON,
         "statusChance":[30,40],
         "statusDegree":[2,2]
      });
      
      public static var shreddingshrub:Spell = new Spell({
         "SID":"shreddingshrub",
         "icon":17,
         "AP":[300,1000,3000],
         "animation":["magic2"],
         "MC":"Nettle2",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[70,130,180],
         "element":Element.BIO,
         "statusEffect":Status.POISON,
         "statusChance":[40,50,60],
         "statusDegree":[3,3,4]
      });
      
      public static var legend:Spell = new Spell({
         "SID":"legend",
         "icon":27,
         "AP":[800,2000,5000,15000],
         "MP":[24,30,36,42],
         "animation":["attack3"],
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[130,190,250,320],
         "element":Element.WEAPON,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "critical":15,
         "bonus":Spell.BERSERKABLE,
         "cooldownTime":3
      });
      
      public static var lightblade:Spell = new Spell({
         "SID":"lightblade",
         "icon":14,
         "AP":[120,400],
         "MP":[8,11],
         "animation":["magic1"],
         "MC":"LightBlade",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50,80],
         "element":Element.HOLY
      });
      
      public static var holysword:Spell = new Spell({
         "SID":"holysword",
         "icon":15,
         "AP":[1200,2500,6000],
         "MP":[15,20,25],
         "animation":["magic1"],
         "MC":"HolySword",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[120,160,200],
         "element":Element.HOLY,
         "statusEffect":Status.DISPEL,
         "statusChance":[25,30,35],
         "statusDegree":[1,1,1]
      });
      
      public static var unleash:Spell = new Spell({
         "SID":"unleash",
         "icon":13,
         "AP":[100,300,1000,3000],
         "MP":[8,11,14,20],
         "animation":["attack5"],
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30,55,95,140],
         "element":Element.WEAPON,
         "elementDegree":200,
         "statusEffect":Status.WEAPON,
         "statusChance":[200],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[200],
         "buffDegree":[100],
         "bonus":Spell.BERSERKABLE
      });
      
      public static var quickslash:Spell = new Spell({
         "SID":"quickslash",
         "icon":19,
         "AP":[20,200,2000],
         "animation":["attack2"],
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[35,70,120],
         "element":Element.WEAPON,
         "elementDegree":100,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "accuracy":300,
         "bonus":Spell.BERSERKABLE
      });
      
      public static var temper:Spell = new Spell({
         "SID":"temper",
         "icon":24,
         "AP":[0,500,1500],
         "animation":["magic1"],
         "MC":"Temper2",
         "type":Stats.NONE,
         "target":Target.ONE_ALLY,
         "buffDegree":[40,55,70],
         "buffChance":[0],
         "buffEffect":"temper",
         "statusEffect":[Status.BRAVE],
         "statusChance":[0],
         "statusDegree":[3,3,3],
         "statusOnly":true,
         "cooldownTime":2
      });
      
      public static var revenge:Spell = new Spell({
         "SID":"revenge",
         "icon":23,
         "AP":[100,300,1000,3000],
         "MP":[12,15,18,22],
         "animation":["attack4"],
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[400,600,800,999],
         "element":Element.WEAPON,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "accuracy":120,
         "bonus":Spell.BERSERKABLE
      });
      
      public static var cleaver:Spell = new Spell({
         "SID":"cleaver",
         "icon":31,
         "AP":limitAP1,
         "animation":["attack6"],
         "jump":true,
         "limit":true,
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[220,310,420,540,660],
         "element":Element.WEAPON,
         "elementDegree":100,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "critical":30,
         "accuracy":150
      });
      
      public static var ragnarok:Spell = new Spell({
         "SID":"ragnarok",
         "icon":30,
         "AP":limitAP2,
         "animation":["magic1"],
         "MC":"Ragnarok",
         "jump":true,
         "limit":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[120,200,300,420,560],
         "element":Element.NONE,
         "elementDegree":0,
         "buffEffect":"temper",
         "buffDegree":[40,50,60,70,80],
         "statusEffect":[Status.BRAVE],
         "statusDegree":[5],
         "statusChance":[0],
         "accuracy":150
      });
      
      public static var ALL_MATT_SPELLS:Array = [earthedge,quakespikes,cataclysmiccut,geysergush,pouringpike,surgingskewer,frostfragment,glacialglaive,slicingcyclone,stealitem,firespire,lavalance,nettleknife,shreddingshrub,legend,lightblade,holysword,unleash,quickslash,temper,revenge];
      
      public static var staffstrike:Spell = new Spell({
         "SID":"staffstrike",
         "icon":38,
         "AP":[0,200,2000],
         "animation":["attack1"],
         "unsyphonable":true,
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":1,
         "damage":[30,60,120],
         "element":Element.WEAPON,
         "elementDegree":100,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "bonus":Spell.BERSERKABLE
      });
      
      public static var cleanse:Spell = new Spell({
         "SID":"blessedbunny",
         "icon":58,
         "AP":[500,1500],
         "animation":["magic5"],
         "MC":"Cleanse",
         "statusEffect":[Status.BLESS],
         "statusChance":[0],
         "statusDegree":[1,3],
         "type":Stats.NONE,
         "target":Target.ONE_ALLY,
         "damage":[0,0]
      });
      
      public static var luckystar:Spell = new Spell({
         "SID":"luckystar",
         "icon":55,
         "AP":[10,50,300],
         "animation":["magic4"],
         "MC":"LuckyStar",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30,50,80,120,155,200],
         "element":Element.NONE,
         "critical":25,
         "randomness":150,
         "bonus":Spell.BERSERKABLE
      });
      
      public static var starshower:Spell = new Spell({
         "SID":"starshower",
         "icon":56,
         "AP":[1500,3500,7000],
         "animation":["magic2"],
         "MC":"StarShower",
         "alternative":luckystar,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[55,75,100],
         "element":Element.NONE,
         "critical":25,
         "randomness":150,
         "bonus":Spell.BERSERKABLE
      });
      
      public static var starpower:Spell = new Spell({
         "SID":"starpower",
         "icon":57,
         "AP":[100,500,1500],
         "animation":["magic5"],
         "MC":"Bless",
         "type":Stats.NONE,
         "target":Target.ONE_ALLY,
         "buffDegree":[40,55,70],
         "buffEffect":"bless2",
         "buffChance":[0],
         "statusEffect":[Status.GOOD_LUCK],
         "statusChance":[0],
         "statusDegree":[3,3,3],
         "statusOnly":true,
         "cooldownTime":2
      });
      
      public static var toxic:Spell = new Spell({
         "SID":"intoxicate",
         "icon":39,
         "AP":[60,200,600,2000],
         "animation":["magic4"],
         "MC":"Toxic",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[20,25,30,40],
         "element":Element.BIO,
         "statusEffect":Status.POISON,
         "statusChance":[100,100,125,150],
         "statusDegree":[2,3,4,5]
      });
      
      public static var fire:Spell = new Spell({
         "SID":"fireball",
         "icon":35,
         "AP":[15,35],
         "animation":["magic4"],
         "MC":"Fire1",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30,45],
         "element":Element.FIRE,
         "statusEffect":Status.BURN,
         "statusChance":[10,20],
         "statusDegree":[2,2]
      });
      
      public static var fireball:Spell = new Spell({
         "SID":"fireblast",
         "icon":36,
         "AP":[150,500],
         "animation":["magic4"],
         "MC":"Fireball",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[65,90,110,140,180],
         "element":Element.FIRE,
         "statusEffect":Status.BURN,
         "statusChance":[25,30,50,65,80],
         "statusDegree":[2,2,2,2,2]
      });
      
      public static var firestorm:Spell = new Spell({
         "SID":"firestorm",
         "icon":37,
         "AP":[1500,3000,6000],
         "animation":["magic2"],
         "MC":"Firestorm",
         "alternative":fireball,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[50,70,90],
         "element":Element.FIRE,
         "statusEffect":Status.BURN,
         "statusChance":[40,45,50],
         "statusDegree":[2,2,2]
      });
      
      public static var thunder:Spell = new Spell({
         "SID":"thunderbolt",
         "icon":45,
         "AP":[15,35],
         "animation":["magic4"],
         "MC":"Thunder",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30,45],
         "element":Element.THUNDER,
         "accuracy":115,
         "statusEffect":Status.STUN,
         "statusChance":[5,10,15],
         "statusDegree":[1,1,1]
      });
      
      public static var thunderbolt:Spell = new Spell({
         "SID":"thundershock",
         "icon":46,
         "AP":[150,500],
         "animation":["magic4"],
         "MC":"Thunderbolt",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":3,
         "damage":[65,90,110,140,180],
         "element":Element.THUNDER,
         "statusEffect":Status.STUN,
         "statusChance":[15,20,25,30,40],
         "statusDegree":[1],
         "accuracy":115
      });
      
      public static var thunderstorm:Spell = new Spell({
         "SID":"thunderstorm",
         "icon":47,
         "AP":[1500,3000,6000],
         "animation":["magic2"],
         "MC":"Thunderstorm",
         "alternative":thunderbolt,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[50,70,90],
         "element":Element.THUNDER,
         "statusEffect":Status.STUN,
         "statusChance":[20,20,20],
         "statusDegree":[1],
         "accuracy":115
      });
      
      public static var ice:Spell = new Spell({
         "SID":"iceshard",
         "icon":40,
         "AP":[15,35],
         "animation":["magic4"],
         "MC":"Ice",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30,45],
         "element":Element.ICE,
         "statusEffect":Status.FREEZE,
         "statusChance":[5,10],
         "statusDegree":[2,2]
      });
      
      public static var iceshard:Spell = new Spell({
         "SID":"iceshatter",
         "icon":41,
         "AP":[150,500],
         "animation":["magic4"],
         "MC":"Iceshard",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[65,90,110,140,180],
         "element":Element.ICE,
         "statusEffect":Status.FREEZE,
         "statusChance":[10,10,10,15,20],
         "statusDegree":[2,2,2,2,2]
      });
      
      public static var icestorm:Spell = new Spell({
         "SID":"icestorm",
         "icon":42,
         "AP":[1500,3000,6000],
         "animation":["magic2"],
         "MC":"Icestorm",
         "alternative":iceshard,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[50,70,90],
         "element":Element.ICE,
         "statusEffect":Status.FREEZE,
         "statusChance":[10,10,10],
         "statusDegree":[2,2,2]
      });
      
      public static var pulse:Spell = new Spell({
         "SID":"darkpulse",
         "icon":48,
         "AP":[300,600,1500],
         "animation":["magic4"],
         "MC":"Pulse",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[80,130,190],
         "element":Element.DARK,
         "statusEffect":Status.HEAVY,
         "statusChance":[50,75,100],
         "statusDegree":[2,2,2]
      });
      
      public static var pulsar:Spell = new Spell({
         "SID":"darkpulsar",
         "icon":49,
         "AP":[2500,5000,10000],
         "animation":["magic2"],
         "MC":"Pulsar",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[75,110,150],
         "element":Element.DARK,
         "statusEffect":Status.HEAVY,
         "statusChance":[50,75,100],
         "statusDegree":[2,2,2],
         "accuracy":115,
         "cooldownTime":3
      });
      
      public static var spectrum:Spell = new Spell({
         "SID":"spectralflash",
         "icon":59,
         "AP":[50,250],
         "animation":["magic4"],
         "MC":"Spectrum",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50,75,110,150,200],
         "element":Element.WEAPON,
         "statusEffect":Status.WEAPON,
         "statusChance":[150],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[150],
         "buffDegree":[100],
         "bonusChance":0.5
      });
      
      public static var spectrum2:Spell = new Spell({
         "SID":"rainbowblast",
         "icon":60,
         "AP":[1500,3000,6000],
         "animation":["magic4"],
         "MC":"Spectrum2",
         "alternative":spectrum,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[55,75,100],
         "element":Element.WEAPON,
         "statusEffect":Status.WEAPON,
         "statusChance":[50],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[50],
         "buffDegree":[100],
         "bonusChance":0.5
      });
      
      public static var shine:Spell = new Spell({
         "SID":"holylight",
         "icon":43,
         "AP":[300,600,1500],
         "animation":["magic5"],
         "MC":"Shine",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[80,130,190],
         "element":Element.HOLY,
         "statusEffect":Status.WEAKEN,
         "statusChance":[30,40,50],
         "statusDegree":[4,4,4]
      });
      
      public static var judgement:Spell = new Spell({
         "SID":"divinejudgement",
         "icon":44,
         "AP":[2000,4000,8000],
         "animation":["magic1"],
         "MC":"Judgement",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[210,260,330],
         "element":Element.HOLY,
         "accuracy":150,
         "cooldownTime":3
      });
      
      public static var syphon:Spell = new Spell({
         "SID":"syphon",
         "icon":53,
         "AP":[50,150],
         "animation":["magic4"],
         "MC":"Syphon",
         "type":Stats.NONE,
         "target":Target.ONE_ENEMY,
         "statusEffect":Status.SYPHON,
         "statusChance":[100,125,150,200,250],
         "statusDegree":[1,2,3,4,5],
         "statusOnly":true,
         "cooldownTime":3
      });
      
      public static var syphon2:Spell = new Spell({
         "SID":"syphon2",
         "icon":54,
         "AP":[500,1000,2000],
         "animation":["magic2"],
         "MC":"Syphon2",
         "alternative":syphon,
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "statusEffect":Status.SYPHON,
         "statusChance":[50,75,100],
         "statusDegree":[2,2,2,2],
         "statusOnly":true,
         "cooldownTime":3
      });
      
      public static var genesis:Spell = new Spell({
         "SID":"genesis",
         "icon":61,
         "AP":limitAP2,
         "animation":["magic6"],
         "MC":"Genesis",
         "limit":true,
         "jump":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[100,150,210,290,380],
         "element":Element.HOLY,
         "statusEffect":[Status.AUTOLIFE],
         "statusChance":[0],
         "statusDegree":[5],
         "accuracy":200
      });
      
      public static var kyun:Spell = new Spell({
         "SID":"kyun",
         "icon":62,
         "AP":limitAP1,
         "animation":["magic6"],
         "MC":"Kyun",
         "limit":true,
         "jump":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ALLY,
         "damage":[30,40,50,60,70],
         "buffDegree":[30,40,50,60,70],
         "buffEffect":"kyun",
         "buffChance":[0],
         "statusEffect":[Status.LOVED],
         "statusChance":[0],
         "statusDegree":[2]
      });
      
      public static var ALL_NATALIE_SPELLS:Array = [cleanse,luckystar,starshower,starpower,toxic,fire,fireball,firestorm,thunder,thunderbolt,thunderstorm,ice,iceshard,icestorm,pulse,pulsar,spectrum,spectrum2,shine,judgement,syphon,syphon2];
      
      public static var pistolwhip:Spell = new Spell({
         "SID":"pistolwhip",
         "icon":68,
         "AP":[0,200,2000],
         "animation":["attack1"],
         "unsyphonable":true,
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":1,
         "damage":[35,70,140],
         "element":Element.WEAPON,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "bonus":Spell.BERSERKABLE
      });
      
      public static var snipe:Spell = new Spell({
         "SID":"snipe",
         "icon":65,
         "AP":[50,300,1500],
         "animation":["attack3"],
         "MC":"Snipe",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[80,140,220],
         "element":Element.WEAPON,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "accuracy":300,
         "critical":30,
         "bonus":Spell.BERSERKABLE,
         "cooldownTime":2
      });
      
      public static var doubleshot:Spell = new Spell({
         "SID":"doubleshot",
         "icon":66,
         "AP":[0,200,700],
         "animation":["attack4"],
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60,110,180],
         "element":Element.WEAPON,
         "statusEffect":Status.WEAPON,
         "statusChance":[150],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[150],
         "buffDegree":[100],
         "bonus":Spell.BERSERKABLE
      });
      
      public static var unloadd:Spell = new Spell({
         "SID":"unload",
         "icon":67,
         "AP":[500,1000,2000,5000],
         "animation":["attack5"],
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[160,230,320,420],
         "element":Element.WEAPON,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "critical":30,
         "bonus":Spell.BERSERKABLE,
         "cooldownTime":6
      });
      
      public static var flameshot:Spell = new Spell({
         "SID":"flameshot",
         "icon":80,
         "AP":[15,90],
         "animation":["shoot1"],
         "MC":"FlameShot",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[55,80,105,135],
         "element":Element.FIRE,
         "buffEffect":Stats.DEFENCE,
         "buffChance":[50,75,100,125],
         "buffDegree":[-25],
         "cooldownTime":2
      });
      
      public static var flameburst:Spell = new Spell({
         "SID":"flameburst",
         "icon":81,
         "AP":[300,800],
         "animation":["shoot1"],
         "MC":"FlameBurst",
         "alternative":flameshot,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[45,70,100,105,110],
         "element":Element.FIRE,
         "buffEffect":Stats.DEFENCE,
         "buffChance":[50,75,100,100,100],
         "buffDegree":[-25],
         "cooldownTime":2
      });
      
      public static var bullethell:Spell = new Spell({
         "SID":"bullethell",
         "icon":82,
         "AP":[1500,3000,5000],
         "animation":["shoot2"],
         "MC":"BulletHell",
         "alternative":flameburst,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.CENTER_ENEMY,
         "damage":[150,190,240],
         "element":Element.FIRE,
         "buffEffect":Stats.DEFENCE,
         "buffChance":[100,125,150],
         "buffDegree":[-25],
         "cooldownTime":2
      });
      
      public static var plasma:Spell = new Spell({
         "SID":"plasmashot",
         "icon":75,
         "AP":[15,90],
         "animation":["shoot1"],
         "MC":"Plasma",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[55,80,105,135],
         "element":Element.THUNDER,
         "buffEffect":Stats.EVADE,
         "buffChance":[50,75,100,125],
         "buffDegree":[-25],
         "cooldownTime":2
      });
      
      public static var plasmawave:Spell = new Spell({
         "SID":"plasmawave",
         "icon":76,
         "AP":[300,800],
         "animation":["shoot1"],
         "MC":"PlasmaWave",
         "alternative":plasma,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[45,70,100,105,110],
         "element":Element.THUNDER,
         "buffEffect":Stats.EVADE,
         "buffChance":[50,75,100,100,100],
         "buffDegree":[-25],
         "cooldownTime":2
      });
      
      public static var plasmacross:Spell = new Spell({
         "SID":"plasmafield",
         "icon":77,
         "AP":[1500,3000,5000],
         "animation":["shoot2"],
         "MC":"PlasmaCross",
         "alternative":plasmawave,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.CENTER_ENEMY,
         "damage":[150,190,240],
         "element":Element.THUNDER,
         "buffEffect":Stats.EVADE,
         "buffChance":[100,125,150],
         "buffDegree":[-25,-25,-25],
         "cooldownTime":2
      });
      
      public static var poisongas:Spell = new Spell({
         "SID":"poisongas",
         "icon":74,
         "AP":[500,1500,3000,6000],
         "animation":["magic1"],
         "MC":"PoisonGas",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[10,20,30,40],
         "element":Element.BIO,
         "statusEffect":Status.POISON,
         "statusChance":[100,125,150,200],
         "statusDegree":[2,3,4,5],
         "cooldownTime":4
      });
      
      public static var airstrike1:Spell = new Spell({
         "SID":"airstrike1",
         "icon":70,
         "AP":[300,1000],
         "animation":["magic1"],
         "MC":"AirStrike",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[100,150,210,280],
         "element":Element.BOMB,
         "statusEffect":Status.STAGGER,
         "statusChance":[20,30,40,50],
         "statusDegree":[2],
         "cooldownTime":4
      });
      
      public static var airstrike2:Spell = new Spell({
         "SID":"airstrike2",
         "icon":71,
         "AP":[2000,4000],
         "animation":["magic1"],
         "MC":"AirStrike2",
         "multiMC":true,
         "alternative":airstrike1,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[90,140],
         "element":Element.BOMB,
         "statusEffect":Status.STAGGER,
         "statusChance":[40,50],
         "statusDegree":[1],
         "cooldownTime":4
      });
      
      public static var airstrike3:Spell = new Spell({
         "SID":"airstrike3",
         "icon":72,
         "AP":[300,1000,3000,6000],
         "animation":["magic1"],
         "MC":"AirStrike3",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[80,120,160,220],
         "element":Element.BOMB,
         "statusEffect":Status.STAGGER,
         "statusChance":[80,100,120,150],
         "statusDegree":[2,2,2,2],
         "cooldownTime":11
      });
      
      public static var medipack:Spell = new Spell({
         "SID":"medipack1",
         "icon":86,
         "AP":[50,250],
         "animation":["magic1"],
         "MC":"Medipack",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ALLY,
         "damage":[40,60],
         "cooldownTime":4
      });
      
      public static var medipack2:Spell = new Spell({
         "SID":"medipack2",
         "icon":87,
         "AP":[1500,4000],
         "animation":["magic1"],
         "MC":"Medipack",
         "multiMC":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ALLY,
         "damage":[60,80],
         "cooldownTime":4
      });
      
      public static var tankgun:Spell = new Spell({
         "SID":"tankguns",
         "icon":88,
         "AP":[750,1200,2000,4000],
         "animation":["magic1"],
         "MC":"TankGuns",
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[40,65,100,140],
         "element":Element.BOMB,
         "cooldownTime":2
      });
      
      public static var crush:Spell = new Spell({
         "SID":"armorcrush",
         "icon":69,
         "AP":[300,1000,3000],
         "animation":["attack2"],
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[70,110,160],
         "element":Element.WEAPON,
         "statusEffect":Status.DISPEL,
         "statusChance":[100,150,200],
         "statusDegree":[1,1,1],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "bonus":Spell.BERSERKABLE,
         "cooldownTime":2
      });
      
      public static var hyperbeam:Spell = new Spell({
         "SID":"hyperbeam",
         "icon":83,
         "AP":[1000,2000,4000,8000],
         "animation":["special1"],
         "jump":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[120,170,230,300],
         "element":Element.WEAPON,
         "statusEffect":Status.WEAPON,
         "statusChance":[150],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[150],
         "buffDegree":[100],
         "accuracy":120
      });
      
      public static var darkblast:Spell = new Spell({
         "SID":"darkshot",
         "icon":78,
         "AP":[15,80],
         "animation":["shoot1"],
         "MC":"DarkBlast",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[55,90,110,140],
         "element":Element.DARK,
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[50,75,100,125],
         "buffDegree":[-25,-25,-25,-25],
         "cooldownTime":2
      });
      
      public static var gravitysurge:Spell = new Spell({
         "SID":"gravitysurge",
         "icon":198,
         "AP":[300,800],
         "animation":["shoot1"],
         "MC":"DarkFlare",
         "alternative":darkblast,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[45,70,100,105,110],
         "element":Element.DARK,
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[50,75,100,100,100],
         "buffDegree":[-25],
         "cooldownTime":2
      });
      
      public static var antimatter:Spell = new Spell({
         "SID":"antimatterflux",
         "icon":79,
         "AP":[1500,3000,5000],
         "animation":["shoot2"],
         "MC":"AntiMatter",
         "alternative":gravitysurge,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.CENTER_ENEMY,
         "damage":[150,190,240],
         "element":Element.DARK,
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[100,125,150],
         "buffDegree":[-25,-25,-25],
         "cooldownTime":2
      });
      
      public static var nuke:Spell = new Spell({
         "SID":"nuke",
         "icon":90,
         "AP":limitAP2,
         "animation":["magic1"],
         "MC":"Nuke1",
         "limit":true,
         "jump":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[150,230,320,400,500],
         "element":Element.FIRE,
         "statusEffect":Status.BURN,
         "statusChance":[100],
         "statusDegree":[5,5,5,5,5],
         "accuracy":200
      });
      
      public static var nuke2:Spell = new Spell({
         "target":Target.ALL_ALLY,
         "statusEffect":Status.BURN,
         "statusChance":[100],
         "statusDegree":[5,5,5,5,5],
         "statusOnly":true
      });
      
      public static var oblivion:Spell = new Spell({
         "SID":"oblivion",
         "icon":89,
         "AP":limitAP1,
         "animation":["magic4"],
         "MC":"Oblivion",
         "jump":true,
         "limit":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[120,190,280,370,480],
         "element":Element.BOMB,
         "statusEffect":Status.STAGGER,
         "statusChance":[50,75,100,125,150],
         "statusDegree":[2,2,2,2,2],
         "accuracy":200
      });
      
      public static var ALL_LANCE_SPELLS:Array = [snipe,doubleshot,unloadd,flameshot,flameburst,bullethell,plasma,plasmawave,plasmacross,poisongas,airstrike1,airstrike2,airstrike3,medipack,medipack2,tankgun,crush,hyperbeam,darkblast,gravitysurge,antimatter];
      
      public static var arrowcut:Spell = new Spell({
         "SID":"arrowslash",
         "icon":95,
         "AP":[0,200,2000],
         "animation":["attack1"],
         "unsyphonable":true,
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":1,
         "damage":[35,70,140],
         "element":Element.WEAPON,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "bonusChance":0.5,
         "bonus":Spell.BERSERKABLE
      });
      
      public static var bowwhack:Spell = new Spell({
         "SID":"bowwhack",
         "icon":105,
         "AP":[50,150,500],
         "animation":["attack2"],
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":1,
         "damage":[30,50,75],
         "element":Element.WEAPON,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "bonusChance":0,
         "bonus":Spell.BERSERKABLE
      });
      
      public static var gust:Spell = new Spell({
         "SID":"gust",
         "icon":100,
         "AP":[15,35],
         "animation":["magic1"],
         "MC":"Gust",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":3,
         "damage":[30,45],
         "statusEffect":Status.LIGHT,
         "statusChance":[20,30],
         "statusDegree":[2,2],
         "element":Element.WIND
      });
      
      public static var whirlwind:Spell = new Spell({
         "SID":"whirlwind",
         "icon":101,
         "AP":[150,500],
         "animation":["magic1"],
         "MC":"Whirlwind",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":3,
         "damage":[65,90,120,155,200],
         "element":Element.WIND,
         "statusEffect":Status.LIGHT,
         "statusChance":[60,80,100,120,150],
         "statusDegree":[2,2,3,3,4],
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[50,75,100,125,150],
         "buffDegree":[-20,-25,-30,-35,-40]
      });
      
      public static var hurricane:Spell = new Spell({
         "SID":"hurricane",
         "icon":102,
         "AP":[1500,3000,6000],
         "animation":["magic1"],
         "MC":"Hurricane",
         "alternative":whirlwind,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[50,75,100],
         "element":Element.WIND,
         "statusEffect":Status.LIGHT,
         "statusChance":[60,80,100],
         "statusDegree":[2,2,2],
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[50,75,100],
         "buffDegree":[-15,-20,-25]
      });
      
      public static var log:Spell = new Spell({
         "SID":"logjab",
         "icon":108,
         "AP":[40,300],
         "animation":["magic2"],
         "MC":"Wood",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":1,
         "damage":[40,70],
         "element":Element.EARTH,
         "statusEffect":Status.STAGGER,
         "statusChance":[50,80],
         "statusDegree":[1],
         "critical":20
      });
      
      public static var lumber:Spell = new Spell({
         "SID":"lumbertrap",
         "icon":109,
         "AP":[1200,2500,5000],
         "animation":["magic2"],
         "MC":"Lumber",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":1,
         "damage":[100,150,220],
         "randomness":10,
         "element":Element.EARTH,
         "statusEffect":Status.STAGGER,
         "statusChance":[100,120,150],
         "statusDegree":[1],
         "critical":20
      });
      
      public static var razorleaf:Spell = new Spell({
         "SID":"leafblade",
         "icon":106,
         "AP":[40,300],
         "animation":["magic3"],
         "MC":"RazorLeaf2",
         "critical":30,
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":1,
         "damage":[50,95,150,175,200],
         "element":Element.BIO
      });
      
      public static var razorleaf2:Spell = new Spell({
         "SID":"razorleaf",
         "icon":107,
         "AP":[1000,3000,6000],
         "animation":["magic3"],
         "MC":"RazorLeaf",
         "alternative":razorleaf,
         "critical":30,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "aim":1,
         "damage":[50,75,100],
         "element":Element.BIO
      });
      
      public static var soularrow:Spell = new Spell({
         "SID":"soularrow",
         "icon":114,
         "AP":[120,450],
         "animation":["shoot1"],
         "MC":"SoulArrow2",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":1,
         "damage":[70,100,140,180,190],
         "element":Element.HOLY,
         "statusEffect":Status.WEAKEN,
         "statusChance":[50,100,100,100,120],
         "statusDegree":[3,3,4,4,5]
      });
      
      public static var frostarrow:Spell = new Spell({
         "SID":"frostarrow",
         "icon":111,
         "AP":[120,450],
         "animation":["shoot1"],
         "MC":"FrostArrow2",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":1,
         "damage":[50,75,100,140,170],
         "element":Element.ICE,
         "statusEffect":Status.FREEZE,
         "statusChance":[50,70,85,100,120],
         "statusDegree":[1]
      });
      
      public static var nitroarrow:Spell = new Spell({
         "SID":"nitroarrow",
         "icon":113,
         "AP":[120,450],
         "animation":["shoot1"],
         "MC":"BombArrow2",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":1,
         "damage":[60,90,120,160,180],
         "element":Element.BOMB,
         "statusEffect":Status.DISPEL,
         "statusChance":[50,70,85,100,120],
         "statusDegree":[1]
      });
      
      public static var sparkarrow:Spell = new Spell({
         "SID":"sparkarrow",
         "icon":112,
         "AP":[120,450],
         "animation":["shoot1"],
         "MC":"SparkArrow2",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":1,
         "damage":[70,100,140,180,190],
         "element":Element.THUNDER,
         "statusEffect":Status.STUN,
         "statusChance":[50,70,85,100,120],
         "statusDegree":[1]
      });
      
      public static var aquaarrow:Spell = new Spell({
         "SID":"aquaarrow",
         "icon":110,
         "AP":[120,450],
         "animation":["shoot1"],
         "MC":"AquaArrow2",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":1,
         "damage":[80,110,150,200,210],
         "element":Element.WATER,
         "statusEffect":Status.WET,
         "statusChance":[100,100,100,100,100],
         "statusDegree":[2,4,5,7,9]
      });
      
      public static var soularrow2:Spell = new Spell({
         "SID":"soularrow2",
         "icon":119,
         "AP":[1000,2000,4000],
         "animation":["shoot4"],
         "MC":"SoulArrow",
         "multiMC":true,
         "alternative":soularrow,
         "type":Stats.ATTACK,
         "target":Target.RANDOM_ENEMY,
         "aim":1,
         "damage":[50,70,95],
         "element":Element.HOLY,
         "statusEffect":Status.WEAKEN,
         "statusChance":[60,80,100],
         "statusDegree":[2]
      });
      
      public static var frostarrow2:Spell = new Spell({
         "SID":"frostarrow2",
         "icon":116,
         "AP":[1000,2000,4000],
         "animation":["shoot4"],
         "MC":"FrostArrow",
         "multiMC":true,
         "alternative":frostarrow,
         "type":Stats.ATTACK,
         "target":Target.RANDOM_ENEMY,
         "aim":1,
         "damage":[40,55,80],
         "element":Element.ICE,
         "statusEffect":Status.FREEZE,
         "statusChance":[30,35,40],
         "statusDegree":[1]
      });
      
      public static var nitroarrow2:Spell = new Spell({
         "SID":"nitroarrow2",
         "icon":118,
         "AP":[1000,2000,4000],
         "animation":["shoot4"],
         "MC":"BombArrow",
         "multiMC":true,
         "alternative":nitroarrow,
         "type":Stats.ATTACK,
         "target":Target.RANDOM_ENEMY,
         "aim":1,
         "damage":[45,60,90],
         "element":Element.BOMB,
         "statusEffect":Status.DISPEL,
         "statusChance":[30,35,40,45,50],
         "statusDegree":[1]
      });
      
      public static var sparkarrow2:Spell = new Spell({
         "SID":"sparkarrow2",
         "icon":117,
         "AP":[1000,2000,4000],
         "animation":["shoot4"],
         "MC":"SparkArrow",
         "multiMC":true,
         "alternative":sparkarrow,
         "type":Stats.ATTACK,
         "target":Target.RANDOM_ENEMY,
         "aim":1,
         "damage":[50,70,90],
         "element":Element.THUNDER,
         "statusEffect":Status.STUN,
         "statusChance":[30,40,50],
         "statusDegree":[1]
      });
      
      public static var aquaarrow2:Spell = new Spell({
         "SID":"aquaarrow2",
         "icon":115,
         "AP":[1000,2000,4000],
         "animation":["shoot4"],
         "MC":"AquaArrow",
         "multiMC":true,
         "alternative":aquaarrow,
         "type":Stats.ATTACK,
         "target":Target.RANDOM_ENEMY,
         "aim":1,
         "damage":[55,75,100],
         "element":Element.WATER,
         "statusEffect":Status.WET,
         "statusChance":[100],
         "statusDegree":[1,2,2]
      });
      
      public static var piercingshot:Spell = new Spell({
         "SID":"piercingshot",
         "icon":98,
         "AP":[40,150,500],
         "animation":["shoot3"],
         "MC":"PiercingShot",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":1,
         "damage":[40,75,130],
         "element":Element.WEAPON,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "critical":30,
         "accuracy":300,
         "bonus":Spell.BERSERKABLE
      });
      
      public static var comboshot:Spell = new Spell({
         "SID":"comboshot",
         "icon":99,
         "AP":[500,1200,3000,7000],
         "animation":["shoot2"],
         "MC":"ComboShot",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":1,
         "damage":[80,120,170,220],
         "element":Element.WEAPON,
         "statusEffect":Status.WEAPON,
         "statusChance":[150],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[150],
         "buffDegree":[100],
         "critical":20,
         "accuracy":120,
         "bonusChance":0.5,
         "bonus":Spell.BERSERKABLE,
         "cooldownTime":2
      });
      
      public static var arrowrain:Spell = new Spell({
         "SID":"arrowrain",
         "icon":97,
         "AP":[500,1000,2000,4000,8000],
         "animation":["shoot4"],
         "MC":"ArrowRain",
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[30,40,50,70,90],
         "element":Element.WEAPON,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "critical":20,
         "accuracy":100,
         "cooldownTime":2,
         "bonus":Spell.BERSERKABLE
      });
      
      public static var renew:Spell = new Spell({
         "SID":"renew",
         "icon":103,
         "AP":[10,50],
         "animation":["magic1"],
         "MC":"Renew",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ALLY,
         "aim":3,
         "damage":[20,40]
      });
      
      public static var remedy:Spell = new Spell({
         "SID":"remedy",
         "icon":104,
         "AP":[250,1000,3000],
         "animation":["magic1"],
         "MC":"Remedy",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ALLY,
         "aim":3,
         "damage":[50,65,80],
         "statusDegree":[1,2,3],
         "statusEffect":[Status.BLESS],
         "statusChance":[0]
      });
      
      public static var ALL_ANNA_SPELLS:Array = [bowwhack,gust,whirlwind,hurricane,log,lumber,razorleaf,razorleaf2,soularrow,soularrow2,frostarrow,frostarrow2,nitroarrow,nitroarrow2,aquaarrow,aquaarrow2,sparkarrow,sparkarrow2,piercingshot,comboshot,arrowrain,renew,remedy];
      
      public static var motherearth:Spell = new Spell({
         "SID":"motherearth",
         "icon":121,
         "AP":limitAP1,
         "animation":["magic2"],
         "MC":"MotherEarth",
         "limit":true,
         "jump":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[70,130,200,270,350],
         "element":Element.BIO,
         "statusEffect":Status.POISON,
         "statusChance":[100,100,100,100,100],
         "statusDegree":[5,6,7,8,9],
         "accuracy":200
      });
      
      public static var mightyoak:Spell = new Spell({
         "SID":"mightyoak",
         "icon":120,
         "AP":limitAP2,
         "animation":["magic1"],
         "MC":"MightyOak",
         "limit":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[120,200,290,390,500],
         "element":Element.EARTH,
         "elementDegree":100,
         "accuracy":200
      });
      
      public static var backstab:Spell = new Spell({
         "SID":"backstab",
         "icon":125,
         "AP":[0,200,2000],
         "animation":["attack1"],
         "unsyphonable":true,
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":1,
         "damage":[40,80,150],
         "element":Element.WEAPON,
         "elementDegree":100,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "bonus":Spell.BERSERKABLE
      });
      
      public static var rapidslash:Spell = new Spell({
         "SID":"multistab",
         "icon":130,
         "AP":[40,200],
         "animation":["attack2"],
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50,80],
         "element":Element.WEAPON,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "critical":15,
         "bonus":Spell.BERSERKABLE,
         "cooldownTime":2
      });
      
      public static var rapidslash2:Spell = new Spell({
         "SID":"bladeblitz",
         "icon":132,
         "AP":[1000,3500,7000],
         "animation":["attack3"],
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[120,170,230],
         "element":Element.WEAPON,
         "statusEffect":Status.WEAPON,
         "statusChance":[150],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[150],
         "buffDegree":[100],
         "critical":15,
         "bonus":Spell.BERSERKABLE,
         "cooldownTime":2
      });
      
      public static var swiftslash:Spell = new Spell({
         "SID":"swiftslash",
         "icon":126,
         "AP":[40,400,1200,4000],
         "animation":["attack4"],
         "jump":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[25,45,70,100],
         "element":Element.WEAPON,
         "elementDegree":100,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "accuracy":150,
         "bonus":Spell.BERSERKABLE,
         "cooldownTime":2
      });
      
      public static var ninelives:Spell = new Spell({
         "SID":"ninelives",
         "icon":144,
         "AP":[60,180,500,2000,6000],
         "animation":["special2"],
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ALLY,
         "damage":[10,15,25,30,40],
         "statusChance":[100],
         "statusDegree":[1,2,2,3,3],
         "statusEffect":[Status.AUTOLIFE],
         "statusChance":[0],
         "cooldownTime":11
      });
      
      public static var starblast:Spell = new Spell({
         "SID":"starblast",
         "icon":127,
         "AP":[60,180,500,2000,6000],
         "animation":["special1"],
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[50,90,140,200,260],
         "element":Element.NONE,
         "statusEffect":Status.DISPEL,
         "statusChance":[100,125,150,175,200],
         "statusDegree":[1],
         "accuracy":200,
         "cooldownTime":11
      });
      
      public static var sworddance:Spell = new Spell({
         "SID":"sworddance",
         "icon":135,
         "AP":[50,150],
         "animation":["attack5"],
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[40,70],
         "element":Element.WEAPON,
         "elementDegree":100,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "bonus":Spell.BERSERKABLE
      });
      
      public static var sworddance2:Spell = new Spell({
         "SID":"sworddance2",
         "icon":136,
         "AP":[500,1500],
         "animation":["attack5"],
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[100,130],
         "element":Element.WEAPON,
         "elementDegree":100,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "bonus":Spell.BERSERKABLE
      });
      
      public static var sworddance3:Spell = new Spell({
         "SID":"sworddance3",
         "icon":137,
         "AP":[4000,9000],
         "animation":["attack5"],
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[165,200],
         "element":Element.WEAPON,
         "elementDegree":100,
         "statusEffect":Status.WEAPON,
         "statusChance":[100],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[100],
         "buffDegree":[100],
         "bonus":Spell.BERSERKABLE
      });
      
      public static var darkslash:Spell = new Spell({
         "SID":"darkslash",
         "icon":147,
         "AP":[30,150,500],
         "animation":["attack5"],
         "MC":"DarkSlash",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[45,75,110],
         "element":Element.DARK,
         "statusEffect":Status.CURSE,
         "statusChance":[20,30,40],
         "statusDegree":[3,3,3]
      });
      
      public static var darkslash2:Spell = new Spell({
         "SID":"darkslash2",
         "icon":148,
         "AP":[2000,5000],
         "animation":["attack5"],
         "MC":"DarkSlash2",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[150,200],
         "element":Element.DARK,
         "statusEffect":Status.CURSE,
         "statusChance":[50,75],
         "statusDegree":[4,4,5]
      });
      
      public static var holyslash:Spell = new Spell({
         "SID":"holyslash",
         "icon":140,
         "AP":[30,150,500],
         "animation":["attack5"],
         "MC":"HolySlash",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[45,75,110],
         "element":Element.HOLY,
         "statusEffect":Status.SYPHON,
         "statusChance":[20,30,40],
         "statusDegree":[1,1,1]
      });
      
      public static var holyslash2:Spell = new Spell({
         "SID":"holyslash2",
         "icon":141,
         "AP":[2000,5000],
         "animation":["attack5"],
         "MC":"HolySlash2",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[150,200],
         "element":Element.HOLY,
         "statusEffect":Status.SYPHON,
         "statusChance":[50,75],
         "statusDegree":[2,2,3]
      });
      
      public static var lightningslash:Spell = new Spell({
         "SID":"lightningslash",
         "icon":152,
         "AP":[30,150,500],
         "animation":["attack5"],
         "MC":"LightningSlash",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[45,75,110],
         "element":Element.THUNDER,
         "statusEffect":Status.STUN,
         "statusChance":[5,10,15],
         "statusDegree":[1,1,1]
      });
      
      public static var lightningslash2:Spell = new Spell({
         "SID":"lightningslash2",
         "icon":153,
         "AP":[2000,5000],
         "animation":["attack5"],
         "MC":"LightningSlash2",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[150,200],
         "element":Element.THUNDER,
         "statusEffect":Status.STUN,
         "statusChance":[20,20],
         "statusDegree":[1,2]
      });
      
      public static var windslash:Spell = new Spell({
         "SID":"windslash",
         "icon":145,
         "AP":[30,150,500],
         "animation":["attack5"],
         "MC":"WindSlash",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[45,75,110],
         "element":Element.WIND,
         "statusEffect":Status.WEAKEN,
         "statusChance":[20,30,40],
         "statusDegree":[3,3,3]
      });
      
      public static var windslash2:Spell = new Spell({
         "SID":"windslash2",
         "icon":146,
         "AP":[2000,5000],
         "animation":["attack5"],
         "MC":"WindSlash2",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[155,210],
         "element":Element.WIND,
         "statusEffect":Status.WEAKEN,
         "statusChance":[50,75],
         "statusDegree":[4,4,5]
      });
      
      public static var waterslash:Spell = new Spell({
         "SID":"waterslash",
         "icon":142,
         "AP":[30,150,500],
         "animation":["attack5"],
         "MC":"WaterSlash",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[45,75,110],
         "element":Element.WATER,
         "statusEffect":Status.BAD_LUCK,
         "statusChance":[20,30,40],
         "statusDegree":[3,3,3]
      });
      
      public static var waterslash2:Spell = new Spell({
         "SID":"waterslash2",
         "icon":143,
         "AP":[2000,5000],
         "animation":["attack5"],
         "MC":"WaterSlash2",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[150,200],
         "element":Element.WATER,
         "statusEffect":Status.BAD_LUCK,
         "statusChance":[50,75],
         "statusDegree":[4,4,5]
      });
      
      public static var sushicat:Spell = new Spell({
         "SID":"sushicat",
         "icon":138,
         "AP":[300,1000],
         "animation":["magic4"],
         "MC":"SushiCat",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[80,130],
         "element":Element.NONE,
         "cooldownTime":3
      });
      
      public static var sushicat2:Spell = new Spell({
         "SID":"sushicat2",
         "icon":139,
         "AP":[3000,7000],
         "animation":["magic4"],
         "MC":"SushiCat",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[200,250],
         "element":Element.NONE,
         "statusDegree":[2,3],
         "statusEffect":[Status.GOOD_LUCK],
         "statusChance":[0],
         "cooldownTime":3
      });
      
      public static var berserk:Spell = new Spell({
         "SID":"berserk",
         "icon":133,
         "AP":[20,150],
         "animation":["magic4"],
         "MC":"Berserk",
         "type":Stats.NONE,
         "target":Target.ONE_ANY,
         "statusEffect":Status.BERSERK,
         "statusChance":[100],
         "statusDegree":[2,4,6,8],
         "statusOnly":true,
         "cooldownTime":2
      });
      
      public static var berserk2:Spell = new Spell({
         "SID":"berserk2",
         "icon":134,
         "AP":[700,2000],
         "animation":["magic4"],
         "MC":"Berserk",
         "alternative":berserk,
         "multiMC":true,
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "statusEffect":Status.BERSERK,
         "statusChance":[100],
         "statusDegree":[2,3],
         "statusOnly":true,
         "cooldownTime":3
      });
      
      public static var charm:Spell = new Spell({
         "SID":"cherish",
         "icon":128,
         "AP":[20,200],
         "animation":["magic5"],
         "MC":"Charm",
         "type":Stats.NONE,
         "target":Target.ONE_ALLY,
         "statusDegree":[4,6,9],
         "statusOnly":true,
         "statusEffect":[Status.LOVED],
         "statusChance":[0],
         "cooldownTime":3
      });
      
      public static var charm2:Spell = new Spell({
         "SID":"cherish2",
         "icon":129,
         "AP":[2500],
         "animation":["magic5"],
         "MC":"Charm",
         "alternative":charm,
         "multiMC":true,
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "statusDegree":[2],
         "statusOnly":true,
         "statusEffect":[Status.LOVED],
         "statusChance":[0],
         "cooldownTime":4
      });
      
      public static var thecreator:Spell = new Spell({
         "SID":"thecreator",
         "icon":151,
         "AP":limitAP2,
         "animation":["magic3"],
         "MC":"Creator",
         "limit":true,
         "jump":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[100,170,260,350,450],
         "element":Element.HOLY,
         "statusDegree":[2,3,4,4,5],
         "statusEffect":[Status.GOOD_LUCK],
         "statusChance":[0],
         "accuracy":150
      });
      
      public static var thedestroyer:Spell = new Spell({
         "SID":"thedestroyer",
         "icon":150,
         "AP":limitAP2,
         "animation":["magic3"],
         "MC":"Destroyer",
         "limit":true,
         "jump":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[100,170,260,350,450],
         "element":Element.DARK,
         "statusEffect":Status.DISPEL,
         "statusChance":[100,125,150,175,200],
         "statusDegree":[1],
         "accuracy":150
      });
      
      public static var ALL_NOLEGS_SPELLS:Array = [rapidslash,rapidslash2,swiftslash,ninelives,starblast,sworddance,sworddance2,sworddance3,darkslash,darkslash2,holyslash,holyslash2,lightningslash,lightningslash2,windslash,windslash2,waterslash,waterslash2,sushicat,sushicat2,berserk,berserk2,charm,charm2];
      
      public static var snowbunny:Spell = new Spell({
         "SID":"snowbunny",
         "icon":195,
         "AP":[40,120],
         "animation":["magic1","magic4","magic3","magic2","magic2"],
         "animation2":["magic1","magic4","magic3","magic2","magic2"],
         "MC":"SnowBunny",
         "multiMC":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[30,45],
         "element":Element.ICE,
         "statusEffect":Status.CHILL,
         "statusChance":[40,60],
         "statusDegree":[2,2],
         "cooldownTime":3
      });
      
      public static var snowcat:Spell = new Spell({
         "SID":"snowcat",
         "icon":196,
         "AP":[1200,2500,5000],
         "animation":["magic1","magic2","magic3","magic2","magic2"],
         "animation2":["magic1","magic2","magic3","magic2","magic2"],
         "MC":"SnowCat",
         "multiMC":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[60,90,130],
         "randomness":10,
         "element":Element.ICE,
         "statusEffect":Status.CHILL,
         "statusChance":[80,100,120],
         "statusDegree":[2,2,2],
         "cooldownTime":3
      });
      
      public static var ivy:Spell = new Spell({
         "SID":"ivy",
         "icon":207,
         "AP":[40,300],
         "animation":["magic2","","","magic2","magic2"],
         "animation2":["magic2","magic4","magic3","magic2","magic2"],
         "MC":"Ivy",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30,60],
         "element":Element.BIO,
         "statusEffect":Status.POISON,
         "statusChance":[50,70],
         "statusDegree":[2,3]
      });
      
      public static var vines:Spell = new Spell({
         "SID":"vines",
         "icon":208,
         "AP":[1000,2000,4000],
         "animation":["magic2","","","magic2","magic2"],
         "animation2":["magic2","magic4","magic3","magic2","magic2"],
         "MC":"Vines",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[80,120,160],
         "randomness":10,
         "element":Element.BIO,
         "statusEffect":Status.POISON,
         "statusChance":[80,90,100],
         "statusDegree":[3,4,5],
         "buffEffect":Stats.EVADE,
         "buffChance":[100,100,100],
         "buffDegree":[-20,-25,-30]
      });
      
      public static var energy:Spell = new Spell({
         "SID":"energy",
         "icon":174,
         "AP":[15,35],
         "animation":["","magic4","shoot1","","magic1"],
         "animation2":["magic1","magic4","shoot1","shoot1","magic1"],
         "MC":"Energy",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30,50],
         "element":Element.BOMB,
         "critical":30
      });
      
      public static var energybomb:Spell = new Spell({
         "SID":"energy2",
         "icon":175,
         "AP":[150,500],
         "animation":["","magic4","shoot1","","magic4"],
         "animation2":["magic1","magic4","shoot1","shoot1","magic4"],
         "MC":"EnergyBomb",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60,90,110,140,180],
         "element":Element.BOMB,
         "critical":30
      });
      
      public static var energybarrage:Spell = new Spell({
         "SID":"energy3",
         "icon":176,
         "AP":[1500,3000,6000],
         "animation":["","magic2","shoot2","","magic4"],
         "animation2":["magic1","magic2","shoot2","shoot2","magic4"],
         "MC":"EnergyBlast",
         "alternative":energybomb,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[50,70,90],
         "element":Element.BOMB,
         "critical":30
      });
      
      public static var bubbles:Spell = new Spell({
         "SID":"bubbles",
         "icon":50,
         "AP":[15,35],
         "animation":["","magic4","shoot1","magic1","magic1"],
         "animation2":["magic1","magic4","shoot1","magic1","magic1"],
         "MC":"Bubbles",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30,50],
         "element":Element.WATER,
         "statusEffect":Status.WET,
         "statusChance":[40,60],
         "statusDegree":[2,2],
         "upgrade":whirlpool
      });
      
      public static var whirlpool:Spell = new Spell({
         "SID":"whirlpool",
         "icon":51,
         "AP":[150,500],
         "animation":["","magic4","shoot1","magic1","magic4"],
         "animation2":["magic1","magic4","shoot1","magic1","magic4"],
         "MC":"Whirlpool",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60,90,110,140,180],
         "element":Element.WATER,
         "statusEffect":Status.WET,
         "statusChance":[80,100,120,140,150],
         "statusDegree":[2,2,2,3,3],
         "buffEffect":Stats.EVADE,
         "buffChance":[60,80,100,100,100],
         "buffDegree":[-15,-20,-25,-30,-35],
         "upgrade":vortex
      });
      
      public static var vortex:Spell = new Spell({
         "SID":"vortex",
         "icon":52,
         "AP":[1500,3000,6000],
         "animation":["","magic2","shoot2","magic1","magic4"],
         "animation2":["magic1","magic2","shoot2","magic1","magic4"],
         "MC":"Vortex",
         "alternative":whirlpool,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[50,70,90],
         "element":Element.WATER,
         "statusEffect":Status.WET,
         "statusChance":[50,60,70],
         "statusDegree":[2,2,2],
         "buffEffect":Stats.EVADE,
         "buffChance":[60,80,100],
         "buffDegree":[-15,-15,-15]
      });
      
      public static var laserblade:Spell = new Spell({
         "SID":"laserblade",
         "icon":209,
         "AP":[100,250],
         "animation":["magic2","","magic3","","magic2"],
         "animation2":["magic2","magic4","magic3","magic2","magic2"],
         "MC":"LaserBlade",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50,75],
         "element":Element.THUNDER,
         "statusEffect":Status.STAGGER,
         "statusChance":[20,25,30],
         "statusDegree":[1,1,1]
      });
      
      public static var lasersword:Spell = new Spell({
         "SID":"lasersword",
         "icon":210,
         "AP":[750,2000,5000],
         "animation":["magic2","","magic3","","magic2"],
         "animation2":["magic2","magic4","magic3","magic2","magic2"],
         "MC":"LaserSword",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[110,150,190],
         "element":Element.THUNDER,
         "statusEffect":Status.STAGGER,
         "statusChance":[30,35,40],
         "statusDegree":[1,1,1]
      });
      
      public static var bullet:Spell = new Spell({
         "SID":"bulletbob",
         "icon":177,
         "AP":[100,250],
         "animation":["magic1","","magic1","","magic1"],
         "animation2":["magic1","magic4","magic1","magic3","magic1"],
         "MC":"Bullet",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50,75],
         "element":Element.BOMB,
         "critical":30
      });
      
      public static var bigbullet:Spell = new Spell({
         "SID":"bigbullet",
         "icon":178,
         "AP":[750,2000,5000],
         "animation":["magic1","","magic1","","magic1"],
         "animation2":["magic1","magic4","magic1","magic3","magic1"],
         "MC":"BigBullet",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[110,150,200],
         "element":Element.BOMB,
         "critical":30
      });
      
      public static var powermetal:Spell = new Spell({
         "SID":"powermetal",
         "icon":179,
         "AP":[600,1200,2500,5000],
         "animation":["magic1","","magic1","","magic2"],
         "animation2":["magic1","magic1","magic1","magic1","magic2"],
         "MC":"PowerMetal",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[40,60,90,120],
         "element":Element.WIND,
         "elementDegree":100,
         "accuracy":200,
         "cooldownTime":3
      });
      
      public static var powermetal2:Spell = new Spell({
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "damage":[15,30,45,60]
      });
      
      public static var firecrackers:Spell = new Spell({
         "SID":"firecrackers",
         "icon":211,
         "AP":[500,2000],
         "animation":["magic1","magic4","magic1","magic3","magic3"],
         "animation2":["magic1","magic4","magic1","magic3","magic3"],
         "MC":"Firecrackers",
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "statusOnly":true,
         "statusDegree":[1,2],
         "statusEffect":[Status.BAD_LUCK],
         "statusChance":[100,100],
         "accuracy":200,
         "cooldownTime":4
      });
      
      public static var air:Spell = new Spell({
         "SID":"air",
         "icon":204,
         "AP":[15,35],
         "animation":["","magic4","shoot1","","magic4"],
         "animation2":["magic1","magic4","shoot1","magic3","magic4"],
         "MC":"Air",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30,50],
         "element":Element.WIND,
         "statusEffect":Status.STAGGER,
         "statusChance":[10,20],
         "statusDegree":[1,1]
      });
      
      public static var airwave:Spell = new Spell({
         "SID":"air2",
         "icon":205,
         "AP":[150,500],
         "animation":["","magic4","shoot1","","magic4"],
         "animation2":["magic1","magic4","shoot1","magic3","magic4"],
         "MC":"AirWave",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60,90,110,140,180],
         "element":Element.WIND,
         "statusEffect":Status.STAGGER,
         "statusChance":[20,25,30,35,40],
         "statusDegree":[2,2,2,2,2]
      });
      
      public static var shockwave:Spell = new Spell({
         "SID":"air3",
         "icon":206,
         "AP":[1500,3000,6000],
         "animation":["","magic2","shoot2","","magic4"],
         "animation2":["magic1","magic2","shoot2","magic3","magic4"],
         "MC":"ShockWave",
         "alternative":airwave,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[50,70,90],
         "element":Element.WIND,
         "statusEffect":Status.STAGGER,
         "statusChance":[20,25,30],
         "statusDegree":[1,1,1]
      });
      
      public static var sawblade:Spell = new Spell({
         "SID":"sawblade",
         "icon":199,
         "AP":[100,200],
         "animation":["magic1","","magic1","magic3",""],
         "animation2":["magic1","magic4","magic1","magic3","magic1"],
         "MC":"Sawblade",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50,80,60],
         "element":Element.NONE,
         "elementDegree":100,
         "statusEffect":Status.DEATH,
         "statusChance":[10,10],
         "statusDegree":[1,1]
      });
      
      public static var sawblades:Spell = new Spell({
         "SID":"sawblades",
         "icon":200,
         "AP":[1000,2000,4000],
         "animation":["magic1","","magic1","magic3",""],
         "animation2":["magic1","magic4","magic1","magic3","magic3"],
         "MC":"Sawblades",
         "multiMC":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[60,100,140],
         "element":Element.NONE,
         "elementDegree":100,
         "statusEffect":Status.DEATH,
         "statusChance":[15,20,25],
         "statusDegree":[1,1,1],
         "cooldownTime":2
      });
      
      public static var gaiaglow:Spell = new Spell({
         "SID":"gaia",
         "icon":185,
         "AP":[15,35],
         "animation":["","magic4","","magic3","magic4"],
         "animation2":["magic1","magic4","magic2","magic3","magic4"],
         "MC":"GaiaGlow",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":3,
         "damage":[30,50],
         "element":Element.EARTH,
         "elementDegree":100,
         "statusEffect":Status.TIRED,
         "statusChance":[20,40],
         "statusDegree":[2,2]
      });
      
      public static var gaiabloom:Spell = new Spell({
         "SID":"gaia2",
         "icon":186,
         "AP":[150,500],
         "animation":["","magic4","","magic3","magic4"],
         "animation2":["magic1","magic4","magic2","magic3","magic4"],
         "MC":"GaiaBloom",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "aim":3,
         "damage":[60,90,110,140,180],
         "element":Element.EARTH,
         "elementDegree":100,
         "statusEffect":Status.TIRED,
         "statusChance":[60,80,100,120,140],
         "statusDegree":[3,4,5,5,5]
      });
      
      public static var gaiablossom:Spell = new Spell({
         "SID":"gaia3",
         "icon":187,
         "AP":[1500,3000,6000],
         "animation":["","magic2","","magic3","magic4"],
         "animation2":["magic1","magic2","magic2","magic3","magic4"],
         "MC":"GaiaBlossom",
         "alternative":gaiabloom,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[50,70,90],
         "element":Element.EARTH,
         "elementDegree":100,
         "statusEffect":Status.TIRED,
         "statusChance":[50,60,70],
         "statusDegree":[3,3,3]
      });
      
      public static var firespin:Spell = new Spell({
         "SID":"firespin",
         "icon":173,
         "AP":[750,1500,3000,6000],
         "animation":["","magic2","","magic1","magic4"],
         "animation2":["magic1","magic2","shoot1","magic1","magic4"],
         "MC":"FireSpin",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[25,45,70,100],
         "element":Element.FIRE,
         "elementDegree":100,
         "statusEffect":Status.BURN,
         "statusChance":[85,90,95,100],
         "statusDegree":[3,4,4,5],
         "buffEffect":Stats.DEFENCE,
         "buffChance":[70,80,90,100],
         "buffDegree":[-15,-20,-25,-30],
         "cooldownTime":2
      });
      
      public static var holyfire:Spell = new Spell({
         "SID":"purgingflame",
         "icon":203,
         "AP":[750,1500,3000,6000],
         "animation":["magic1","magic5","shoot1","magic1",""],
         "animation2":["magic1","magic5","shoot1","magic1","magic4"],
         "MC":"HolyFire",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50,80,110,150],
         "element":Element.HOLY,
         "elementDegree":100,
         "accuracy":150,
         "statusEffect":Status.DISPEL,
         "statusChance":[80,90,95,100],
         "statusDegree":[1,1,1,1],
         "buffEffect":Stats.MAGIC_ATTACK,
         "buffChance":[80,90,95,100],
         "buffDegree":[-20,-30,-40,-50]
      });
      
      public static var screamer:Spell = new Spell({
         "SID":"screamer",
         "icon":197,
         "AP":[1200,2500,5000],
         "animation":["magic1","magic1","","magic1","magic3"],
         "animation2":["magic1","magic1","magic2","magic1","magic3"],
         "MC":"Screamer",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[30,60,120],
         "element":Element.DARK,
         "elementDegree":100,
         "buffEffect":Stats.ATTACK,
         "buffChance":[100,100,100],
         "buffDegree":[-30,-35,-40],
         "accuracy":120,
         "cooldownTime":4
      });
      
      public static var heal:Spell = new Spell({
         "SID":"heal",
         "icon":181,
         "AP":[10,30,60],
         "animation":["magic1","magic5","","magic1","magic5"],
         "animation2":["magic1","magic5","magic1","magic1","magic5"],
         "MC":"Heal",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ALLY,
         "damage":[20,30,40,60,80,90,95,100],
         "cooldownTime":2
      });
      
      public static var healmore:Spell = new Spell({
         "SID":"healmore",
         "icon":182,
         "AP":[300,700,1500,3000,10000],
         "animation":["magic1","magic1","","magic1","magic5"],
         "animation2":["magic1","magic1","magic1","magic1","magic5"],
         "MC":"HealMore",
         "alternative":heal,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ALLY,
         "damage":[15,20,25,35,50],
         "cooldownTime":2
      });
      
      public static var revive:Spell = new Spell({
         "SID":"revive",
         "icon":184,
         "AP":[150,600,3000,8000],
         "animation":["","magic5","","magic1","magic5"],
         "animation2":["magic1","magic5","magic1","magic1","magic5"],
         "MC":"Revive",
         "type":Stats.NONE,
         "target":Target.ANY_ALLY,
         "damage":[10,50,80,120],
         "statusEffect":[Status.AUTOLIFE],
         "statusChance":[0],
         "statusDegree":[2,3,4,5]
      });
      
      public static var purify:Spell = new Spell({
         "SID":"purify",
         "icon":183,
         "AP":[500],
         "animation":["magic1","magic5","","magic1","magic5"],
         "animation2":["magic1","magic5","magic1","magic1","magic5"],
         "MC":"Purify",
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY_OR_ALL_ALLY,
         "statusOnly":true,
         "cooldownTime":3
      });
      
      public static var lockon:Spell = new Spell({
         "SID":"lockon",
         "icon":190,
         "AP":[50,200,1000],
         "animation":["magic1","magic5","magic2","magic1","magic5"],
         "animation2":["magic1","magic5","magic2","magic1","magic5"],
         "MC":"LockOn",
         "type":Stats.NONE,
         "target":Target.ONE_ALLY,
         "buffEffect":"lockon",
         "buffChance":[0],
         "buffDegree":[40,55,70],
         "statusDegree":[3,4,5],
         "statusEffect":[Status.GOOD_LUCK],
         "statusChance":[0],
         "statusOnly":true,
         "cooldownTime":2
      });
      
      public static var protect:Spell = new Spell({
         "SID":"protect",
         "icon":192,
         "AP":[100,400,1500,3000,6000],
         "animation":["magic1","","","magic1","magic5"],
         "animation2":["magic1","magic5","magic2","magic1","magic5"],
         "MC":"Protect",
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "buffEffect":"protect",
         "buffChance":[0],
         "buffDegree":[30,40,50,55,60],
         "statusOnly":true,
         "cooldownTime":6
      });
      
      public static var barrier:Spell = new Spell({
         "SID":"barrier",
         "icon":191,
         "AP":[100,400,1500,3000,6000],
         "animation":["","magic5","magic2","","magic5"],
         "animation2":["magic1","magic5","magic2","magic1","magic5"],
         "MC":"Barrier",
         "buffEffect":"barrier",
         "buffChance":[0],
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "buffDegree":[30,40,50,55,60],
         "statusOnly":true,
         "cooldownTime":6
      });
      
      public static var dispel:Spell = new Spell({
         "SID":"dispel",
         "icon":194,
         "AP":[300,1000,3000,8000],
         "animation":["magic1","magic1","magic2","magic1",""],
         "animation2":["magic1","magic1","magic2","magic1","magic5"],
         "MC":"Dispel",
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY_OR_ALL_ALLY,
         "statusEffect":Status.DISPEL,
         "statusChance":[70,85,95,120],
         "statusDegree":[1,1,1,1],
         "statusOnly":true,
         "accuracy":150,
         "cooldownTime":6
      });
      
      public static var flare:Spell = new Spell({
         "SID":"flare",
         "icon":85,
         "AP":[300,1000,3000],
         "animation":["","magic1","magic2","",""],
         "animation2":["magic1","magic1","magic2","magic1","magic1"],
         "MC":"Flare",
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "buffEffect":Stats.ACCURACY,
         "buffChance":[80,90,100],
         "buffDegree":[-20,-25,-30],
         "statusOnly":true,
         "accuracy":150,
         "cooldownTime":3
      });
      
      public static var bind:Spell = new Spell({
         "SID":"bind",
         "icon":189,
         "AP":[300,1000,3000],
         "animation":["magic4","","magic1","magic1",""],
         "animation2":["magic4","magic3","magic1","magic1","magic1"],
         "MC":"Bind",
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "buffEffect":Stats.EVADE,
         "buffChance":[100,100,100],
         "buffDegree":[-20,-35,-50],
         "statusOnly":true,
         "accuracy":150,
         "cooldownTime":3
      });
      
      public static var debilitate:Spell = new Spell({
         "SID":"debilitate",
         "icon":193,
         "AP":[100,400,1500,5000],
         "animation":["magic1","magic1","magic2","",""],
         "animation2":["magic1","magic1","magic2","magic1","magic4"],
         "MC":"Debilitate",
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "buffEffect":Stats.DEFENCE,
         "buffChance":[85,90,95,100],
         "buffDegree":[-20,-30,-40,-50],
         "statusOnly":true,
         "cooldownTime":6
      });
      
      public static var enfeeble:Spell = new Spell({
         "SID":"enfeeble",
         "icon":202,
         "AP":[100,400,1500,5000],
         "animation":["","magic1","magic2","magic1",""],
         "animation2":["magic1","magic1","magic2","magic1","magic4"],
         "MC":"Enfeeble",
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[85,90,95,100],
         "buffDegree":[-20,-30,-40,-50],
         "statusOnly":true,
         "cooldownTime":6
      });
      
      public static var teradrill:Spell = new Spell({
         "SID":"teradrill",
         "icon":201,
         "AP":[200,600,2000,5000],
         "animation":["magic2","","magic3","magic2",""],
         "animation2":["magic2","magic4","magic3","magic2","magic2"],
         "MC":"TeraDrill",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60,90,120,150],
         "element":Element.EARTH,
         "elementDegree":25,
         "critical":20,
         "cooldownTime":3
      });
      
      public static var guardian:Spell = new Spell({
         "SID":"guardian",
         "icon":28,
         "AP":[200,600,1200,2500,5000],
         "MP":[6,10,14,19,25],
         "animation":["magic1","magic5","","magic3","magic5"],
         "animation2":["magic1","magic5","magic2","magic3","magic5"],
         "MC":"Guardian",
         "type":Stats.NONE,
         "buffEffect":"guardian",
         "buffChance":[0],
         "target":Target.ONE_ALLY,
         "buffDegree":[40,50,60,70,80],
         "statusOnly":true,
         "cooldownTime":2
      });
      
      public static var reflex:Spell = new Spell({
         "SID":"reflex",
         "icon":188,
         "AP":[200,1000,3000,10000],
         "animation":["magic1","","","magic1","magic5"],
         "animation2":["magic1","magic1","magic2","magic1","magic5"],
         "MC":"Reflex",
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "buffEffect":"reflex",
         "buffChance":[0],
         "buffDegree":[25,30,35,40],
         "statusOnly":true,
         "cooldownTime":6
      });
      
      public static var partytime:Spell = new Spell({
         "SID":"encore",
         "icon":149,
         "AP":[1000],
         "animation":["magic4","magic4","magic1","magic1","magic1"],
         "animation2":["magic4","magic4","magic1","magic1","magic1"],
         "MC":"PartyTime",
         "type":Stats.NONE,
         "target":Target.ONE_ALLY,
         "statusDegree":[1],
         "statusOnly":true,
         "cooldownTime":3
      });
      
      public static var gale:Spell = new Spell({
         "SID":"gale",
         "icon":21,
         "AP":[100,250],
         "MP":[7,9],
         "animation":["magic1","","magic2","magic1","magic1"],
         "animation2":["magic1","magic4","magic2","magic1","magic1"],
         "MC":"Gale",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50,75],
         "element":Element.WIND,
         "statusEffect":Status.LIGHT,
         "statusChance":[20,30,40],
         "statusDegree":[2,2,2]
      });
      
      public static var tempest:Spell = new Spell({
         "SID":"tempest",
         "icon":22,
         "AP":[750,2000,5000],
         "MP":[14,18,22],
         "animation":["magic1","","magic2","magic1","magic4"],
         "animation2":["magic1","magic4","magic2","magic1","magic4"],
         "MC":"Tempest",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[110,150,190],
         "element":Element.WIND,
         "statusEffect":Status.LIGHT,
         "statusChance":[50,50,50],
         "statusDegree":[2,2,2]
      });
      
      public static var electrongunP:Spell = new Spell({
         "SID":"electrongun",
         "icon":1228,
         "AP":[1200,2500,5000],
         "animation":["magic4","","magic1","",""],
         "animation2":["magic4","magic3","magic1","magic3","magic1"],
         "MC":"ElectronGun",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60,100,160],
         "element":Element.THUNDER,
         "elementDegree":100,
         "statusEffect":Status.STUN,
         "statusChance":[100,150,150],
         "statusDegree":[2,2,3],
         "cooldownTime":6
      });
      
      public static var sharpenP:Spell = new Spell({
         "SID":"sharpen",
         "icon":1225,
         "AP":[1000,2500,5000],
         "animation":["magic1","","","magic3","magic5"],
         "animation2":["magic1","magic1","magic2","magic3","magic5"],
         "MC":"Sharpen",
         "damage":[1,2,3],
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY_OR_ALL_ALLY,
         "buffDegree":[1,2,3],
         "statusOnly":true,
         "cooldownTime":6
      });
      
      public static var sandP:Spell = new Spell({
         "SID":"sand",
         "icon":1226,
         "AP":[100,250],
         "animation":["magic2","","magic3","magic2","magic2"],
         "animation2":["magic2","magic4","magic3","magic2","magic2"],
         "MC":"Sand",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50,75],
         "element":Element.EARTH,
         "statusEffect":Status.DRY,
         "statusChance":[50,60,70],
         "statusDegree":[2,2,2],
         "buffEffect":Stats.ACCURACY,
         "buffChance":[100,100],
         "buffDegree":[-20,-25]
      });
      
      public static var sandduneP:Spell = new Spell({
         "SID":"sanddune",
         "icon":1227,
         "AP":[750,2000,5000],
         "animation":["magic2","","magic3","magic2","magic2"],
         "animation2":["magic2","magic4","magic3","magic2","magic2"],
         "MC":"SandDune",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[110,150,190],
         "element":Element.EARTH,
         "statusEffect":Status.DRY,
         "statusChance":[80,90,100],
         "statusDegree":[2,2,2],
         "buffEffect":Stats.ACCURACY,
         "buffChance":[100,100,100],
         "buffDegree":[-30,-35,-40]
      });
      
      public static var acidP:Spell = new Spell({
         "SID":"acid3",
         "icon":1222,
         "AP":[150,500],
         "animation":["","magic4","shoot1","magic3",""],
         "animation2":["magic1","magic4","shoot1","magic3","magic4"],
         "MC":"Acid",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[65,90,110,140,180],
         "element":Element.BIO,
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[100,100,100,100,100],
         "buffDegree":[-15,-20,-25,-30,-35]
      });
      
      public static var acid2P:Spell = new Spell({
         "SID":"acid2",
         "icon":1223,
         "AP":[1500,3000,6000],
         "animation":["","magic2","shoot2","magic3",""],
         "animation2":["magic1","magic2","shoot2","magic3","magic4"],
         "MC":"Acid2",
         "alternative":acidP,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[50,70,90],
         "element":Element.BIO,
         "elementDegree":100,
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[100,100,100],
         "buffDegree":[-10,-15,-20]
      });
      
      public static var bubbleringP:Spell = new Spell({
         "SID":"bubblering",
         "icon":1232,
         "AP":[500,1200,5000],
         "animation":["magic1","magic2","magic2","magic3","magic4"],
         "animation2":["magic1","magic2","magic2","magic3","magic4"],
         "MC":"BubbleRing",
         "type":Stats.NONE,
         "target":Target.ONE_ENEMY,
         "damage":[80,130,200],
         "element":Element.WATER,
         "statusEffect":Status.SYPHON,
         "statusChance":[90,120,150],
         "statusDegree":[2,2,2]
      });
      
      public static var musicalblastP:Spell = new Spell({
         "SID":"musicalblast",
         "icon":1231,
         "AP":[400,1500,3000,6000],
         "animation":["","magic6","","magic1","magic5"],
         "animation2":["magic1","magic6","magic1","magic1","magic5"],
         "MC":"MusicalBlast",
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "statusEffect":Status.REGEN,
         "statusDegree":[2,3,4,5],
         "buffEffect":"bless2",
         "buffDegree":[30,40,50,60],
         "cooldownTime":11
      });
      
      public static var geometryP:Spell = new Spell({
         "SID":"geometry",
         "icon":1224,
         "AP":[750,1500,3000,6000],
         "animation":["magic1","magic4","shoot1","magic3","magic4"],
         "animation2":["magic1","magic4","shoot1","magic3","magic4"],
         "MC":"Geometry",
         "type":Stats.NONE,
         "target":Target.ONE_ENEMY,
         "damage":[90,140,200,280],
         "element":Element.NONE,
         "accuracy":150,
         "critical":30,
         "cooldownTime":3
      });
      
      public static var fairybombP:Spell = new Spell({
         "SID":"fairy2",
         "icon":1229,
         "AP":[400,1500,3000,6000],
         "animation":["","magic3","","magic1","magic1"],
         "animation2":["magic1","magic3","magic1","magic1","magic1"],
         "multiMC":true,
         "MC":"FairyBomb",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "aim":1,
         "damage":[40,65,90,120],
         "element":Element.HOLY,
         "elementDegree":100,
         "accuracy":120,
         "cooldownTime":2
      });
      
      public static var deathP:Spell = new Spell({
         "SID":"death",
         "icon":1230,
         "AP":[1500,3500,7000],
         "animation":["magic4","magic4","","magic1","magic1"],
         "animation2":["magic4","magic4","magic2","magic1","magic1"],
         "MC":"Death",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[40,75,120],
         "element":Element.DARK,
         "elementDegree":100,
         "statusEffect":Status.DEATH,
         "statusChance":[70,110,150],
         "statusDegree":[1],
         "accuracy":75,
         "cooldownTime":6
      });
      
      public static var retroswordsSingle:Spell = new Spell({
         "SID":"retroswords",
         "animation":["magic1","","","magic1","magic4"],
         "animation2":["magic1","magic2","magic1","magic1","magic4"],
         "MC":"SlimeSwords",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[100,140,190,250],
         "element":Element.DARK,
         "elementDegree":100,
         "cooldownTime":2
      });
      
      public static var retroswordsAll:Spell = new Spell({
         "SID":"retroswords",
         "icon":1221,
         "AP":[400,1500,3000,6000],
         "animation":["magic1","","","magic1","magic4"],
         "animation2":["magic1","magic2","magic1","magic1","magic4"],
         "MC":"SlimeSword",
         "multiMC":true,
         "alternative":retroswordsSingle,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[40,65,90,120],
         "element":Element.DARK,
         "elementDegree":100,
         "cooldownTime":2
      });
      
      public static var abzero:Spell = new Spell({
         "SID":"abzero",
         "icon":170,
         "AP":limitAP1,
         "animation":["","magic1","","magic1","magic3"],
         "animation2":["magic1","magic1","magic2","magic1","magic3"],
         "MC":"Abzero",
         "jump":true,
         "limit":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[80,130,190,260,330],
         "element":Element.ICE,
         "elementDegree":100,
         "statusEffect":Status.FREEZE,
         "statusChance":[80,85,90,95,100],
         "statusDegree":[3,3,4,4,5],
         "buffEffect":Stats.EVADE,
         "buffChance":[100],
         "buffDegree":[-30,-35,-40,-45,-50],
         "accuracy":200
      });
      
      public static var tsunami:Spell = new Spell({
         "SID":"tsunami",
         "icon":171,
         "AP":limitAP1,
         "animation":["magic4","magic2","","magic1","magic3"],
         "animation2":["magic4","magic2","magic1","magic1","magic3"],
         "MC":"Tsunami",
         "jump":true,
         "limit":true,
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "damage":[90,150,240,340,450],
         "element":Element.WATER,
         "elementDegree":100,
         "statusEffect":Status.DEATH,
         "statusChance":[10,10,15,15,20],
         "statusDegree":[1],
         "accuracy":300
      });
      
      public static var tsunami2:Spell = new Spell({
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "statusEffect":Status.WET,
         "statusChance":[300,300,300,300,300],
         "statusDegree":[9,9,9,9,9,9],
         "accuracy":300,
         "statusOnly":true
      });
      
      public static var supernova:Spell = new Spell({
         "SID":"supernova",
         "icon":169,
         "AP":limitAP2,
         "animation":["","magic2","magic1","","magic3"],
         "animation2":["magic1","magic2","magic1","magic1","magic3"],
         "MC":"Supernova",
         "limit":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL,
         "damage":[200,300,400,500,600],
         "element":Element.FIRE,
         "elementDegree":50,
         "statusEffect":Status.BURN,
         "statusChance":[100,150,200,250,300],
         "statusDegree":[9,9,9,9,9,9],
         "accuracy":9000
      });
      
      public static var deathmetal:Spell = new Spell({
         "SID":"deathmetal",
         "icon":180,
         "AP":limitAP1,
         "animation":["magic1","","magic1","","magic5"],
         "animation2":["magic1","magic6","magic1","magic1","magic5"],
         "MC":"DeathMetal",
         "jump":true,
         "limit":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[80,140,210,300,400],
         "element":Element.WIND,
         "elementDegree":100,
         "statusEffect":Status.MORALE,
         "statusChance":[0],
         "statusDegree":[5],
         "accuracy":200
      });
      
      public static var deathmetal2:Spell = new Spell({
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "damage":[40,60,90,120,150]
      });
      
      public static var annihilate:Spell = new Spell({
         "SID":"annihilate",
         "icon":172,
         "AP":limitAP1,
         "animation":["magic3","","","shoot5","magic6"],
         "animation2":["magic3","magic2","shoot2","shoot5","magic6"],
         "MC":"Annihilate",
         "jump":true,
         "limit":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[80,120,180,250,350],
         "element":Element.NONE,
         "elementDegree":100,
         "statusEffect":Status.DEATH,
         "statusChance":[50,80,100,120,150],
         "statusDegree":[1,1,1,1,1],
         "accuracy":75
      });
      
      public static var ion:Spell = new Spell({
         "SID":"ion",
         "icon":167,
         "AP":limitAP2,
         "animation":["magic4","","magic1","","magic3"],
         "animation2":["magic4","magic1","magic1","magic1","magic3"],
         "MC":"Ion",
         "jump":true,
         "limit":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[80,150,240,330,420],
         "element":Element.THUNDER,
         "elementDegree":100,
         "statusEffect":Status.STUN,
         "statusChance":[50,70,80,90,100],
         "statusDegree":[2,2,2,2,2],
         "accuracy":300
      });
      
      public static var blackhole:Spell = new Spell({
         "SID":"blackhole",
         "icon":168,
         "AP":limitAP2,
         "animation":["","magic2","shoot2","","magic4"],
         "animation2":["magic1","magic2","shoot2","magic1","magic4"],
         "MC":"BlackHole",
         "jump":true,
         "limit":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[150,230,320,420,550],
         "element":Element.DARK,
         "elementDegree":100,
         "statusEffect":Status.HEAVY,
         "statusChance":[100],
         "statusDegree":[1,2,3,4,5],
         "accuracy":150
      });
      
      public static var rapture:Spell = new Spell({
         "SID":"rapture",
         "icon":166,
         "AP":limitAP2,
         "animation":["magic1","magic2","magic3","magic2","magic4"],
         "animation2":["magic1","magic2","magic3","magic2","magic4"],
         "MC":"Rapture",
         "jump":true,
         "limit":true,
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "damage":[100,170,260,360,480],
         "element":Element.WEAPON,
         "elementDegree":200,
         "statusEffect":Status.WEAPON,
         "statusChance":[200],
         "statusDegree":[100],
         "buffEffect":Stats.WEAPON,
         "buffChance":[200],
         "buffDegree":[100],
         "accuracy":200
      });
      
      public static var sevenswords:Spell = new Spell({
         "SID":"sevenswords",
         "icon":1233,
         "AP":limitAP2,
         "animation":["magic1","","magic2","magic2","magic4"],
         "animation2":["magic1","magic2","magic2","magic2","magic4"],
         "MC":"SevenSwords",
         "limit":true,
         "jump":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[140,220,310,400,500],
         "statusEffect":Status.SYPHON,
         "statusChance":[100],
         "statusDegree":[1,2,3,4,5],
         "element":Element.HOLY,
         "elementDegree":100,
         "accuracy":200
      });
      
      public static var artattack:Spell = new Spell({
         "SID":"artattack",
         "icon":1234,
         "AP":limitAP2,
         "animation":["","magic6","","magic3","magic4"],
         "animation2":["magic1","magic6","magic2","magic3","magic4"],
         "MC":"ArtAttack",
         "limit":true,
         "jump":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ALLY,
         "damage":[30,40,50,60,70],
         "buffDegree":[10,20,30,35,40],
         "buffEffect":"art"
      });
      
      public static var bones:Spell = new Spell({
         "SID":"bones",
         "MC":"Bones",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50],
         "element":Element.DARK,
         "elementDegree":50,
         "statusEffect":Status.DOOM,
         "statusChance":[20],
         "statusDegree":[5]
      });
      
      public static var bonestar:Spell = new Spell({
         "SID":"bonestar",
         "MC":"BoneStar",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[70],
         "element":Element.DARK,
         "statusEffect":Status.SYPHON,
         "statusChance":[50],
         "statusDegree":[2]
      });
      
      public static var groundblade:Spell = new Spell({
         "SID":"groundblade",
         "MC":"GroundBlade",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60],
         "element":Element.ICE,
         "elementDegree":50,
         "statusEffect":Status.CHILL,
         "statusChance":[25],
         "statusDegree":[2]
      });
      
      public static var luckystar2:Spell = new Spell({
         "SID":"fallingstar",
         "MC":"LuckyStar2",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60],
         "element":Element.NONE,
         "elementDegree":0,
         "critical":25,
         "randomness":150
      });
      
      public static var firerock:Spell = new Spell({
         "SID":"firerock",
         "MC":"FireRock",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50],
         "element":Element.FIRE,
         "elementDegree":75,
         "statusEffect":Status.DRY,
         "statusChance":[75],
         "statusDegree":[2]
      });
      
      public static var stalactite:Spell = new Spell({
         "SID":"stalactite",
         "MC":"Stalactite",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[40],
         "element":Element.EARTH,
         "elementDegree":75,
         "statusEffect":Status.STAGGER,
         "statusChance":[50],
         "statusDegree":[2]
      });
      
      public static var stalactite2:Spell = new Spell({
         "SID":"stalactite2",
         "MC":"Stalactite2",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[80],
         "element":Element.EARTH,
         "elementDegree":75,
         "statusEffect":Status.STAGGER,
         "statusChance":[75],
         "statusDegree":[2]
      });
      
      public static var fume:Spell = new Spell({
         "SID":"fume",
         "MC":"Fume",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50],
         "element":Element.FIRE,
         "statusEffect":Status.BURN,
         "statusChance":[75],
         "statusDegree":[3]
      });
      
      public static var eruption:Spell = new Spell({
         "SID":"eruption",
         "MC":"Eruption",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[80],
         "element":Element.FIRE,
         "statusEffect":Status.BURN,
         "statusChance":[100],
         "statusDegree":[5]
      });
      
      public static var scald:Spell = new Spell({
         "SID":"scald",
         "MC":"Scald",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[40],
         "element":Element.WATER,
         "statusEffect":Status.BURN,
         "statusChance":[50],
         "statusDegree":[2]
      });
      
      public static var rain:Spell = new Spell({
         "SID":"rain",
         "MC":"Rain",
         "target":Target.ALL
      });
      
      public static var weatherPlaceholder:Spell = new Spell({
         "name":"Weather Placeholder",
         "target":Target.ALL
      });
      
      public static var highgravity:Spell = new Spell({
         "SID":"highgravity",
         "MC":"HighGravity",
         "target":Target.ALL
      });
      
      public static var lowgravity:Spell = new Spell({
         "SID":"lowgravity",
         "MC":"LowGravity",
         "target":Target.ALL
      });
      
      public static var sandstorm:Spell = new Spell({
         "SID":"sandstorm",
         "MC":"Sandstorm",
         "target":Target.ALL
      });
      
      public static var snow:Spell = new Spell({
         "SID":"snow",
         "MC":"Snow",
         "target":Target.ALL
      });
      
      public static var earthquake:Spell = new Spell({
         "SID":"earthquake",
         "MC":"Earthquake",
         "target":Target.ALL
      });
      
      public static var blossom:Spell = new Spell({
         "SID":"blossom",
         "MC":"Petals",
         "target":Target.ALL
      });
      
      public static var hail:Spell = new Spell({
         "SID":"hail",
         "MC":"Hail",
         "target":Target.ALL
      });
      
      public static var nitro:Spell = new Spell({
         "SID":"nitro",
         "MC":"Nitro",
         "target":Target.ONE_ENEMY
      });
      
      public static var acid:Spell = new Spell({
         "SID":"acid",
         "MC":"Acid",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[70],
         "element":Element.BIO,
         "statusEffect":Status.BURN,
         "statusChance":[100],
         "statusDegree":[3],
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[100],
         "buffDegree":[-25]
      });
      
      public static var acid2:Spell = new Spell({
         "SID":"acid2",
         "MC":"Acid2",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.CENTER_ENEMY,
         "damage":[38],
         "element":Element.BIO,
         "elementDegree":100,
         "statusEffect":Status.BURN,
         "statusChance":[66],
         "statusDegree":[3]
      });
      
      public static var bamboo:Spell = new Spell({
         "SID":"bamboo",
         "MC":"Bamboo",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[40],
         "element":Element.BIO,
         "elementDegree":50,
         "statusEffect":Status.POISON,
         "statusChance":[20],
         "statusDegree":[2]
      });
      
      public static var bamboo2:Spell = new Spell({
         "SID":"bamboo2",
         "MC":"Bamboo2",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[70],
         "element":Element.BIO,
         "elementDegree":50,
         "statusEffect":Status.POISON,
         "statusChance":[50],
         "statusDegree":[2]
      });
      
      public static var bluebolt:Spell = new Spell({
         "SID":"bluebolt",
         "MC":"BlueBolt",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[30],
         "element":Element.THUNDER,
         "statusEffect":Status.CONFUSE,
         "statusChance":[10],
         "statusDegree":[1]
      });
      
      public static var bubblering:Spell = new Spell({
         "SID":"bubblering",
         "MC":"BubbleRing",
         "type":Stats.NONE,
         "target":Target.ONE_ENEMY,
         "damage":[60],
         "element":Element.WATER,
         "statusEffect":Status.SYPHON,
         "statusChance":[100],
         "statusDegree":[1]
      });
      
      public static var deepfreeze:Spell = new Spell({
         "SID":"deepfreeze",
         "MC":"Blizzard",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60],
         "element":Element.ICE,
         "statusEffect":Status.FREEZE,
         "statusChance":[50],
         "statusDegree":[3]
      });
      
      public static var wafer:Spell = new Spell({
         "SID":"wafer",
         "MC":"Wafer",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30],
         "element":Element.NONE
      });
      
      public static var present:Spell = new Spell({
         "SID":"present",
         "MC":"Present",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60],
         "element":Element.BOMB,
         "statusEffect":Status.BAD_LUCK,
         "statusChance":[100],
         "statusDegree":[2]
      });
      
      public static var swordswirl:Spell = new Spell({
         "SID":"swordswirl",
         "MC":"SwordDance",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[110],
         "element":Element.HOLY,
         "elementDegree":25,
         "statusEffect":Status.DEATH,
         "statusChance":[10],
         "statusDegree":[1],
         "accuracy":50
      });
      
      public static var iceneedle:Spell = new Spell({
         "SID":"iceneedle",
         "MC":"IceNeedle",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[100],
         "element":Element.ICE,
         "statusEffect":Status.DEATH,
         "statusChance":[33],
         "statusDegree":[1]
      });
      
      public static var plasmacage:Spell = new Spell({
         "SID":"plasmacage",
         "MC":"PlasmaCage",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60],
         "element":Element.THUNDER,
         "statusEffect":Status.STUN,
         "statusChance":[100],
         "statusDegree":[2],
         "accuracy":150
      });
      
      public static var tankcannon:Spell = new Spell({
         "SID":"tankcannon",
         "MC":"TankCannon",
         "target":Target.ALL_ENEMY
      });
      
      public static var candycane:Spell = new Spell({
         "SID":"candycanes",
         "MC":"CandyCane",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50],
         "element":Element.NONE
      });
      
      public static var candycane2:Spell = new Spell({
         "SID":"candycanes",
         "MC":"CandyCane2",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[100],
         "element":Element.NONE
      });
      
      public static var cactus:Spell = new Spell({
         "SID":"cactus",
         "MC":"Cactus",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[28],
         "element":Element.BIO,
         "elementDegree":75,
         "statusEffect":Status.STUN,
         "statusChance":[20],
         "statusDegree":[1],
         "accuracy":90
      });
      
      public static var cacti:Spell = new Spell({
         "SID":"cacti",
         "MC":"Cacti",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[70],
         "element":Element.BIO,
         "elementDegree":75,
         "statusEffect":Status.STUN,
         "statusChance":[50],
         "statusDegree":[1],
         "accuracy":90
      });
      
      public static var thunderblast:Spell = new Spell({
         "SID":"thunderblast",
         "MC":"ThunderBlast",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[24],
         "element":Element.THUNDER,
         "elementDegree":100,
         "statusEffect":Status.STAGGER,
         "statusChance":[40],
         "statusDegree":[1]
      });
      
      public static var pixelfish:Spell = new Spell({
         "SID":"bonefish",
         "MC":"PixelFish",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[180],
         "element":Element.NONE,
         "statusEffect":Status.DISABLE,
         "statusChance":[100],
         "statusDegree":[1]
      });
      
      public static var pixelriceball:Spell = new Spell({
         "SID":"riceball",
         "MC":"PixelRiceball",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[250],
         "element":Element.NONE,
         "statusEffect":Status.STUFFED,
         "statusChance":[100],
         "statusDegree":[5]
      });
      
      public static var pixelfork:Spell = new Spell({
         "SID":"pixelfork",
         "name":"Fork Frenzy",
         "MC":"PixelFork",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[300],
         "element":Element.NONE,
         "statusEffect":Status.HUNGRY,
         "statusChance":[100],
         "statusDegree":[2]
      });
      
      public static var pixelswords:Spell = new Spell({
         "SID":"pixelswords",
         "name":"Unlimited Bladeworks",
         "MC":"PixelSwords",
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[210],
         "element":Element.NONE,
         "statusEffect":Status.DISPEL,
         "statusChance":[33],
         "statusDegree":[1]
      });
      
      public static var sand:Spell = new Spell({
         "SID":"sand",
         "MC":"Sand",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[40],
         "element":Element.EARTH,
         "buffEffect":Stats.ACCURACY,
         "buffChance":[50],
         "buffDegree":[-25]
      });
      
      public static var sanddune:Spell = new Spell({
         "SID":"sanddune",
         "MC":"SandDune",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[100],
         "element":Element.EARTH,
         "buffEffect":Stats.ACCURACY,
         "buffChance":[100],
         "buffDegree":[-50]
      });
      
      public static var mushroom:Spell = new Spell({
         "SID":"mushroom",
         "MC":"Mushroom",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[25],
         "element":Element.BIO,
         "elementDegree":50,
         "statusEffect":Status.STUN,
         "statusChance":[20],
         "statusDegree":[1]
      });
      
      public static var lifedrain:Spell = new Spell({
         "SID":"lifedrain",
         "MC":"LifeDrain",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60]
      });
      
      public static var harden:Spell = new Spell({
         "name":"Harden",
         "MC":"Harden",
         "type":Stats.NONE,
         "target":Target.ONE_ANY,
         "statusEffect":Status.LOVED,
         "statusChance":[100],
         "statusDegree":[3],
         "statusOnly":true
      });
      
      public static var lighten:Spell = new Spell({
         "SID":"lighten",
         "MC":"Lighten",
         "type":Stats.NONE,
         "target":Target.ONE_ANY,
         "statusEffect":Status.ENCHANTED,
         "statusChance":[100],
         "statusDegree":[3],
         "statusOnly":true
      });
      
      public static var darken:Spell = new Spell({
         "SID":"darken",
         "MC":"Darken",
         "type":Stats.NONE,
         "target":Target.ONE_ANY,
         "statusEffect":Status.INVISIBLE,
         "statusChance":[100],
         "statusDegree":[3],
         "statusOnly":true
      });
      
      public static var puff:Spell = new Spell({
         "SID":"smokepuff",
         "MC":"Puff",
         "type":Stats.NONE,
         "target":Target.ONE_ANY,
         "statusEffect":Status.SHROUD,
         "statusChance":[100],
         "statusDegree":[3]
      });
      
      public static var puff2:Spell = new Spell({
         "SID":"smokepuff",
         "MC":"Puff2",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[20],
         "element":Element.NONE,
         "elementDegree":100,
         "accuracy":300
      });
      
      public static var recycleNerf:Spell = new Spell({
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "accuracy":100,
         "statusEffect":Status.DISPEL,
         "statusChance":[200],
         "statusDegree":[1],
         "statusOnly":true
      });
      
      public static var hellfire:Spell = new Spell({
         "SID":"hellfire",
         "name":"Hellfire",
         "MC":"HellFire",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[100],
         "element":Element.FIRE,
         "statusEffect":Status.BERSERK,
         "statusChance":[66],
         "statusDegree":[3]
      });
      
      public static var slimify:Spell = new Spell({
         "SID":"confusion",
         "MC":"Slimify",
         "type":Stats.NONE,
         "target":Target.ONE_ENEMY,
         "statusEffect":Status.CONFUSE,
         "statusChance":[100],
         "statusDegree":[3],
         "statusOnly":true
      });
      
      public static var ink:Spell = new Spell({
         "SID":"ink",
         "MC":"Ink",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[65],
         "element":Element.DARK,
         "elementDegree":100,
         "statusEffect":Status.INVISIBLE,
         "statusChance":[100],
         "statusDegree":[3],
         "buffEffect":Stats.ACCURACY,
         "buffChance":[100],
         "buffDegree":[-50]
      });
      
      public static var chocolate:Spell = new Spell({
         "SID":"chocolate",
         "MC":"Chocolate",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[20],
         "element":Element.EARTH,
         "elementDegree":100,
         "buffEffect":Stats.ACCURACY,
         "buffChance":[100],
         "buffDegree":[-10],
         "statusEffect":Status.HEAVY,
         "statusChance":[100],
         "statusDegree":[2]
      });
      
      public static var tentacles:Spell = new Spell({
         "SID":"tentacles",
         "MC":"Tentacles",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[70],
         "element":Element.NONE,
         "buffEffect":Stats.EVADE,
         "buffChance":[100],
         "buffDegree":[-50],
         "statusEffect":Status.POISON,
         "statusChance":[100],
         "statusDegree":[3]
      });
      
      public static var recycle:Spell = new Spell({
         "name":"Recycle",
         "MC":"Recycle",
         "type":Stats.NONE,
         "target":Target.ONE_ANY,
         "element":Element.NONE,
         "buffEffect":Stats.EVADE
      });
      
      public static var snowblast:Spell = new Spell({
         "SID":"snowblast",
         "MC":"SnowBlast",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.CENTER_ENEMY,
         "damage":[80],
         "element":Element.ICE,
         "elementDegree":100,
         "statusEffect":Status.FREEZE,
         "statusChance":[100],
         "statusDegree":[5]
      });
      
      public static var slowdown:Spell = new Spell({
         "SID":"slowdown",
         "MC":"SlowDown",
         "type":Stats.NONE,
         "target":Target.ONE_ENEMY,
         "statusEffect":Status.STUN,
         "statusChance":[100],
         "statusDegree":[1],
         "statusOnly":true
      });
      
      public static var speedup:Spell = new Spell({
         "SID":"speedup",
         "MC":"SpeedUp",
         "type":Stats.NONE,
         "target":Target.ONE_ALLY,
         "statusEffect":Status.HASTE,
         "statusOnly":true
      });
      
      public static var rootspike:Spell = new Spell({
         "SID":"poisonroot",
         "MC":"RootSpike",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[85],
         "element":Element.BIO,
         "elementDegree":50,
         "statusEffect":Status.POISON,
         "statusChance":[50],
         "statusDegree":[3]
      });
      
      public static var rootspike2:Spell = new Spell({
         "SID":"searoot",
         "MC":"RootSpike2",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[75],
         "element":Element.WATER,
         "elementDegree":50,
         "statusEffect":Status.WET,
         "statusChance":[50],
         "statusDegree":[2]
      });
      
      public static var rootspike3:Spell = new Spell({
         "SID":"burningroot",
         "MC":"RootSpike3",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[80],
         "element":Element.FIRE,
         "elementDegree":50,
         "statusEffect":Status.DRY,
         "statusChance":[50],
         "statusDegree":[2]
      });
      
      public static var rootspike4:Spell = new Spell({
         "name":"Alien Root",
         "MC":"RootSpike4",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[80],
         "element":Element.BIO,
         "elementDegree":50,
         "statusEffect":Status.VIRUS,
         "statusChance":[50],
         "statusDegree":[3]
      });
      
      public static var smallfireball:Spell = new Spell({
         "name":"",
         "MC":"SmallFireball",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[80],
         "element":Element.FIRE,
         "elementDegree":50,
         "statusEffect":Status.SCORCHED,
         "statusChance":[100],
         "statusDegree":[2]
      });
      
      public static var smallholyball:Spell = new Spell({
         "name":"",
         "MC":"SmallHolyball",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[120],
         "element":Element.HOLY,
         "elementDegree":50,
         "statusEffect":Status.WEAKEN,
         "statusChance":[100],
         "statusDegree":[3]
      });
      
      public static var blast:Spell = new Spell({
         "SID":"bombblast",
         "MC":"Blast",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60],
         "element":Element.BOMB,
         "elementDegree":100,
         "statusEffect":Status.STAGGER,
         "statusChance":[50],
         "statusDegree":[1,1,1,1]
      });
      
      public static var bigblast:Spell = new Spell({
         "SID":"bigblast",
         "MC":"BigBlast",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[50],
         "element":Element.BOMB,
         "elementDegree":100,
         "statusEffect":Status.STAGGER,
         "statusChance":[50],
         "statusDegree":[1,1,1,1]
      });
      
      public static var doomsday:Spell = new Spell({
         "name":"Doomsday",
         "MC":"Doomsday",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[150],
         "element":Element.DARK,
         "elementDegree":75,
         "accuracy":300,
         "statusEffect":Status.SCORCHED,
         "statusChance":[100],
         "statusDegree":[5]
      });
      
      public static var spark:Spell = new Spell({
         "SID":"spark",
         "MC":"Spark",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50],
         "element":Element.THUNDER
      });
      
      public static var bigspark:Spell = new Spell({
         "SID":"bigspark",
         "MC":"BigSpark",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[100],
         "element":Element.THUNDER
      });
      
      public static var talisman:Spell = new Spell({
         "SID":"talisman",
         "MC":"Talisman",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[20],
         "element":Element.HOLY,
         "elementDegree":50,
         "accuracy":80,
         "statusEffect":Status.CURSE,
         "statusChance":[100],
         "statusDegree":[3],
         "buffEffect":Stats.MAGIC_ATTACK,
         "buffChance":[100],
         "buffDegree":[-50]
      });
      
      public static var attackup:Spell = new Spell({
         "name":"Attack Up",
         "MC":"Temper",
         "type":Stats.NONE,
         "target":Target.ONE_ALLY,
         "buffDegree":[50],
         "buffEffect":"temper",
         "buffChance":[0],
         "statusOnly":true
      });
      
      public static var settarget:Spell = new Spell({
         "name":"",
         "MC":"SetTarget",
         "type":Stats.NONE,
         "target":Target.ONE_ENEMY,
         "statusEffect":Status.TARGET,
         "statusChance":[200],
         "statusDegree":[6],
         "statusOnly":true,
         "accuracy":999
      });
      
      public static var electrongun:Spell = new Spell({
         "SID":"electrongun",
         "MC":"ElectronGun",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50],
         "element":Element.THUNDER,
         "elementDegree":25,
         "statusEffect":Status.CONFUSE,
         "statusChance":[100],
         "statusDegree":[2]
      });
      
      public static var ember:Spell = new Spell({
         "SID":"ember",
         "MC":"Ember",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30],
         "element":Element.FIRE,
         "elementDegree":100,
         "statusEffect":Status.BURN,
         "statusChance":[30],
         "statusDegree":[1]
      });
      
      public static var fireblast:Spell = new Spell({
         "SID":"fireblast2",
         "MC":"FireBlast",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.CENTER_ENEMY,
         "damage":[38],
         "element":Element.FIRE,
         "elementDegree":100,
         "statusEffect":Status.BURN,
         "statusChance":[50],
         "statusDegree":[1]
      });
      
      public static var firecrystals:Spell = new Spell({
         "SID":"firecrystals",
         "MC":"FireCrystals",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[70],
         "element":Element.FIRE,
         "elementDegree":50,
         "statusEffect":Status.BURN,
         "statusChance":[50],
         "statusDegree":[3],
         "buffEffect":Stats.DEFENCE,
         "buffChance":[100],
         "buffDegree":[-25]
      });
      
      public static var lasercrystals:Spell = new Spell({
         "SID":"zephyrcrystals",
         "MC":"LaserCrystals",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[70],
         "element":Element.WIND,
         "elementDegree":50,
         "statusEffect":Status.DISABLE,
         "statusChance":[90],
         "statusDegree":[1],
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[100],
         "buffDegree":[-25]
      });
      
      public static var frost:Spell = new Spell({
         "SID":"frost",
         "MC":"Frost",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[25],
         "element":Element.ICE,
         "elementDegree":100,
         "statusEffect":Status.CHILL,
         "statusChance":[100],
         "statusDegree":[2]
      });
      
      public static var rockfall:Spell = new Spell({
         "SID":"rockslide",
         "MC":"RockFall",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60],
         "randomness":60,
         "element":Element.EARTH,
         "elementDegree":100,
         "statusEffect":Status.HEAVY,
         "statusChance":[50],
         "statusDegree":[2],
         "accuracy":80
      });
      
      public static var icefall:Spell = new Spell({
         "SID":"avalanche",
         "MC":"IceFall",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60],
         "randomness":60,
         "element":Element.ICE,
         "elementDegree":100,
         "statusEffect":Status.WEAKEN,
         "statusChance":[33],
         "statusDegree":[3],
         "accuracy":80
      });
      
      public static var bubbleblast:Spell = new Spell({
         "name":"Bubble Blast",
         "MC":"BubbleBlast",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[30],
         "element":Element.WATER,
         "statusEffect":Status.WET,
         "statusChance":[100],
         "statusDegree":[2],
         "buffEffect":Stats.EVADE,
         "buffChance":[100],
         "buffDegree":[-15]
      });
      
      public static var blackspikes:Spell = new Spell({
         "SID":"blackspikes",
         "MC":"BlackSpikes",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[80],
         "element":Element.DARK,
         "elementDegree":50
      });
      
      public static var stonefist:Spell = new Spell({
         "SID":"stonefist",
         "MC":"StoneFist",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[40],
         "element":Element.EARTH,
         "elementDegree":75,
         "statusEffect":Status.STAGGER,
         "statusChance":[20],
         "statusDegree":[1]
      });
      
      public static var darkswoop:Spell = new Spell({
         "name":"",
         "MC":"DarkSwoop",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[40],
         "element":Element.DARK,
         "elementDegree":100,
         "statusEffect":Status.DOOM,
         "statusChance":[50],
         "statusDegree":[6]
      });
      
      public static var ritual:Spell = new Spell({
         "SID":"ritual",
         "MC":"Ritual",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[95],
         "element":Element.DARK,
         "elementDegree":100,
         "statusEffect":Status.CURSE,
         "statusChance":[100],
         "statusDegree":[6],
         "buffEffect":Stats.HP,
         "buffChance":[100],
         "buffDegree":[-25]
      });
      
      public static var sharpen:Spell = new Spell({
         "name":"Sharpen",
         "MC":"Sharpen",
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "buffDegree":[30],
         "statusOnly":true
      });
      
      public static var fishmissile:Spell = new Spell({
         "name":"",
         "MC":"FishMissile",
         "type":Stats.NONE,
         "target":Target.ONE_ENEMY,
         "element":Element.NONE
      });
      
      public static var spiderweb:Spell = new Spell({
         "SID":"spiderweb",
         "MC":"SpiderWeb",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[10],
         "element":Element.NONE,
         "statusEffect":Status.BAD_LUCK,
         "statusChance":[100],
         "statusDegree":[3],
         "buffEffect":Stats.EVADE,
         "buffChance":[100],
         "buffDegree":[-50],
         "accuracy":150
      });
      
      public static var spiderweb2:Spell = new Spell({
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "damage":[0],
         "element":Element.NONE,
         "statusEffect":Status.BAD_LUCK,
         "statusChance":[100],
         "statusDegree":[3],
         "buffEffect":Stats.EVADE,
         "buffChance":[100],
         "buffDegree":[-30],
         "accuracy":200,
         "statusOnly":true
      });
      
      public static var spiders:Spell = new Spell({
         "SID":"spiders",
         "MC":"Spiders",
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "element":Element.NONE,
         "statusEffect":Status.VIRUS,
         "statusChance":[50],
         "statusDegree":[2],
         "statusOnly":true
      });
      
      public static var seeds:Spell = new Spell({
         "name":"",
         "MC":"Seeds",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.RANDOM_ENEMY,
         "damage":[260],
         "element":Element.HOLY,
         "elementDegree":100,
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[100],
         "buffDegree":[-50]
      });
      
      public static var geometry:Spell = new Spell({
         "SID":"geometry",
         "MC":"Geometry",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[70],
         "element":Element.NONE,
         "accuracy":100,
         "randomness":80
      });
      
      public static var geometry2:Spell = new Spell({
         "SID":"geometry2",
         "MC":"Geometry2",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[80],
         "element":Element.DARK,
         "elementDegree":40,
         "statusEffect":Status.INVISIBLE,
         "statusChance":[50],
         "statusDegree":[5],
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[100],
         "buffDegree":[-30]
      });
      
      public static var geometry3:Spell = new Spell({
         "SID":"geometry3",
         "MC":"Geometry3",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[40],
         "element":Element.DARK,
         "elementDegree":50,
         "statusEffect":Status.INVISIBLE,
         "statusChance":[25],
         "statusDegree":[5],
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[100],
         "buffDegree":[-20]
      });
      
      public static var sacrifice:Spell = new Spell({
         "SID":"sacrifice",
         "MC":"Sacrifice",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30],
         "element":Element.DARK,
         "elementDegree":100,
         "buffEffect":Stats.HP,
         "buffChance":[100],
         "buffDegree":[-20],
         "statusEffect":Status.DOOM,
         "statusChance":[50],
         "statusDegree":[3],
         "accuracy":150
      });
      
      public static var razorleaf3:Spell = new Spell({
         "name":"",
         "MC":"RazorLeaf3",
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[75],
         "element":Element.BIO,
         "elementDegree":100
      });
      
      public static var razorfeathers:Spell = new Spell({
         "name":"",
         "MC":"RazorFeathers",
         "critical":10,
         "type":Stats.ATTACK,
         "target":Target.RANDOM_ENEMY,
         "damage":[220],
         "element":Element.WIND,
         "elementDegree":50
      });
      
      public static var bigroot:Spell = new Spell({
         "SID":"bigroot",
         "MC":"BigRoot",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60],
         "element":Element.EARTH,
         "elementDegree":50,
         "statusEffect":Status.POISON,
         "statusChance":[50],
         "statusDegree":[3]
      });
      
      public static var bigroot2:Spell = new Spell({
         "SID":"bigroot",
         "MC":"BigRoot2",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[80],
         "element":Element.EARTH,
         "elementDegree":50,
         "statusEffect":Status.POISON,
         "statusChance":[50],
         "statusDegree":[3]
      });
      
      public static var death:Spell = new Spell({
         "SID":"death",
         "MC":"Death",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[120],
         "element":Element.DARK,
         "elementDegree":100,
         "statusEffect":Status.DEATH,
         "statusChance":[100],
         "statusDegree":[1],
         "accuracy":25
      });
      
      public static var seabomb:Spell = new Spell({
         "SID":"seabomb",
         "MC":"BoulderBomb2",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[130],
         "element":Element.BOMB,
         "elementDegree":100,
         "statusEffect":Status.DISPEL,
         "statusChance":[50],
         "statusDegree":[1],
         "accuracy":100
      });
      
      public static var lasershot:Spell = new Spell({
         "name":"",
         "MC":"LaserShot",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[36],
         "element":Element.THUNDER,
         "elementDegree":50,
         "statusEffect":Status.DISABLE,
         "statusChance":[50],
         "statusDegree":[1],
         "accuracy":100
      });
      
      public static var bubbleball:Spell = new Spell({
         "name":"",
         "MC":"BubbleBall",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[10],
         "element":Element.WATER,
         "elementDegree":100,
         "statusEffect":Status.WET,
         "statusChance":[50],
         "statusDegree":[1],
         "accuracy":100
      });
      
      public static var fairybomb:Spell = new Spell({
         "SID":"fairy",
         "MC":"FairyBomb",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[40],
         "element":Element.HOLY,
         "elementDegree":100,
         "statusEffect":Status.SYPHON,
         "statusChance":[33],
         "statusDegree":[1],
         "accuracy":100
      });
      
      public static var flybomb:Spell = new Spell({
         "SID":"fly",
         "MC":"FlyBomb",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[35],
         "element":Element.BIO,
         "elementDegree":50,
         "statusEffect":Status.VIRUS,
         "statusChance":[10],
         "statusDegree":[2],
         "accuracy":100
      });
      
      public static var flybomb2:Spell = new Spell({
         "name":"",
         "MC":"FlyBomb2",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[45],
         "element":Element.BOMB,
         "elementDegree":100,
         "statusEffect":Status.POISON,
         "statusChance":[33],
         "statusDegree":[2],
         "accuracy":100
      });
      
      public static var plasmaball:Spell = new Spell({
         "name":"",
         "MC":"PlasmaBall",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30],
         "element":Element.THUNDER,
         "elementDegree":100,
         "statusEffect":Status.CONFUSE,
         "statusChance":[10],
         "statusDegree":[1],
         "accuracy":100
      });
      
      public static var starpow:Spell = new Spell({
         "SID":"starpunch",
         "MC":"EffectStar",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[75],
         "element":Element.NONE,
         "statusEffect":Status.STUN,
         "statusChance":[33],
         "statusDegree":[1],
         "accuracy":100
      });
      
      public static var foesnipe:Spell = new Spell({
         "name":"Snipe",
         "MC":"Snipe",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30],
         "element":Element.BOMB,
         "statusEffect":Status.DEATH,
         "statusChance":[0],
         "statusDegree":[1],
         "accuracy":66
      });
      
      public static var evilsnipe:Spell = new Spell({
         "MC":"Snipe",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[180],
         "element":Element.BOMB,
         "elementDegree":30,
         "statusEffect":Status.DEATH,
         "statusChance":[100],
         "statusDegree":[1],
         "accuracy":150
      });
      
      public static var foespectrum:Spell = new Spell({
         "MC":"Spectrum",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60],
         "element":Element.NONE,
         "elementDegree":100
      });
      
      public static var devIce:Spell = new Spell({
         "SID":"",
         "MC":"DevIce",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30],
         "element":Element.ICE,
         "elementDegree":100,
         "statusEffect":Status.FREEZE,
         "statusChance":[33],
         "statusDegree":[3],
         "accuracy":100
      });
      
      public static var devWind:Spell = new Spell({
         "SID":"",
         "MC":"DevWind",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[30],
         "element":Element.WIND,
         "elementDegree":100,
         "statusEffect":Status.CURSE,
         "statusChance":[100],
         "statusDegree":[3],
         "accuracy":150
      });
      
      public static var devTentacle:Spell = new Spell({
         "SID":"",
         "MC":"DevTentacle",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[100],
         "element":Element.EARTH,
         "elementDegree":30,
         "statusEffect":Status.POISON,
         "statusChance":[30],
         "statusDegree":[1],
         "accuracy":100
      });
      
      public static var devHeal:Spell = new Spell({
         "SID":"",
         "MC":"DevHeal",
         "type":Stats.NONE,
         "target":Target.ONE_ALLY
      });
      
      public static var arcadeRoots:Spell = new Spell({
         "SID":"",
         "MC":"GlobRoots",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[65],
         "element":Element.EARTH,
         "elementDegree":25,
         "statusEffect":Status.HEAVY,
         "statusChance":[50],
         "statusDegree":[3],
         "accuracy":85
      });
      
      public static var arcadeVines:Spell = new Spell({
         "SID":"",
         "MC":"BushyVines",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[40],
         "element":Element.BIO,
         "elementDegree":25,
         "statusEffect":Status.TIRED,
         "statusChance":[100],
         "statusDegree":[2],
         "accuracy":125,
         "buffEffect":Stats.EVADE,
         "buffChance":[100],
         "buffDegree":[-20]
      });
      
      public static var arcadeBlast:Spell = new Spell({
         "SID":"",
         "MC":"RobboExplosion",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[120],
         "element":Element.THUNDER,
         "elementDegree":25,
         "statusEffect":Status.CONFUSE,
         "statusChance":[200],
         "statusDegree":[3],
         "accuracy":200,
         "buffEffect":Stats.DEFENCE,
         "buffChance":[100],
         "buffDegree":[-20]
      });
      
      public static var arcadeLogs:Spell = new Spell({
         "SID":"",
         "MC":"TotomWood",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[125],
         "element":Element.EARTH,
         "elementDegree":25,
         "statusEffect":Status.STAGGER,
         "statusChance":[150],
         "statusDegree":[1],
         "accuracy":85
      });
      
      public static var arcadeNettle:Spell = new Spell({
         "SID":"arcadeNettle",
         "MC":"TotomVines",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[115],
         "element":Element.BIO,
         "elementDegree":25,
         "statusEffect":Status.STUN,
         "statusChance":[150],
         "statusDegree":[1],
         "accuracy":150,
         "buffEffect":Stats.EVADE,
         "buffChance":[100],
         "buffDegree":[-80]
      });
      
      public static var arcadePoison:Spell = new Spell({
         "SID":"arcadePoison",
         "MC":"MermaidPoison",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[90],
         "element":Element.BIO,
         "elementDegree":25,
         "statusEffect":Status.POISON,
         "statusChance":[150],
         "statusDegree":[5],
         "accuracy":100,
         "buffEffect":Stats.HP,
         "buffChance":[100],
         "buffDegree":[-20]
      });
      
      public static var arcadeFlood:Spell = new Spell({
         "SID":"arcadeFlood",
         "MC":"MermaidWater",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[105],
         "element":Element.WATER,
         "elementDegree":25,
         "statusEffect":Status.DISPEL,
         "statusChance":[100],
         "statusDegree":[1],
         "accuracy":100,
         "buffEffect":Stats.ATTACK,
         "buffChance":[100],
         "buffDegree":[-20]
      });
      
      public static var arcadeStool:Spell = new Spell({
         "SID":"",
         "MC":"ChairStool",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[45],
         "element":Element.BOMB,
         "elementDegree":25,
         "statusEffect":Status.STAGGER,
         "statusChance":[100],
         "statusDegree":[1],
         "accuracy":100,
         "buffEffect":Stats.DEFENCE,
         "buffChance":[100],
         "buffDegree":[-20]
      });
      
      public static var arcadeTeeth:Spell = new Spell({
         "SID":"arcadeTeeth",
         "MC":"TeethTeeth",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[70],
         "element":Element.NONE,
         "statusEffect":Status.DOOM,
         "statusChance":[100],
         "statusDegree":[3],
         "accuracy":100
      });
      
      public static var arcadeTentacles1:Spell = new Spell({
         "SID":"",
         "MC":"TeethTentacles",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY
      });
      
      public static var arcadeTentacles2:Spell = new Spell({
         "SID":"",
         "MC":"TeethTentacles2",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY
      });
      
      public static var arcadeTentacles3:Spell = new Spell({
         "SID":"",
         "MC":"TeethTentacles3",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY
      });
      
      public static var arcadeHeal:Spell = new Spell({"MC":"TotomHeal"});
      
      public static var arcadeHands:Spell = new Spell({"MC":"SlimeHand"});
      
      public static var arcadeDarkBall:Spell = new Spell({"MC":"BlackBall"});
      
      public static var arcadeSwords:Spell = new Spell({"MC":"SlimeSwords"});
      
      public static var arcadeSlash:Spell = new Spell({"MC":"SlimeSlash"});
      
      public static var arcadeFish:Spell = new Spell({
         "SID":"",
         "MC":"MermaidFish",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[120 / 4],
         "element":Element.ICE,
         "elementDegree":25,
         "statusEffect":Status.DISABLE,
         "statusChance":[100],
         "statusDegree":[5],
         "accuracy":100
      });
      
      public static var paperSword:Spell = new Spell({
         "SID":"paperSword",
         "MC":"PaperSword",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60],
         "accuracy":85
      });
      
      public static var paperStars:Spell = new Spell({
         "SID":"paperStars",
         "MC":"PaperStars",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[80],
         "accuracy":150,
         "statusEffect":Status.DISPEL,
         "statusChance":[100],
         "statusDegree":[1]
      });
      
      public static var bonePillar:Spell = new Spell({
         "SID":"bonePillar",
         "MC":"BonePillar",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[85],
         "accuracy":150,
         "statusEffect":Status.WEAKEN,
         "statusChance":[50],
         "statusDegree":[3],
         "critical":30
      });
      
      public static var sketchSpear:Spell = new Spell({
         "SID":"",
         "MC":"SketchSpear",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60]
      });
      
      public static var sketchSpears:Spell = new Spell({
         "SID":"",
         "MC":"SketchSpears",
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[80],
         "accuracy":200
      });
      
      public static var sketchBones:Spell = new Spell({
         "SID":"",
         "MC":"SketchBones",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[100],
         "accuracy":80,
         "statusEffect":Status.DOOM,
         "statusChance":[50],
         "statusDegree":[5]
      });
      
      public static var sketchSkull:Spell = new Spell({
         "SID":"",
         "MC":"SketchSkull",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[75],
         "accuracy":125,
         "element":Element.DARK,
         "elementDegree":50,
         "statusEffect":Status.SHROUD,
         "statusChance":[100],
         "statusDegree":[1]
      });
      
      public static var sketchRock:Spell = new Spell({
         "SID":"",
         "MC":"SketchRock",
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[100],
         "element":Element.EARTH,
         "elementDegree":50,
         "statusEffect":Status.TIRED,
         "statusChance":[50],
         "statusDegree":[2]
      });
      
      public static var pencilStab:Spell = new Spell({
         "SID":"",
         "MC":"PencilStab",
         "type":Stats.ATTACK,
         "target":Target.CENTER_ENEMY,
         "damage":[160],
         "statusEffect":Status.STAGGER,
         "statusChance":[33],
         "statusDegree":[1],
         "accuracy":125
      });
      
      public static var FOE_SPELLS:Array = [bones,bonestar,groundblade,luckystar2,firerock,stalactite,stalactite2,fume,eruption,scald,rain,sandstorm,hail,nitro,acid,acid2,bamboo,bamboo2,bluebolt,bubblering,deepfreeze,wafer,present,cactus,cacti,plasmacage,tankcannon,candycane,candycane2,pixelfish,pixelriceball,sand,sanddune,mushroom,lifedrain,puff,puff2,slimify,ink,chocolate,tentacles,slowdown,speedup,rootspike,rootspike2,rootspike3,blast,bigblast,spark,bigspark,talisman,electrongun,ember,fireblast,firecrystals,lasercrystals,frost,rockfall,icefall,blackspikes,stonefist,spiderweb,spiders,geometry,geometry2,geometry3,sacrifice,bigroot,bigroot2,death,seabomb,fairybomb,flybomb,starpow,darken,lighten,bonePillar,arcadeTeeth,highgravity,lowgravity,hellfire,pixelfork,pixelswords,arcadeNettle,arcadePoison,snow,earthquake,blossom,paperStars,ritual,iceneedle];
      
      public static var BONUS_SKILLS:Array = [laserblade,lasersword,bullet,bigbullet,energy,energybomb,energybarrage,bubbles,whirlpool,vortex,ivy,vines,snowbunny,snowcat,partytime,powermetal,air,airwave,shockwave,sawblade,sawblades,gaiaglow,gaiabloom,gaiablossom,firespin,holyfire,screamer,heal,healmore,revive,purify,protect,barrier,debilitate,enfeeble,dispel,bind,flare,teradrill,lockon,annihilate,ion,supernova,abzero,tsunami,blackhole,rapture,deathmetal,firecrackers,acidP,acid2P,sandP,sandduneP,retroswordsAll,deathP,electrongunP,musicalblastP,geometryP,fairybombP,bubbleringP,sharpenP,artattack,sevenswords];
      
      public static var BASE_BONUS_SKILLS:Array = [ivy,acidP,gale,laserblade,sandP,bullet,holyfire,teradrill,electrongunP,bubbleringP,gaiaglow,bubbles,air,energy,sawblade,snowbunny,firespin,fairybombP,retroswordsAll,geometryP,partytime,powermetal,screamer,deathP,lockon,guardian,protect,barrier,reflex,debilitate,enfeeble,dispel,sharpenP,bind,flare,heal,revive,purify,musicalblastP,firecrackers];
      
      public static var BONUS_LIMITS:Array = [annihilate,ion,supernova,abzero,tsunami,blackhole,sevenswords,deathmetal,rapture,artattack];
      
      public static var PREMIUM_SKILLS:Array = [];
      
      public static var PREMIUM_SUMMONS:Array = [];
      
      public static var summons:Array = [];
      
      public static var ALL_SPELLS:Array = [laserblade,lasersword,bullet,bigbullet,energy,energybomb,energybarrage,bubbles,whirlpool,vortex,ivy,vines,snowbunny,snowcat,partytime,powermetal,air,airwave,shockwave,sawblade,sawblades,gaiaglow,gaiabloom,gaiablossom,firespin,holyfire,screamer,heal,healmore,revive,purify,protect,barrier,debilitate,enfeeble,slash,dispel,bind,flare,teradrill,lockon,syphon,syphon2,annihilate,ion,supernova,abzero,tsunami,blackhole,rapture,deathmetal,arrowcut,piercingshot,arrowrain,comboshot,bowwhack,razorleaf,razorleaf2,aquaarrow,sparkarrow,nitroarrow,frostarrow,soularrow,soularrow2,aquaarrow2,nitroarrow2,sparkarrow2,frostarrow2,gust,whirlwind,hurricane,log,lumber,renew,remedy,reflex,mightyoak,motherearth,slash,quickslash,earthedge,quakespikes,cataclysmiccut,firespire,lavalance,frostfragment,glacialglaive,nettleknife,shreddingshrub,lightblade,holysword,legend,unleash,revenge,gale,tempest,stealitem,slicingcyclone,geysergush,pouringpike,surgingskewer,guardian,temper,cleaver,ragnarok,staffstrike,luckystar,starshower,starpower,fire,fireball,firestorm,ice,iceshard,icestorm,thunder,thunderbolt,thunderstorm,toxic,shine,judgement,pulse,pulsar,cleanse,spectrum,spectrum2,kyun,genesis,pistolwhip,snipe,doubleshot,unloadd,crush,airstrike1,airstrike2,airstrike3,plasma,plasmawave,plasmacross,flameshot,flameburst,bullethell,darkblast,gravitysurge,antimatter,poisongas,tankgun,hyperbeam,medipack,medipack2,nuke,oblivion,backstab,rapidslash,rapidslash2,starblast,ninelives,swiftslash,darkslash,darkslash2,holyslash,holyslash2,lightningslash,lightningslash2,waterslash,waterslash2,windslash,windslash2,sworddance,sworddance2,sworddance3,charm,charm2,berserk,berserk2,sushicat,sushicat2,thecreator,thedestroyer,firecrackers,acidP,acid2P,sandP,sandduneP,retroswordsAll,deathP,electrongunP,musicalblastP,geometryP,fairybombP,bubbleringP,sharpenP,artattack,sevenswords];
      
      public static var UNOWNED_SPELLS:Array = [];
      
      public function Spells()
      {
         super();
      }
      
      public static function HITS(param1:int, param2:int = 0) : String
      {
         return "";
      }
      
      public static function SIMPLE(param1:int, param2:String, param3:int, param4:int = 0) : String
      {
         var _loc5_:String = "";
         var _loc6_:Array = [];
         return ["Basic","Advanced","Expert"][param1] + " " + Element.getString(param2).toLowerCase() + " " + ["attack","magic"][param3] + ". ";
      }
      
      public static function FULL_SIMPLE(param1:int, param2:String, param3:int = 0, param4:String = "", param5:String = "", param6:int = -1) : String
      {
         var _loc7_:String = "";
         _loc7_ = "" + SIMPLE(param1,param2,param3);
         if(param4)
         {
            _loc7_ += param4;
         }
         if(param5)
         {
            _loc7_ += param5;
         }
         if(param6 != -1)
         {
            _loc7_ += HITS(param6);
         }
         return _loc7_;
      }
      
      public static function GENERATE(param1:String, param2:Array, param3:int = -1) : String
      {
         var _loc6_:int = 0;
         var _loc4_:String = "";
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc4_ = "";
            if(param1)
            {
               _loc4_ += LIMIT_BREAK;
            }
            _loc6_ = 0;
            while(_loc6_ < param2.length)
            {
               _loc4_ += param2[_loc6_];
               _loc6_++;
            }
            if(param3 != -1)
            {
               _loc4_ += HITS(param3,_loc5_);
            }
            _loc5_++;
         }
         return _loc4_;
      }
      
      public static function setStandybyText() : *
      {
         if(Battle.standbyPlayers[0])
         {
            SetStrings.getSwapStrings(standby1,Battle.standbyPlayers[0].playerNo);
         }
         if(Battle.standbyPlayers[1])
         {
            SetStrings.getSwapStrings(standby2,Battle.standbyPlayers[1].playerNo);
         }
      }
      
      public static function getBonusSkills(param1:Player) : Array
      {
         var _loc3_:Spell = null;
         var _loc2_:Array = [];
         for each(_loc3_ in BONUS_SKILLS)
         {
            if(Options.learnAllSkills)
            {
               if(_loc3_.animation2[param1.playerNo - 1] != "")
               {
                  _loc2_.push(_loc3_);
               }
            }
            else if(_loc3_.animation[param1.playerNo - 1] != "")
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public static function inUse(param1:Player, param2:Spell) : Boolean
      {
         var _loc3_:Player = null;
         var _loc4_:Spell = null;
         param2 = param2.getBase();
         for each(_loc3_ in [Players.player1,Players.player2,Players.player3,Players.player4,Players.player5])
         {
            for each(_loc4_ in _loc3_.skillsSub)
            {
               if(_loc4_)
               {
                  if(param2 == _loc4_.getBase() && _loc3_ != param1)
                  {
                     return true;
                  }
               }
            }
            for each(_loc4_ in _loc3_.skillsLimit)
            {
               if(_loc4_)
               {
                  if(param2 == _loc4_.getBase() && _loc3_ != param1)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public static function inUseBy(param1:Spell) : int
      {
         var _loc2_:Player = null;
         var _loc3_:Spell = null;
         param1 = param1.getBase();
         for each(_loc2_ in [Players.player1,Players.player2,Players.player3,Players.player4,Players.player5])
         {
            for each(_loc3_ in _loc2_.skillsMain)
            {
               if(_loc3_)
               {
                  if(param1 == _loc3_.getBase())
                  {
                     return _loc2_.playerNo + 1;
                  }
               }
            }
            for each(_loc3_ in _loc2_.skillsLimit)
            {
               if(_loc3_)
               {
                  if(param1 == _loc3_.getBase())
                  {
                     return _loc2_.playerNo + 1;
                  }
               }
            }
         }
         return 8;
      }
      
      public static function hasSpell(param1:Player, param2:Spell, param3:Boolean) : Boolean
      {
         var _loc4_:Spell = null;
         for each(_loc4_ in param1.skillsMain)
         {
            if(param2 == _loc4_ && _loc4_.level > 0)
            {
               return true;
            }
         }
         for each(_loc4_ in param1.skillsSub)
         {
            if(param2 == _loc4_ && _loc4_.level > 0)
            {
               return true;
            }
         }
         for each(_loc4_ in param1.skillsLimit)
         {
            if(param2 == _loc4_ && _loc4_.level > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function countBonusSkills(param1:Player) : int
      {
         var _loc3_:Spell = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.skillsSub)
         {
            if(_loc3_)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public static function canLearnSkill(param1:Player, param2:Spell, param3:Boolean) : Boolean
      {
         var _loc5_:Spell = null;
         var _loc6_:Spell = null;
         var _loc4_:int = 0;
         for each(_loc5_ in param2.dependencies)
         {
            for each(_loc6_ in param1.skillsMain)
            {
               if(_loc5_ == _loc6_ && _loc6_.level > 0)
               {
                  _loc4_++;
                  break;
               }
            }
            if(param3)
            {
               for each(_loc6_ in param1.skillsSub)
               {
                  if(_loc5_ == _loc6_ && _loc6_.level > 0)
                  {
                     _loc4_++;
                     break;
                  }
               }
            }
         }
         if(!param3 && _loc4_ == param2.dependencies.length)
         {
            return true;
         }
         if(param3 && (_loc4_ > 0 || param2.dependencies.length == 0))
         {
            return true;
         }
         return false;
      }
      
      public static function learnBonusSpell(param1:Player, param2:Spell) : *
      {
         if(param2.MP[0] != 0)
         {
            param1.skillsSub[Spells.BONUS_SKILLS.indexOf(param2)] = param2;
         }
         if(param2.MP[0] == 0)
         {
            param1.skillsLimit[Spells.BONUS_SKILLS.indexOf(param2) + 3] = param2;
         }
      }
      
      public static function forgetBonusSpell(param1:Player, param2:Spell) : *
      {
         param1.recentSkills = [];
         if(param2.MP[0] != 0)
         {
            param1.skillsSub[Spells.BONUS_SKILLS.indexOf(param2)] = null;
            param2.reset();
         }
         if(param2.MP[0] == 0)
         {
            param1.skillsLimit[Spells.BONUS_SKILLS.indexOf(param2) + 3] = null;
            param2.reset();
         }
      }
      
      public static function verifySkills() : *
      {
         var _loc1_:Player = null;
         var _loc2_:int = 0;
         if(Options.learnAllSkills)
         {
            return;
         }
         for each(_loc1_ in Players.PLAYERS)
         {
            _loc2_ = 0;
            while(_loc2_ < _loc1_.skillsMain.length)
            {
               if(_loc1_.skillsMain[_loc2_] && _loc1_.skillsMain[_loc2_].animation && _loc1_.skillsMain[_loc2_].animation.length > 1 && _loc1_.skillsMain[_loc2_].animation[_loc1_.playerNo - 1] == "")
               {
                  _loc1_.skillsMain[_loc2_] = null;
               }
               _loc2_++;
            }
            _loc2_ = 0;
            while(_loc2_ < _loc1_.skillsLimit.length)
            {
               if(_loc1_.skillsLimit[_loc2_] && _loc1_.skillsLimit[_loc2_].animation && _loc1_.skillsLimit[_loc2_].animation.length > 1 && _loc1_.skillsLimit[_loc2_].animation[_loc1_.playerNo - 1] == "")
               {
                  _loc1_.skillsLimit[_loc2_] = null;
               }
               _loc2_++;
            }
         }
      }
      
      public static function countSpellInfo() : *
      {
         var _loc1_:Player = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Array = null;
         var _loc5_:Spell = null;
         var _loc6_:int = 0;
         for each(_loc1_ in Players.PLAYERS)
         {
            _loc2_ = 0;
            _loc3_ = 0;
            if(_loc1_.playerNo == 1)
            {
               _loc4_ = ALL_MATT_SPELLS;
            }
            if(_loc1_.playerNo == 2)
            {
               _loc4_ = ALL_NATALIE_SPELLS;
            }
            if(_loc1_.playerNo == 3)
            {
               _loc4_ = ALL_LANCE_SPELLS;
            }
            if(_loc1_.playerNo == 4)
            {
               _loc4_ = ALL_ANNA_SPELLS;
            }
            if(_loc1_.playerNo == 5)
            {
               _loc4_ = ALL_NOLEGS_SPELLS;
            }
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = 0;
               while(_loc6_ < _loc5_.AP.length)
               {
                  _loc2_ += _loc5_.AP[_loc6_];
                  _loc3_++;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function init() : *
      {
         var _loc1_:Spell = null;
         var _loc2_:Array = null;
         var _loc3_:Spell = null;
         var _loc4_:int = 0;
         for each(_loc1_ in ALL_SPELLS)
         {
            if(Debug.skillSet == 0)
            {
               _loc1_.level = 0;
            }
            if(Debug.allSpells)
            {
               _loc1_.level = 1;
            }
            if(Debug.skillSet == 1)
            {
               _loc4_ = 0;
               while(_loc4_ < _loc1_.AP.length)
               {
                  if(_loc1_.AP[_loc4_] <= 50)
                  {
                     _loc1_.level = _loc4_ + 1;
                  }
                  _loc4_++;
               }
            }
            if(Debug.skillSet == 2)
            {
               _loc4_ = 0;
               while(_loc4_ < _loc1_.AP.length)
               {
                  if(_loc1_.AP[_loc4_] <= 500)
                  {
                     _loc1_.level = _loc4_ + 1;
                  }
                  _loc4_++;
               }
            }
            if(Debug.skillSet == 3)
            {
               _loc1_.level = _loc1_.AP.length;
            }
            _loc1_.cooldown = 0;
         }
         _loc2_ = [0,0,0,0,0];
         for each(_loc1_ in BONUS_SKILLS)
         {
            _loc4_ = 0;
            while(_loc4_ < 4)
            {
               if(_loc1_.animation[_loc4_] != "")
               {
                  ++_loc2_[_loc4_];
               }
               _loc4_++;
            }
            ++_loc2_[4];
            if(Debug.allSpells)
            {
               _loc1_.level = 1;
               _loc1_.owned = true;
            }
         }
         lightblade.upgradesInto = holysword;
         earthedge.upgradesInto = quakespikes;
         quakespikes.upgradesInto = cataclysmiccut;
         geysergush.upgradesInto = pouringpike;
         pouringpike.upgradesInto = surgingskewer;
         firespire.upgradesInto = lavalance;
         frostfragment.upgradesInto = glacialglaive;
         nettleknife.upgradesInto = shreddingshrub;
         luckystar.upgradesInto = starshower;
         fire.upgradesInto = fireball;
         fireball.upgradesInto = firestorm;
         fairybomb.upgradesInto = firestorm;
         ice.upgradesInto = iceshard;
         iceshard.upgradesInto = icestorm;
         thunder.upgradesInto = thunderbolt;
         thunderbolt.upgradesInto = thunderstorm;
         spectrum.upgradesInto = spectrum2;
         syphon.upgradesInto = syphon2;
         plasma.upgradesInto = plasmawave;
         plasmawave.upgradesInto = plasmacross;
         flameshot.upgradesInto = flameburst;
         flameburst.upgradesInto = bullethell;
         darkblast.upgradesInto = gravitysurge;
         gravitysurge.upgradesInto = antimatter;
         airstrike1.upgradesInto = airstrike2;
         medipack.upgradesInto = medipack2;
         razorleaf.upgradesInto = razorleaf2;
         log.upgradesInto = lumber;
         gust.upgradesInto = whirlwind;
         whirlwind.upgradesInto = hurricane;
         sparkarrow.upgradesInto = sparkarrow2;
         aquaarrow.upgradesInto = aquaarrow2;
         nitroarrow.upgradesInto = nitroarrow2;
         frostarrow.upgradesInto = frostarrow2;
         soularrow.upgradesInto = soularrow2;
         renew.upgradesInto = remedy;
         sworddance.upgradesInto = sworddance2;
         sworddance2.upgradesInto = sworddance3;
         rapidslash.upgradesInto = rapidslash2;
         windslash.upgradesInto = windslash2;
         waterslash.upgradesInto = waterslash2;
         lightningslash.upgradesInto = lightningslash2;
         holyslash.upgradesInto = holyslash2;
         darkslash.upgradesInto = darkslash2;
         charm.upgradesInto = charm2;
         berserk.upgradesInto = berserk2;
         sushicat.upgradesInto = sushicat2;
         ivy.upgradesInto = vines;
         gale.upgradesInto = tempest;
         laserblade.upgradesInto = lasersword;
         bullet.upgradesInto = bigbullet;
         gaiaglow.upgradesInto = gaiabloom;
         gaiabloom.upgradesInto = gaiablossom;
         bubbles.upgradesInto = whirlpool;
         whirlpool.upgradesInto = vortex;
         air.upgradesInto = airwave;
         airwave.upgradesInto = shockwave;
         energy.upgradesInto = energybomb;
         energybomb.upgradesInto = energybarrage;
         sawblade.upgradesInto = sawblades;
         snowbunny.upgradesInto = snowcat;
         heal.upgradesInto = healmore;
         retroswordsSingle.upgradesInto = retroswordsAll;
         acidP.upgradesInto = acid2P;
         sandP.upgradesInto = sandduneP;
         slash.level = 1;
         temper.level = 1;
         stealitem.level = 1;
         earthedge.level = 1;
         geysergush.level = 1;
         cleaver.level = 1;
         staffstrike.level = 1;
         luckystar.level = 1;
         fire.level = 2;
         ice.level = 2;
         thunder.level = 2;
         kyun.level = 1;
         pistolwhip.level = 1;
         doubleshot.level = 1;
         snipe.level = 1;
         flameshot.level = 1;
         plasma.level = 1;
         darkblast.level = 1;
         medipack.level = 1;
         oblivion.level = 1;
         motherearth.level = 1;
         backstab.level = 1;
         rapidslash.level = 1;
         sworddance.level = 1;
         charm.level = 1;
         thedestroyer.level = 1;
         for each(_loc3_ in BASE_BONUS_SKILLS.concat(BONUS_LIMITS))
         {
            _loc3_.level = 1;
            if(!Debug.allSpells)
            {
               _loc3_.owned = false;
            }
         }
         for each(_loc3_ in ALL_SPELLS)
         {
            if(_loc3_.upgradesInto)
            {
               _loc3_.upgradesInto.upgradesFrom = _loc3_;
            }
         }
         protect.owned = true;
      }
   }
}

