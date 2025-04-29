package
{
   import flash.utils.*;
   import foes.*;
   
   public class Summons
   {
      public static var currentSummon:Summon;
      
      public static var effectMC:TargetMC;
      
      public static var sortMethod:String = SORT_BY_SP;
      
      public static var info:Object = {};
      
      public static var PARTY_SUMMONS:Array = [];
      
      public static var OWNED_SUMMONS:Array = [];
      
      public static var ALL_SUMMONS:Array = [];
      
      public static var DEFAULT_ANIMATIONS:Array = ["magic4","magic3","magic1","magic1","magic1"];
      
      public static var initialized:Boolean = false;
      
      public static var SlimeChocolate:Summon = new Summon({
         "foe":"SlimeChocolate",
         "SP":5,
         "animations":["intro2","special2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(SlimeChocolate);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[20],
         "element":Element.EARTH,
         "elementDegree":100,
         "buffEffect":Stats.ACCURACY,
         "buffChance":[100],
         "buffDegree":[-50],
         "accuracy":100
      });
      
      public static var SlimeIcecream:Summon = new Summon({
         "foe":"SlimeIcecream",
         "SP":8,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Frost");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(SlimeIcecream);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[25],
         "element":Element.ICE,
         "elementDegree":100,
         "statusEffect":Status.CHILL,
         "statusChance":[100],
         "statusDegree":[3]
      });
      
      public static var SlimeSand:Summon = new Summon({
         "foe":"SlimeSand",
         "SP":11,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Cactus");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(SlimeSand);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[45],
         "element":Element.BIO,
         "elementDegree":100,
         "statusEffect":Status.STUN,
         "statusChance":[25],
         "statusDegree":[1]
      });
      
      public static var SlimeLava:Summon = new Summon({
         "foe":"SlimeLava",
         "SP":12,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"FireRock");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(SlimeLava);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50],
         "element":Element.FIRE,
         "elementDegree":75,
         "statusEffect":Status.DRY,
         "statusChance":[100],
         "statusDegree":[3]
      });
      
      public static var SlimeMouse:Summon = new Summon({
         "foe":"SlimeMouse",
         "SP":10,
         "animations":["intro2","attack3"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(SlimeMouse);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[5],
         "element":Element.THUNDER,
         "elementDegree":100,
         "statusEffect":Status.STUN,
         "statusChance":[200],
         "statusDegree":[1]
      });
      
      public static var SlimeWater:Summon = new Summon({
         "foe":"SlimeWater",
         "SP":1,
         "animations":["intro2","attack1"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(SlimeWater);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[1],
         "element":Element.WATER,
         "elementDegree":100
      });
      
      public static var SlimeMud:Summon = new Summon({
         "foe":"SlimeMud",
         "SP":9,
         "animations":["intro2","special4","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(SlimeMud);
            _loc1_.damage /= 2;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[45],
         "element":Element.BIO,
         "elementDegree":100
      });
      
      public static var SlimeBunny:Summon = new Summon({
         "foe":"SlimeBunny",
         "SP":36,
         "animations":["intro2","magic3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.REGEN,5);
               }
            }
         },
         "target":Target.ALL_ALLY,
         "statusEffect":Status.REGEN,
         "statusChance":[0],
         "statusDegree":[5],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var SpriteFire:Summon = new Summon({
         "foe":"SpriteFire",
         "SP":23,
         "animations":["intro2","special6","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Weather.tempWeather = Weather.ASH;
            Weather.tempWeatherTime = 5;
            Battle.menu.updateWave();
         },
         "target":Target.ALL,
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var SpriteIce:Summon = new Summon({
         "foe":"SpriteIce",
         "SP":29,
         "animations":["intro2","special8","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Weather.tempWeather = Weather.SNOW;
            Weather.tempWeatherTime = 5;
            Battle.menu.updateWave();
         },
         "target":Target.ALL,
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var SpriteThunder:Summon = new Summon({
         "foe":"SpriteThunder",
         "SP":26,
         "animations":["intro2","special9","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Weather.tempWeather = Weather.ELECTRIC;
            Weather.tempWeatherTime = 5;
            Battle.menu.updateWave();
         },
         "target":Target.ALL,
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var SpriteRock:Summon = new Summon({
         "foe":"SpriteRock",
         "SP":23,
         "animations":["intro2","magic3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Weather.tempWeather = Weather.EARTHQUAKE;
            Weather.tempWeatherTime = 5;
            Battle.menu.updateWave();
         },
         "target":Target.ALL,
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var SpriteWind:Summon = new Summon({
         "foe":"SpriteWind",
         "SP":21,
         "animations":["intro2","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Weather.tempWeather = Weather.WINDY;
            Weather.tempWeatherTime = 5;
            Battle.menu.updateWave();
         },
         "target":Target.ALL,
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var ChomperLeafy:Summon = new Summon({
         "foe":"ChomperLeafy",
         "SP":37,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Weather.tempWeather = Weather.LEAVES;
            Weather.tempWeatherTime = 5;
            Battle.menu.updateWave();
         },
         "target":Target.ALL,
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var ChomperSeaweed:Summon = new Summon({
         "foe":"ChomperSeaweed",
         "SP":34,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Weather.tempWeather = Weather.RAIN;
            Weather.tempWeatherTime = 5;
            Battle.menu.updateWave();
         },
         "target":Target.ALL,
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var ChomperMagma:Summon = new Summon({
         "foe":"ChomperMagma",
         "SP":25,
         "animations":["intro2","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Weather.tempWeather = Weather.SUNNY;
            Weather.tempWeatherTime = 5;
            Battle.menu.updateWave();
         },
         "target":Target.ALL,
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var ChomperMutant:Summon = new Summon({
         "foe":"ChomperMutant",
         "SP":24,
         "animations":["intro2","special2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Weather.tempWeather = Weather.ACID;
            Weather.tempWeatherTime = 5;
            Battle.menu.updateWave();
         },
         "target":Target.ALL,
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var CreepThorny:Summon = new Summon({
         "foe":"CreepThorny",
         "SP":28,
         "animations":["intro2","attack1"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(CreepThorny);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[120],
         "element":Element.EARTH,
         "elementDegree":100,
         "statusEffect":Status.STUN,
         "statusChance":[50],
         "statusDegree":[2]
      });
      
      public static var CreepIcicle:Summon = new Summon({
         "foe":"CreepIcicle",
         "SP":26,
         "animations":["intro2","attack3"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(CreepIcicle);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[140],
         "element":Element.ICE,
         "elementDegree":100,
         "statusEffect":Status.CHILL,
         "statusChance":[50],
         "statusDegree":[2]
      });
      
      public static var CreepHermit:Summon = new Summon({
         "foe":"CreepHermit",
         "SP":27,
         "animations":["intro2","attack2"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(CreepHermit);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[160],
         "element":Element.NONE
      });
      
      public static var CreepGreen:Summon = new Summon({
         "foe":"CreepGreen",
         "SP":55,
         "animations":["intro2","attack5","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(CreepGreen);
            _loc1_.damage /= 3;
            Skills.user.sendHit(_loc1_);
            if(Battle.selectedTarget.dead)
            {
               Battle.selectedTarget = Battle.randomFoe();
            }
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[380],
         "element":Element.NONE
      });
      
      public static var CreepRed:Summon = new Summon({
         "foe":"CreepRed",
         "SP":60,
         "animations":["intro2","attack7","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(CreepRed);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[350],
         "element":Element.WIND,
         "elementDegree":100,
         "statusEffect":Status.STAGGER,
         "statusChance":[100],
         "statusDegree":[1]
      });
      
      public static var CreepBlue:Summon = new Summon({
         "foe":"CreepBlue",
         "SP":68,
         "animations":["intro2","special1"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(CreepBlue);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[400],
         "element":Element.BOMB,
         "elementDegree":100,
         "statusEffect":Status.STUN,
         "statusChance":[100],
         "statusDegree":[1]
      });
      
      public static var Defender1:Summon = new Summon({
         "foe":"Defender1",
         "SP":80,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"ThunderBlast");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(Defender1);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[200],
         "element":Element.THUNDER,
         "elementDegree":100,
         "statusEffect":Status.STAGGER,
         "statusChance":[30],
         "statusDegree":[1],
         "accuracy":150
      });
      
      public static var Defender2:Summon = new Summon({
         "foe":"Defender2",
         "SP":83,
         "animations":["intro2","attack2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(Defender2);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[500],
         "element":Element.WATER,
         "elementDegree":100,
         "statusEffect":Status.WET,
         "statusChance":[50],
         "statusDegree":[2],
         "accuracy":150
      });
      
      public static var DogFriend:Summon = new Summon({
         "foe":"DogFriend",
         "SP":19,
         "animations":["intro2","special5","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players)
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.LOVED,2);
               }
            }
         },
         "target":Target.ALL_ALLY,
         "damage":[0],
         "element":Element.NONE,
         "statusEffect":Status.LOVED,
         "statusChance":[0],
         "statusDegree":[2],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var DogMaxi:Summon = new Summon({
         "foe":"DogMaxi",
         "SP":0,
         "animations":["intro2","special5","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players)
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.LOVED,2);
               }
            }
         },
         "target":Target.ALL_ALLY,
         "damage":[0],
         "element":Element.NONE,
         "statusEffect":Status.LOVED,
         "statusChance":[0],
         "statusDegree":[2],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var DogTanuki:Summon = new Summon({
         "foe":"DogTanuki",
         "SP":25,
         "animations":["intro2","special1"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(DogTanuki);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[145],
         "element":Element.FIRE,
         "elementDegree":100,
         "statusEffect":Status.BURN,
         "statusChance":[100],
         "statusDegree":[3]
      });
      
      public static var DogWolf:Summon = new Summon({
         "foe":"DogWolf",
         "SP":29,
         "animations":["intro2","special2"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(DogWolf);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[120],
         "element":Element.ICE,
         "elementDegree":100,
         "statusEffect":Status.FREEZE,
         "statusChance":[100],
         "statusDegree":[2]
      });
      
      public static var DogZap:Summon = new Summon({
         "foe":"DogZap",
         "SP":35,
         "animations":["intro2","special6"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(DogZap);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[85],
         "element":Element.THUNDER,
         "elementDegree":100,
         "statusEffect":Status.STAGGER,
         "statusChance":[20],
         "statusDegree":[1]
      });
      
      public static var DogMage:Summon = new Summon({
         "foe":"DogMage",
         "SP":54,
         "animations":["intro2","magic4","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Talisman");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(DogMage);
            Skills.user.sendHit(_loc1_);
         },
         "SpMC":"Talisman",
         "multiMC":true,
         "target":Target.ALL_ENEMY,
         "damage":[120],
         "element":Element.HOLY,
         "elementDegree":100,
         "statusEffect":Status.CURSE,
         "statusChance":[200],
         "statusDegree":[3],
         "type":Stats.MAGIC_ATTACK
      });
      
      public static var ChibiKnightUltra:Summon = new Summon({
         "foe":"ChibiKnightUltra",
         "SP":100,
         "animations":["intro2","magic4","attack3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ChibiKnightUltra);
            _loc1_.damage /= 6;
            Skills.user.sendHit(_loc1_);
         },
         "effect2":function():*
         {
            if(Battle.selectedTarget.dead)
            {
               Battle.selectedTarget = Battle.randomFoe();
            }
         },
         "effect3":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  _loc1_.buff(Stats.ATTACK,60);
               }
            }
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[650],
         "element":Element.NONE,
         "accuracy":150,
         "buffEffect":"temper",
         "buffChance":[0],
         "buffDegree":[60]
      });
      
      public static var BushGreen:Summon = new Summon({
         "foe":"BushGreen",
         "SP":17,
         "animations":["intro2","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(BushGreen);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "damage":[0],
         "element":Element.NONE,
         "buffEffect":Stats.ATTACK,
         "buffDegree":[-25],
         "buffChance":[100],
         "statusOnly":true
      });
      
      public static var BushRed:Summon = new Summon({
         "foe":"BushRed",
         "SP":15,
         "animations":["intro2","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(BushRed);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "damage":[0],
         "element":Element.NONE,
         "buffEffect":Stats.DEFENCE,
         "buffDegree":[-25],
         "buffChance":[100],
         "statusOnly":true
      });
      
      public static var BushDark:Summon = new Summon({
         "foe":"BushDark",
         "SP":13,
         "animations":["intro2","special2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(BushDark);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "damage":[0],
         "element":Element.NONE,
         "buffEffect":Stats.EVADE,
         "buffDegree":[-25],
         "buffChance":[100],
         "statusOnly":true
      });
      
      public static var BushMud:Summon = new Summon({
         "foe":"BushMud",
         "SP":16,
         "animations":["intro2","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(BushMud);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "damage":[0],
         "element":Element.NONE,
         "buffEffect":Stats.MAGIC_ATTACK,
         "buffDegree":[-25],
         "buffChance":[100],
         "statusOnly":true
      });
      
      public static var BushSand:Summon = new Summon({
         "foe":"BushSand",
         "SP":14,
         "animations":["intro2","special2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(BushSand);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "damage":[0],
         "element":Element.NONE,
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffDegree":[-25],
         "buffChance":[100],
         "statusOnly":true
      });
      
      public static var GolemTopaz:Summon = new Summon({
         "foe":"GolemTopaz",
         "SP":91,
         "animations":["intro2","magic2","attack2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            effectMC = Battle.randomPlayer().graphic;
            effectMC.makeMagic(EffectThunder);
            var _loc1_:* = new DamageObject(GolemTopaz);
            _loc1_.damage /= 6;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[550],
         "element":Element.THUNDER,
         "elementDegree":100,
         "statusEffect":Status.STUN,
         "statusChance":[25],
         "statusDegree":[2],
         "accuracy":120
      });
      
      public static var GolemPearl:Summon = new Summon({
         "foe":"GolemPearl",
         "SP":68,
         "animations":["intro2","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(GolemPearl);
            Skills.user.sendHit(_loc1_);
            Weather.tempWeather = Weather.HAIL;
            Weather.tempWeatherTime = 5;
            Battle.menu.updateWave();
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[110],
         "element":Element.ICE,
         "elementDegree":100,
         "statusEffect":Status.CHILL,
         "statusChance":[100],
         "statusDegree":[5],
         "accuracy":150
      });
      
      public static var GolemAmethyst:Summon = new Summon({
         "foe":"GolemAmethyst",
         "SP":77,
         "animations":["intro2","attack5"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            effectMC = Battle.randomPlayer().graphic;
            var _loc1_:* = new DamageObject(GolemAmethyst);
            _loc1_.damage *= 0.1;
            Battle.finalHit = false;
            Skills.user.sendHit(_loc1_);
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(GolemAmethyst);
            _loc1_.damage *= 0.4;
            Skills.user.sendHit(_loc1_);
            effectMC.makeMagic(EffectSmash,0,0,true);
         },
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[260],
         "element":Element.NONE,
         "elementDegree":0,
         "statusEffect":Status.STAGGER,
         "statusChance":[20],
         "statusDegree":[1],
         "accuracy":120
      });
      
      public static var FishSteam:Summon = new Summon({
         "foe":"FishSteam",
         "SP":29,
         "animations":["intro2","attack2"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(FishSteam);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[80],
         "element":Element.WIND,
         "elementDegree":100,
         "statusEffect":Status.LIGHT,
         "statusChance":[25],
         "statusDegree":[1]
      });
      
      public static var FishGold:Summon = new Summon({
         "foe":"FishGold",
         "SP":30,
         "animations":["intro2","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(FishGold);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[80],
         "element":Element.HOLY,
         "elementDegree":100,
         "statusEffect":Status.DRY,
         "statusChance":[25],
         "statusDegree":[2]
      });
      
      public static var FishJet:Summon = new Summon({
         "foe":"FishJet",
         "SP":35,
         "animations":["intro2","special5","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            effectMC = Battle.randomPlayer().graphic;
            var _loc1_:* = new DamageObject(FishJet);
            _loc1_.damage /= 4;
            Skills.user.sendHit(_loc1_);
            effectMC.makeMagic(EffectStab2,0,0,true);
         },
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[90],
         "element":Element.BOMB,
         "elementDegree":100
      });
      
      public static var HandSkeleton:Summon = new Summon({
         "foe":"HandSkeleton",
         "SP":24,
         "animations":["intro2","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.GOOD_LUCK,5);
               }
            }
         },
         "target":Target.ALL_ALLY,
         "statusEffect":Status.GOOD_LUCK,
         "statusChance":[0],
         "statusDegree":[5],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var HandZombie:Summon = new Summon({
         "foe":"HandZombie",
         "SP":28,
         "animations":["intro2","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(HandZombie);
            Skills.user.sendHit(_loc1_);
         },
         "target":Target.ALL_ENEMY,
         "statusEffect":Status.DOOM,
         "statusChance":[100],
         "statusDegree":[3],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var HandMagma:Summon = new Summon({
         "foe":"HandMagma",
         "SP":25,
         "animations":["intro2","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players)
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.BERSERK,3);
               }
            }
         },
         "target":Target.ALL_ALLY,
         "statusEffect":Status.BERSERK,
         "statusChance":[0],
         "statusDegree":[3],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var FlybotBlue:Summon = new Summon({
         "foe":"FlybotBlue",
         "SP":21,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Recycle");
         },
         "SpMC":"Recycle",
         "multiMC":true,
         "target":Target.ALL_ALLY,
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var FlybotYellow:Summon = new Summon({
         "foe":"FlybotYellow",
         "SP":27,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Recycle");
         },
         "SpMC":"Recycle",
         "multiMC":true,
         "target":Target.ALL_ENEMY,
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var FlybotRed:Summon = new Summon({
         "foe":"FlybotRed",
         "SP":22,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Recycle");
         },
         "target":Target.ONE_ANY,
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var FallenLost:Summon = new Summon({
         "foe":"FallenLost",
         "SP":54,
         "animations":["intro2","attack6","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(FallenLost);
            _loc1_.damage /= 2;
            Skills.user.sendHit(_loc1_);
         },
         "effect2":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.MORALE,5);
               }
            }
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[250],
         "element":Element.WIND,
         "elementDegree":50,
         "statusEffect":Status.MORALE,
         "statusChance":[0],
         "statusDegree":[5]
      });
      
      public static var FallenCrucified:Summon = new Summon({
         "foe":"FallenCrucified",
         "SP":75,
         "animations":["intro2","magic3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"SwordDance");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(FallenCrucified);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[450],
         "element":Element.HOLY,
         "elementDegree":50,
         "statusEffect":Status.DEATH,
         "statusChance":[30],
         "statusDegree":[1],
         "accuracy":120
      });
      
      public static var FallenDrowned:Summon = new Summon({
         "foe":"FallenDrowned",
         "SP":37,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players)
            {
               _loc1_.dispelBadBuffs();
            }
         },
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "statusEffect":Status.DISPEL,
         "statusChance":[0],
         "statusDegree":[1],
         "statusOnly":true
      });
      
      public static var FallenBurned:Summon = new Summon({
         "foe":"FallenBurned",
         "SP":51,
         "animations":["intro2","special2"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(FallenBurned);
            Skills.user.sendHit(_loc1_);
            Weather.tempWeather = Weather.SANDSTORM;
            Weather.tempWeatherTime = 5;
            Battle.menu.updateWave();
         },
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[60],
         "element":Element.FIRE,
         "elementDegree":100,
         "statusEffect":Status.DRY,
         "statusChance":[100],
         "statusDegree":[2],
         "accuracy":120
      });
      
      public static var FallenBeheaded:Summon = new Summon({
         "foe":"FallenBeheaded",
         "SP":44,
         "animations":["intro2","magic4","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"BlackSpikes");
         },
         "effect2":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.BRAVE,5);
               }
            }
         },
         "effect3":function():*
         {
            var _loc1_:* = new DamageObject(FallenBeheaded);
            _loc1_.damage /= 3;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[210],
         "element":Element.DARK,
         "elementDegree":50,
         "statusEffect":Status.BRAVE,
         "statusChance":[0],
         "statusDegree":[5]
      });
      
      public static var PixelSlime:Summon = new Summon({
         "foe":"PixelSlime",
         "SP":6,
         "animations":["intro2","attack3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(PixelSlime);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[20],
         "element":Element.BIO,
         "elementDegree":100,
         "statusEffect":Status.TIRED,
         "statusChance":[100],
         "statusDegree":[5]
      });
      
      public static var PixelBush:Summon = new Summon({
         "foe":"PixelBush",
         "SP":8,
         "animations":["intro2","attack2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(PixelBush);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[20],
         "element":Element.FIRE,
         "elementDegree":100,
         "statusEffect":Status.DRY,
         "statusChance":[100],
         "statusDegree":[5]
      });
      
      public static var PixelBat:Summon = new Summon({
         "foe":"PixelBat",
         "SP":7,
         "animations":["intro2","attack4","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(PixelBat);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[20],
         "element":Element.DARK,
         "elementDegree":100,
         "statusEffect":Status.BAD_LUCK,
         "statusChance":[100],
         "statusDegree":[5]
      });
      
      public static var PixelIdol:Summon = new Summon({
         "foe":"PixelIdol",
         "SP":9,
         "animations":["intro2","attack5","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(PixelIdol);
            _loc1_.damage /= 3;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[20],
         "element":Element.BOMB,
         "elementDegree":100,
         "statusEffect":Status.WEAKEN,
         "statusChance":[100],
         "statusDegree":[5]
      });
      
      public static var MonolithViking:Summon = new Summon({
         "foe":"MonolithViking",
         "SP":135,
         "animations":["intro2","special5","special4","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            Skills.user = Battle.randomFoe();
            Skills.user.graphic.makeMagic(EffectHaste,0,0,true);
            for each(_loc1_ in Battle.players)
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.HASTE,1);
               }
            }
         },
         "target":Target.ALL_ALLY,
         "statusEffect":Status.HASTE,
         "statusChance":[0],
         "statusDegree":[1],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var MonolithAncient:Summon = new Summon({
         "foe":"MonolithAncient",
         "SP":33,
         "animations":["intro2","special2","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players)
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.DEFEND,1);
               }
            }
         },
         "target":Target.ALL_ALLY,
         "statusEffect":Status.DEFEND,
         "statusChance":[0],
         "statusDegree":[1],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var MonolithCosmic:Summon = new Summon({
         "foe":"MonolithCosmic",
         "SP":111,
         "animations":["intro2","special8","special9","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Doomsday");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(MonolithCosmic);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[300],
         "element":Element.DARK,
         "elementDegree":100,
         "accuracy":200,
         "statusEffect":Status.SCORCHED,
         "statusChance":[100],
         "statusDegree":[2]
      });
      
      public static var IdolGem:Summon = new Summon({
         "foe":"IdolGem",
         "SP":14,
         "animations":["intro3","attack6"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            Skills.user = Battle.randomFoe();
            Skills.user.graphic.makeMagic(EffectWind,0,0,true);
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.LIGHT,5);
               }
            }
         },
         "target":Target.ALL_ALLY,
         "statusEffect":Status.LIGHT,
         "statusChance":[0],
         "statusDegree":[5],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var IdolStone:Summon = new Summon({
         "foe":"IdolStone",
         "SP":14,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            Skills.user = Battle.randomFoe();
            Skills.user.graphic.makeMagic(EffectEarth,0,0,true);
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.DRY,5);
               }
            }
         },
         "target":Target.ALL_ALLY,
         "statusEffect":Status.DRY,
         "statusChance":[0],
         "statusDegree":[5],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var IdolMetal:Summon = new Summon({
         "foe":"IdolMetal",
         "SP":14,
         "animations":["intro4","attack2"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            Skills.user = Battle.randomFoe();
            Skills.user.graphic.makeMagic(EffectWind2,0,0,true);
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.HEAVY,5);
               }
            }
         },
         "target":Target.ALL_ALLY,
         "statusEffect":Status.HEAVY,
         "statusChance":[0],
         "statusDegree":[5],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var IdolWood:Summon = new Summon({
         "foe":"IdolWood",
         "SP":21,
         "animations":["intro2","attack5","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user = Battle.randomFoe();
            Skills.user.graphic.makeMagic(Harden,0,0,true);
         },
         "effect2":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.BLESS,3);
               }
            }
         },
         "target":Target.ALL_ALLY,
         "statusEffect":Status.BLESS,
         "statusChance":[0],
         "statusDegree":[3],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var MirrorWise:Summon = new Summon({
         "foe":"MirrorWise",
         "SP":50,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user = Battle.randomFoe();
            Skills.user.graphic.makeMagic(Harden,0,0,true);
         },
         "effect2":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.BLESS,5);
               }
            }
         },
         "target":Target.ALL_ALLY,
         "statusEffect":Status.BLESS,
         "statusChance":[0],
         "statusDegree":[5],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var MirrorAngel:Summon = new Summon({
         "foe":"MirrorAngel",
         "SP":48,
         "animations":["intro2","magic2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Lighten");
         },
         "effect2":function():*
         {
            Skills.giveStatus(Battle.selectedTarget,Status.ENCHANTED,3);
         },
         "SpMC":"Lighten",
         "multiMC":true,
         "target":Target.ALL_ALLY,
         "statusEffect":Status.ENCHANTED,
         "statusChance":[0],
         "statusDegree":[3],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var MirrorDemon:Summon = new Summon({
         "foe":"MirrorDemon",
         "SP":44,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Darken");
         },
         "effect2":function():*
         {
            Skills.giveStatus(Battle.selectedTarget,Status.INVISIBLE,3);
         },
         "SpMC":"Darken",
         "multiMC":true,
         "target":Target.ALL_ALLY,
         "statusEffect":Status.INVISIBLE,
         "statusChance":[0],
         "statusDegree":[3],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var MirrorHaunted:Summon = new Summon({
         "foe":"MirrorHaunted",
         "SP":47,
         "animations":["intro2","attack3"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(MirrorHaunted);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[280],
         "element":Element.DARK,
         "elementDegree":100,
         "statusEffect":Status.CURSE,
         "statusChance":[100],
         "statusDegree":[3]
      });
      
      public static var MammothWooly:Summon = new Summon({
         "foe":"MammothWooly",
         "SP":103,
         "animations":["intro2","attack3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(MammothWooly);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.CENTER_ENEMY,
         "damage":[530],
         "element":Element.NONE,
         "elementDegree":100,
         "statusEffect":Status.STUN,
         "statusChance":[50],
         "statusDegree":[2],
         "accuracy":150
      });
      
      public static var MammothCamel:Summon = new Summon({
         "foe":"MammothCamel",
         "SP":78,
         "animations":["intro2","magic1","attack2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  _loc1_.buff(Stats.MAGIC_DEFENCE,50);
               }
            }
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(MammothCamel);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[160],
         "element":Element.EARTH,
         "elementDegree":100,
         "statusEffect":Status.STAGGER,
         "statusChance":[10],
         "statusDegree":[1],
         "buffEffect":"barrier",
         "buffChance":[0],
         "buffDegree":[50],
         "accuracy":150
      });
      
      public static var MammothWar:Summon = new Summon({
         "foe":"MammothWar",
         "SP":102,
         "animations":["intro2","magic1","special2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  _loc1_.buff(Stats.DEFENCE,50);
               }
            }
         },
         "effect2":function():*
         {
            Skills.user.castSpell(false,"BigBlast");
         },
         "effect3":function():*
         {
            var _loc1_:* = new DamageObject(MammothWar);
            _loc1_.damage /= 2;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[210],
         "element":Element.BOMB,
         "elementDegree":100,
         "statusEffect":Status.STAGGER,
         "statusChance":[20],
         "statusDegree":[1],
         "buffEffect":"protect",
         "buffChance":[0],
         "buffDegree":[50],
         "accuracy":150
      });
      
      public static var SquidPink:Summon = new Summon({
         "foe":"SquidPink",
         "SP":86,
         "animations":["intro2","special3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Ink");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(SquidPink);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[400],
         "element":Element.DARK,
         "elementDegree":100,
         "statusEffect":Status.INVISIBLE,
         "statusChance":[100],
         "statusDegree":[2],
         "buffEffect":Stats.ACCURACY,
         "buffChance":[100],
         "buffDegree":[-80],
         "accuracy":150
      });
      
      public static var SquidPurple:Summon = new Summon({
         "foe":"SquidPurple",
         "SP":42,
         "animations":["intro2","special2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(SquidPurple);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.NONE,
         "statusOnly":true,
         "target":Target.ALL_ENEMY,
         "damage":[0],
         "element":Element.NONE,
         "statusEffect":Status.DOOM,
         "statusChance":[30],
         "statusDegree":[3],
         "critical":0,
         "buffEffect":Stats.ACCURACY,
         "buffChance":[100],
         "buffDegree":[-50],
         "accuracy":150
      });
      
      public static var SquidLime:Summon = new Summon({
         "foe":"SquidLime",
         "SP":101,
         "animations":["intro2","attack1","attack2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(SquidLime);
            _loc1_.damage /= 2;
            _loc1_.elementDegree = 0;
            _loc1_.element = Element.NONE;
            _loc1_.statusChance = 0;
            Skills.user.sendHit(_loc1_);
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(SquidLime);
            _loc1_.damage /= 2;
            _loc1_.elementDegree = 100;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[170],
         "element":Element.THUNDER,
         "elementDegree":50,
         "statusEffect":Status.STUN,
         "statusChance":[100],
         "statusDegree":[2],
         "accuracy":120
      });
      
      public static var Underlegs:Summon = new Summon({
         "foe":"Underlegs",
         "SP":135,
         "animations":["intro2","magic2","attack3","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(Underlegs);
            _loc1_.statusOnly = true;
            _loc1_.damage = 0;
            _loc1_.critical = 0;
            Skills.user.sendHit(_loc1_);
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(Underlegs);
            _loc1_.statusEffect = Status.NONE;
            _loc1_.damage *= 0.5 / 6;
            Skills.user.sendHit(_loc1_);
         },
         "effect3":function():*
         {
            Skills.user.castSpell(false,"PixelSwords");
         },
         "effect4":function():*
         {
            var _loc1_:* = new DamageObject(Underlegs);
            _loc1_.statusEffect = Status.NONE;
            _loc1_.damage *= 0.5 / 4;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[600],
         "element":Element.NONE,
         "statusEffect":Status.DISPEL,
         "statusChance":[500],
         "statusDegree":[1],
         "accuracy":200
      });
      
      public static var SlimeBigSand:Summon = new Summon({
         "foe":"SlimeBigSand",
         "SP":46,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Cacti");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(SlimeBigSand);
            _loc1_.damage /= 3;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[310],
         "element":Element.BIO,
         "elementDegree":100,
         "statusEffect":Status.STUN,
         "statusChance":[25],
         "statusDegree":[2]
      });
      
      public static var SlimeBigLava:Summon = new Summon({
         "foe":"SlimeBigLava",
         "SP":56,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Eruption");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(SlimeBigLava);
            _loc1_.damage /= 3;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[350],
         "element":Element.FIRE,
         "elementDegree":100,
         "statusEffect":Status.BURN,
         "statusChance":[100],
         "statusDegree":[5]
      });
      
      public static var SlimeBigMud:Summon = new Summon({
         "foe":"SlimeBigMud",
         "SP":40,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Mushroom");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(SlimeBigMud);
            Skills.user.sendHit(_loc1_);
         },
         "SpMC":"Mushroom",
         "multiMC":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[90],
         "element":Element.BIO,
         "elementDegree":100,
         "statusEffect":Status.STUN,
         "statusChance":[30],
         "statusDegree":[2]
      });
      
      public static var SlimeBigIcecream:Summon = new Summon({
         "foe":"SlimeBigIcecream",
         "SP":32,
         "animations":["intro2","magic3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Frost");
         },
         "SpMC":"Frost",
         "multiMC":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[25],
         "element":Element.ICE,
         "elementDegree":100,
         "statusEffect":Status.CHILL,
         "statusChance":[100],
         "statusDegree":[3]
      });
      
      public static var SlimeBigChocolate:Summon = new Summon({
         "foe":"SlimeBigChocolate",
         "SP":35,
         "animations":["intro2","special6","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Chocolate");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(SlimeBigChocolate);
            Skills.user.sendHit(_loc1_);
         },
         "SpMC":"Chocolate",
         "multiMC":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[55],
         "element":Element.EARTH,
         "elementDegree":100,
         "statusEffect":Status.HEAVY,
         "statusChance":[100],
         "statusDegree":[3]
      });
      
      public static var WormPutrid:Summon = new Summon({
         "foe":"WormPutrid",
         "SP":16,
         "animations":["intro2","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"SpiderWeb");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(WormPutrid);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[5],
         "element":Element.NONE,
         "elementDegree":100,
         "buffEffect":Stats.EVADE,
         "buffChance":[100],
         "buffDegree":[-80],
         "accuracy":100
      });
      
      public static var WormScaly:Summon = new Summon({
         "foe":"WormScaly",
         "SP":13,
         "animations":["intro2","defend","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            Skills.user = Battle.randomFoe();
            Skills.user.graphic.makeMagic(EffectWater3,0,0,true);
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.WET,5);
               }
            }
         },
         "target":Target.ALL_ALLY,
         "statusEffect":Status.WET,
         "statusChance":[0],
         "statusDegree":[5],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var WormFuzzy:Summon = new Summon({
         "foe":"WormFuzzy",
         "SP":9,
         "animations":["intro2","attack2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(WormFuzzy);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[15],
         "element":Element.NONE,
         "statusEffect":Status.VIRUS,
         "statusChance":[100],
         "statusDegree":[1]
      });
      
      public static var WormCutie:Summon = new Summon({
         "foe":"WormCutie",
         "SP":8,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            Skills.user = Battle.randomFoe();
            Skills.user.graphic.makeMagic(EffectCircle,0,0,true);
            for each(_loc1_ in Battle.players)
            {
               if(_loc1_)
               {
                  _loc1_.dispelSomeStatus();
               }
            }
         },
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "damage":[0],
         "element":Element.NONE,
         "statusOnly":true
      });
      
      public static var WraithIce:Summon = new Summon({
         "foe":"WraithIce",
         "SP":69,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"IceNeedle");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(WraithIce);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[420],
         "element":Element.ICE,
         "elementDegree":50,
         "statusEffect":Status.DEATH,
         "statusChance":[30],
         "statusDegree":[1],
         "accuracy":120
      });
      
      public static var WraithFire:Summon = new Summon({
         "foe":"WraithFire",
         "SP":66,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"HellFire");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(WraithFire);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[500],
         "element":Element.FIRE,
         "elementDegree":100,
         "statusEffect":Status.BERSERK,
         "statusChance":[100],
         "statusDegree":[3],
         "accuracy":120
      });
      
      public static var WraithSteel:Summon = new Summon({
         "foe":"WraithSteel",
         "SP":49,
         "animations":["intro2","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(WraithSteel);
            _loc1_.damage /= 3;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[270],
         "element":Element.BOMB,
         "elementDegree":100,
         "statusEffect":Status.STAGGER,
         "statusChance":[50],
         "statusDegree":[1],
         "buffEffect":Stats.DEFENCE,
         "buffChance":[100],
         "buffDegree":[-50]
      });
      
      public static var WraithLeaf:Summon = new Summon({
         "foe":"WraithLeaf",
         "SP":43,
         "animations":["intro2","special2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(WraithLeaf);
            _loc1_.damage /= 3;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[250],
         "element":Element.BIO,
         "elementDegree":100,
         "statusEffect":Status.POISON,
         "statusChance":[100],
         "statusDegree":[3],
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[100],
         "buffDegree":[-50]
      });
      
      public static var WraithMaster:Summon = new Summon({
         "foe":"WraithMaster",
         "SP":45,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"BoneStar");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(WraithMaster);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[260],
         "element":Element.DARK,
         "elementDegree":100,
         "statusEffect":Status.SYPHON,
         "statusChance":[300],
         "statusDegree":[5]
      });
      
      public static var Glitch2:Summon = new Summon({
         "foe":"Glitch2",
         "SP":99,
         "animations":["intro2","attack1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(Glitch2);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[555.55],
         "element":Element.RANDOM,
         "elementDegree":555,
         "statusEffect":Status.RANDOM,
         "statusChance":[555],
         "statusDegree":[3],
         "accuracy":300
      });
      
      public static var Glitch1:Summon = new Summon({
         "foe":"Glitch1",
         "SP":177,
         "animations":["intro2","hit2","evade","attack2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(Glitch1);
            Skills.user.sendHit(_loc1_);
            Weather.tempWeather = Weather.GLITCH;
            Weather.tempWeatherTime = 5;
            Battle.menu.updateWave();
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[666.66],
         "element":Element.RANDOM,
         "elementDegree":666,
         "statusEffect":Status.RANDOM,
         "statusChance":[666],
         "statusDegree":[3],
         "accuracy":300
      });
      
      public static var GloopStone:Summon = new Summon({
         "foe":"GloopStone",
         "SP":61,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Darken");
         },
         "effect2":function():*
         {
            Skills.giveStatus(Battle.selectedTarget,Status.INVISIBLE,2);
         },
         "target":Target.ONE_ENEMY,
         "statusEffect":Status.INVISIBLE,
         "statusChance":[100],
         "statusDegree":[2],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var GloopCrystal:Summon = new Summon({
         "foe":"GloopCrystal",
         "SP":70,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Lighten");
         },
         "effect2":function():*
         {
            Skills.giveStatus(Battle.selectedTarget,Status.ENCHANTED,2);
         },
         "target":Target.ONE_ENEMY,
         "statusEffect":Status.ENCHANTED,
         "statusChance":[100],
         "statusDegree":[2],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var GloopAsh:Summon = new Summon({
         "foe":"GloopAsh",
         "SP":18,
         "animations":["intro2","defend","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            Skills.user = Battle.randomFoe();
            Skills.user.graphic.makeMagic(EffectWind2,0,0,true);
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.BRAVE,3);
               }
            }
         },
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "damage":[0],
         "element":Element.NONE,
         "statusEffect":Status.BRAVE,
         "statusChance":[0],
         "statusDegree":[3],
         "statusOnly":true
      });
      
      public static var GloopWood:Summon = new Summon({
         "foe":"GloopWood",
         "SP":24,
         "animations":["intro2","defend","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            Skills.user = Battle.randomFoe();
            Skills.user.graphic.makeMagic(EffectWind,0,0,true);
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.MORALE,3);
               }
            }
         },
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "damage":[0],
         "element":Element.NONE,
         "statusEffect":Status.MORALE,
         "statusChance":[0],
         "statusDegree":[3],
         "statusOnly":true
      });
      
      public static var HydraZombie:Summon = new Summon({
         "foe":"HydraZombie",
         "SP":124,
         "animations":["intro2","magic2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Death");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(HydraZombie);
            Skills.user.sendHit(_loc1_);
         },
         "SpMC":"Death",
         "multiMC":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[100],
         "element":Element.DARK,
         "elementDegree":100,
         "statusEffect":Status.DEATH,
         "statusChance":[200],
         "statusDegree":[1],
         "accuracy":150
      });
      
      public static var HydraMagma:Summon = new Summon({
         "foe":"HydraMagma",
         "SP":87,
         "animations":["intro2","special3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(HydraMagma);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[220],
         "element":Element.FIRE,
         "elementDegree":100,
         "statusEffect":Status.BURN,
         "statusChance":[100],
         "statusDegree":[2],
         "accuracy":150
      });
      
      public static var HydraIce:Summon = new Summon({
         "foe":"HydraIce",
         "SP":92,
         "animations":["intro2","magic1","attack2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(HydraIce);
            _loc1_.damage /= 3;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[600],
         "element":Element.ICE,
         "elementDegree":100,
         "accuracy":150
      });
      
      public static var DragonEarth:Summon = new Summon({
         "foe":"DragonEarth",
         "SP":94,
         "animations":["intro2","magic1","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(DragonEarth);
            _loc1_.damage /= 3;
            _loc1_.buffEffect = Stats.NONE;
            Skills.user.sendHit(_loc1_);
         },
         "effect3":function():*
         {
            var _loc1_:* = new DamageObject(DragonEarth);
            _loc1_.statusOnly = true;
            _loc1_.damage = 0;
            _loc1_.critical = 0;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[95],
         "element":Element.BIO,
         "elementDegree":100,
         "accuracy":150,
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffDegree":[-60],
         "buffChance":[100]
      });
      
      public static var DragonSky:Summon = new Summon({
         "foe":"DragonSky",
         "SP":93,
         "animations":["intro2","special5","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"RazorFeathers");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(DragonSky);
            _loc1_.damage /= 8;
            _loc1_.buffEffect = Stats.NONE;
            Skills.user.sendHit(_loc1_);
         },
         "effect3":function():*
         {
            var _loc1_:* = new DamageObject(DragonSky);
            _loc1_.statusOnly = true;
            _loc1_.damage = 0;
            _loc1_.critical = 0;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[100],
         "element":Element.WIND,
         "elementDegree":100,
         "accuracy":150,
         "buffEffect":Stats.DEFENCE,
         "buffDegree":[-60],
         "buffChance":[100]
      });
      
      public static var DragonSea:Summon = new Summon({
         "foe":"DragonSea",
         "SP":97,
         "animations":["intro2","magic1","special9","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(DragonSea);
            _loc1_.buffEffect = Stats.NONE;
            Skills.user.sendHit(_loc1_);
         },
         "effect3":function():*
         {
            var _loc1_:* = new DamageObject(DragonSea);
            _loc1_.statusOnly = true;
            _loc1_.damage = 0;
            _loc1_.critical = 0;
            _loc1_.statusEffect = Status.NONE;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[200],
         "element":Element.WATER,
         "elementDegree":100,
         "accuracy":150,
         "statusEffect":Status.WET,
         "statusDegree":[2],
         "statusChance":[100],
         "buffEffect":Stats.ATTACK,
         "buffDegree":[-60],
         "buffChance":[100]
      });
      
      public static var DragonOmega:Summon = new Summon({
         "foe":"DragonOmega",
         "SP":98,
         "animations":["intro2","magic1","special7","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(DragonOmega);
            _loc1_.buffEffect = Stats.NONE;
            Skills.user.sendHit(_loc1_);
         },
         "effect3":function():*
         {
            var _loc1_:* = new DamageObject(DragonOmega);
            _loc1_.statusOnly = true;
            _loc1_.damage = 0;
            _loc1_.critical = 0;
            _loc1_.statusEffect = Status.NONE;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[210],
         "element":Element.HOLY,
         "elementDegree":100,
         "accuracy":150,
         "statusEffect":Status.STUN,
         "statusDegree":[2],
         "statusChance":[25],
         "buffEffect":Stats.MAGIC_ATTACK,
         "buffDegree":[-60],
         "buffChance":[100]
      });
      
      public static var BatBlood:Summon = new Summon({
         "foe":"BatBlood",
         "SP":14,
         "animations":["intro2","attack2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(BatBlood);
            if(!Battle.currentPlayer.dead)
            {
               Global.drainFlag = true;
               Battle.currentPlayer.drainableDamage += 3.5 * Skills.user.sendHit(_loc1_);
            }
            else
            {
               Skills.user.sendHit(_loc1_);
            }
            Skills.user = Battle.currentPlayer;
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60],
         "element":Element.BIO,
         "elementDegree":50
      });
      
      public static var BatSnow:Summon = new Summon({
         "foe":"BatSnow",
         "SP":13,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            Skills.user = Battle.randomFoe();
            Skills.user.graphic.makeMagic(EffectIce2,0,0,true);
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.CHILL,5);
               }
            }
         },
         "target":Target.ALL_ALLY,
         "statusEffect":Status.CHILL,
         "statusChance":[0],
         "statusDegree":[5],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var BatThunder:Summon = new Summon({
         "foe":"BatThunder",
         "SP":2,
         "animations":["intro2","magic3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            Skills.user = Battle.randomFoe();
            Skills.user.graphic.makeMagic(EffectThunder2,0,0,true);
            for each(_loc1_ in Battle.players)
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.CONFUSE,9);
               }
            }
         },
         "target":Target.ALL_ALLY,
         "statusEffect":Status.CONFUSE,
         "statusChance":[0],
         "statusDegree":[9],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var BatBone:Summon = new Summon({
         "foe":"BatBone",
         "SP":28,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            Skills.user = Battle.randomFoe();
            Skills.user.graphic.makeMagic(EffectPoison,0,0,true);
            for each(_loc1_ in Battle.players)
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.VIRUS,3);
               }
            }
         },
         "target":Target.ALL_ALLY,
         "statusEffect":Status.VIRUS,
         "statusChance":[0],
         "statusDegree":[3],
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var BearBrown:Summon = new Summon({
         "foe":"BearBrown",
         "SP":36,
         "animations":["intro2","attack4","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc3_:* = undefined;
            var _loc1_:* = new DamageObject(BearBrown);
            var _loc2_:* = Math.pow(101 - Battle.currentPlayer.getHpPercent(),1.3);
            for each(_loc3_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc3_ && Boolean(_loc3_.dead))
               {
                  _loc2_ += 150;
               }
            }
            if(_loc2_ == NaN)
            {
               _loc2_ = 100;
            }
            if(_loc2_ <= 100)
            {
               _loc2_ = 100;
            }
            _loc1_.damage = _loc2_ / 6;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[100],
         "element":Element.NONE
      });
      
      public static var BearGrolar:Summon = new Summon({
         "foe":"BearGrolar",
         "SP":76,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"IceFall");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(BearGrolar);
            _loc1_.damage /= 3;
            Skills.user.sendHit(_loc1_);
         },
         "SpMC":"IceFall",
         "multiMC":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[170],
         "element":Element.ICE,
         "elementDegree":100,
         "statusEffect":Status.FREEZE,
         "statusChance":[20],
         "statusDegree":[2],
         "accuracy":120
      });
      
      public static var BearPanda:Summon = new Summon({
         "foe":"BearPanda",
         "SP":79,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Bamboo2");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(BearPanda);
            _loc1_.damage /= 6;
            Skills.user.sendHit(_loc1_);
         },
         "SpMC":"Bamboo2",
         "multiMC":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[200],
         "element":Element.BIO,
         "elementDegree":100,
         "statusEffect":Status.POISON,
         "statusChance":[30],
         "statusDegree":[3],
         "accuracy":150
      });
      
      public static var BitIce:Summon = new Summon({
         "foe":"BitIce",
         "SP":37,
         "animations":["intro2","magic1"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Barrier");
         },
         "type":Stats.NONE,
         "statusOnly":true,
         "target":Target.ALL_ALLY,
         "damage":[0],
         "element":Element.NONE,
         "buffEffect":"barrier",
         "buffChance":[0],
         "buffDegree":[60]
      });
      
      public static var BitThunder:Summon = new Summon({
         "foe":"BitThunder",
         "SP":37,
         "animations":["intro2","magic1"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Protect");
         },
         "type":Stats.NONE,
         "statusOnly":true,
         "target":Target.ALL_ALLY,
         "damage":[0],
         "element":Element.NONE,
         "buffEffect":"protect",
         "buffChance":[0],
         "buffDegree":[60]
      });
      
      public static var BitHoly:Summon = new Summon({
         "foe":"BitHoly",
         "SP":25,
         "animations":["intro2","magic1"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"HealMore");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(BitHoly);
            Skills.user.sendHeal(_loc1_);
         },
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "damage":[50],
         "element":Element.NONE
      });
      
      public static var BitFire:Summon = new Summon({
         "foe":"BitFire",
         "SP":16,
         "animations":["intro2","magic1"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"FireCrystals");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(BitFire);
            _loc1_.damage /= 3;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[90],
         "element":Element.FIRE,
         "elementDegree":100,
         "statusEffect":Status.BURN,
         "statusChance":[60],
         "statusDegree":[3],
         "buffEffect":Stats.DEFENCE,
         "buffChance":[100],
         "buffDegree":[-50]
      });
      
      public static var BitWind:Summon = new Summon({
         "foe":"BitWind",
         "SP":16,
         "animations":["intro2","magic1"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"LaserCrystals");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(BitWind);
            _loc1_.damage /= 3;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[90],
         "element":Element.WIND,
         "elementDegree":100,
         "statusEffect":Status.STUN,
         "statusChance":[40],
         "statusDegree":[1],
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[100],
         "buffDegree":[-50]
      });
      
      public static var BitWater:Summon = new Summon({
         "foe":"BitWater",
         "SP":18,
         "animations":["intro2","magic2"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"BubbleBlast");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(BitWater);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[20],
         "element":Element.WATER,
         "elementDegree":100,
         "statusEffect":Status.WET,
         "statusChance":[100],
         "statusDegree":[3]
      });
      
      public static var BitPoison:Summon = new Summon({
         "foe":"BitPoison",
         "SP":18,
         "animations":["intro2","magic2"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Acid2");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(BitPoison);
            Skills.user.sendHit(_loc1_);
         },
         "SpMC":"Acid2",
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[20],
         "element":Element.BIO,
         "elementDegree":100,
         "statusEffect":Status.POISON,
         "statusChance":[100],
         "statusDegree":[3]
      });
      
      public static var BoulderCoral:Summon = new Summon({
         "foe":"BoulderCoral",
         "SP":41,
         "animations":["intro2","special2"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(BoulderCoral);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[220],
         "element":Element.WATER,
         "elementDegree":100,
         "statusEffect":Status.STAGGER,
         "statusChance":[100],
         "statusDegree":[1]
      });
      
      public static var BoulderMarble:Summon = new Summon({
         "foe":"BoulderMarble",
         "SP":58,
         "animations":["intro4"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(BoulderMarble);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[40],
         "element":Element.WIND,
         "elementDegree":100,
         "statusEffect":Status.SYPHON,
         "statusChance":[200],
         "statusDegree":[3]
      });
      
      public static var BoulderObsidian:Summon = new Summon({
         "foe":"BoulderObsidian",
         "SP":39,
         "animations":["intro4"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(BoulderObsidian);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[90],
         "element":Element.FIRE,
         "elementDegree":100,
         "statusEffect":Status.BURN,
         "statusChance":[100],
         "statusDegree":[2],
         "randomness":180,
         "critical":25
      });
      
      public static var BoulderDirt:Summon = new Summon({
         "foe":"BoulderDirt",
         "SP":32,
         "animations":["intro4"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(BoulderDirt);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[70],
         "element":Element.EARTH,
         "elementDegree":100,
         "statusEffect":Status.TIRED,
         "statusChance":[100],
         "statusDegree":[5]
      });
      
      public static var BoulderSandstone:Summon = new Summon({
         "foe":"BoulderSandstone",
         "SP":41,
         "animations":["intro2","special1"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(BoulderSandstone);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[330],
         "element":Element.EARTH,
         "elementDegree":100
      });
      
      public static var CatNinja:Summon = new Summon({
         "foe":"CatNinja",
         "SP":27,
         "animations":["intro2","magic3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.giveStatus(Battle.selectedTarget,Status.HASTE,1);
         },
         "target":Target.ONE_ALLY,
         "statusOnly":true,
         "type":Stats.NONE,
         "statusEffect":Status.HASTE,
         "statusDegree":[1]
      });
      
      public static var CatSniper:Summon = new Summon({
         "foe":"CatSniper",
         "SP":14,
         "animations":["intro2","attack4","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Snipe");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(CatSniper);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[50],
         "element":Element.BOMB,
         "elementDegree":100,
         "statusEffect":Status.DEATH,
         "statusChance":[30],
         "statusDegree":[1]
      });
      
      public static var CatWizard:Summon = new Summon({
         "foe":"CatWizard",
         "SP":4,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Heal");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(CatWizard);
            Skills.user.sendHeal(_loc1_);
         },
         "type":Stats.NONE,
         "target":Target.ONE_ALLY,
         "damage":[100],
         "element":Element.NONE
      });
      
      public static var CatBomber:Summon = new Summon({
         "foe":"CatBomber",
         "SP":26,
         "animations":["intro2","attack5","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Bomb");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(CatBomber);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[120],
         "element":Element.BOMB,
         "elementDegree":100,
         "statusEffect":Status.STAGGER,
         "statusChance":[100],
         "statusDegree":[1]
      });
      
      public static var CatWarrior:Summon = new Summon({
         "foe":"CatWarrior",
         "SP":14,
         "animations":["intro2","attack2"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(CatWarrior);
            _loc1_.damage /= 3;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[100],
         "element":Element.NONE
      });
      
      public static var DollMatt:Summon = new Summon({
         "foe":"DollMatt",
         "SP":35,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Temper");
         },
         "effect2":function():*
         {
            Battle.selectedTarget.buff(Stats.ATTACK,85);
            Skills.giveStatus(Battle.selectedTarget,Status.BLESS,3);
         },
         "type":Stats.NONE,
         "target":Target.ONE_ALLY,
         "damage":[0],
         "element":Element.NONE,
         "buffEffect":"temper",
         "buffChance":[0],
         "buffDegree":[85],
         "statusEffect":Status.BLESS,
         "statusChance":[0],
         "statusDegree":[3]
      });
      
      public static var DollNatalie:Summon = new Summon({
         "foe":"DollNatalie",
         "SP":35,
         "animations":["intro2","magic2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"EffectStar");
         },
         "effect2":function():*
         {
            Battle.selectedTarget.buff(Stats.MAGIC_ATTACK,85);
            Skills.giveStatus(Battle.selectedTarget,Status.MORALE,3);
         },
         "type":Stats.NONE,
         "target":Target.ONE_ALLY,
         "damage":[0],
         "element":Element.NONE,
         "buffEffect":"bless2",
         "buffChance":[0],
         "buffDegree":[85],
         "statusEffect":Status.MORALE,
         "statusChance":[0],
         "statusDegree":[3]
      });
      
      public static var DollLance:Summon = new Summon({
         "foe":"DollLance",
         "SP":78,
         "animations":["intro2","magic3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"AirStrike2");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(DollLance);
            Skills.user.sendHit(_loc1_);
         },
         "SpMC":"AirStrike2",
         "multiMC":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[190],
         "element":Element.BOMB,
         "elementDegree":100,
         "statusEffect":Status.STAGGER,
         "statusChance":[25],
         "statusDegree":[1]
      });
      
      public static var DollAnna:Summon = new Summon({
         "foe":"DollAnna",
         "SP":17,
         "animations":["intro2","magic6","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Global.arrow = 1;
            Global.element = Element.BIO;
            Skills.user.castSpell(false,"PiercingShot");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(DollAnna);
            _loc1_.damage *= 1 + ((Battle.selectedTarget.buffs[Stats.DEFENCE] - 100) * 3.5 + (Battle.selectedTarget.buffs[Stats.MAGIC_DEFENCE] - 100) * 3.5) / 100;
            if(Battle.selectedTarget.status[Status.DEFEND])
            {
               _loc1_.damage *= 3;
            }
            if(_loc1_.damage < 0)
            {
               _loc1_.damage = 0;
            }
            Skills.user.sendHit(_loc1_);
            effectMC = Battle.randomPlayer().graphic;
            effectMC.makeMagic(EffectSmash);
            effectMC.makeMagic(EffectPoison);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[80],
         "element":Element.BIO,
         "elementDegree":50
      });
      
      public static var DollNoLegs:Summon = new Summon({
         "foe":"DollNoLegs",
         "SP":31,
         "animations":["intro2","magic5","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(DollNoLegs);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "damage":[0],
         "element":Element.NONE,
         "buffEffect":Stats.EVADE,
         "buffDegree":[-50],
         "buffChance":[100],
         "statusEffect":Status.BAD_LUCK,
         "statusDegree":[3],
         "statusChance":[100],
         "statusOnly":true
      });
      
      public static var BossCyclopsDesert:Summon = new Summon({
         "foe":"BossCyclopsDesert",
         "SP":65,
         "animations":["intro5","special2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            effectMC = Battle.randomPlayer().graphic;
            var _loc1_:* = new DamageObject(BossCyclopsDesert);
            _loc1_.damage /= 2;
            Battle.finalHit = false;
            Skills.user.sendHit(_loc1_);
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(BossCyclopsDesert);
            _loc1_.damage /= 8;
            Skills.user.sendHit(_loc1_);
            effectMC.makeMagic(EffectSmash2,0,0,true);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[180],
         "element":Element.BOMB,
         "elementDegree":100,
         "statusEffect":Status.STUN,
         "statusChance":[50],
         "statusDegree":[1],
         "accuracy":120
      });
      
      public static var BossCyclopsGlacial:Summon = new Summon({
         "foe":"BossCyclopsGlacial",
         "SP":95,
         "animations":["intro5","attack4","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(BossCyclopsGlacial);
            _loc1_.damage /= 3;
            Battle.targetType = Target.ONE_ENEMY;
            Battle.finalHit = false;
            Skills.user.sendHit(_loc1_);
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(BossCyclopsGlacial);
            _loc1_.damage /= 3;
            Battle.targetType = Target.ALL_ENEMY;
            BossCyclopsGlacial.target = Target.ALL_ENEMY;
            Skills.user.sendHit(_loc1_);
            BossCyclopsGlacial.target = Target.CENTER_ENEMY;
         },
         "type":Stats.ATTACK,
         "target":Target.CENTER_ENEMY,
         "damage":[530],
         "element":Element.ICE,
         "elementDegree":100,
         "statusEffect":Status.FREEZE,
         "statusChance":[30],
         "statusDegree":[2],
         "accuracy":120
      });
      
      public static var BossCyclopsInfernal:Summon = new Summon({
         "foe":"BossCyclopsInfernal",
         "SP":92,
         "animations":["intro5","attack5","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(BossCyclopsInfernal);
            _loc1_.damage /= 3;
            Battle.targetType = Target.ONE_ENEMY;
            Battle.finalHit = false;
            Skills.user.sendHit(_loc1_);
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(BossCyclopsInfernal);
            _loc1_.damage /= 3;
            Battle.targetType = Target.ALL_ENEMY;
            BossCyclopsInfernal.target = Target.ALL_ENEMY;
            Skills.user.sendHit(_loc1_);
            BossCyclopsInfernal.target = Target.CENTER_ENEMY;
         },
         "type":Stats.ATTACK,
         "target":Target.CENTER_ENEMY,
         "damage":[580],
         "element":Element.FIRE,
         "elementDegree":100,
         "statusEffect":Status.BURN,
         "statusChance":[30],
         "statusDegree":[3],
         "accuracy":120
      });
      
      public static var BossGolemWater:Summon = new Summon({
         "foe":"BossGolemWater",
         "SP":108,
         "animations":["intro2","magic2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Torrent");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(BossGolemWater);
            Skills.user.sendHit(_loc1_);
         },
         "SpMC":"Torrent",
         "multiMC":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[350],
         "element":Element.WATER,
         "elementDegree":100,
         "statusEffect":Status.WET,
         "statusChance":[30],
         "statusDegree":[2],
         "accuracy":150
      });
      
      public static var BossGolemFire:Summon = new Summon({
         "foe":"BossGolemFire",
         "SP":110,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Eruption");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(BossGolemFire);
            _loc1_.damage /= 3;
            Skills.user.sendHit(_loc1_);
         },
         "SpMC":"Eruption",
         "multiMC":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[350],
         "element":Element.FIRE,
         "elementDegree":100,
         "statusEffect":Status.BURN,
         "statusChance":[100],
         "statusDegree":[5],
         "accuracy":150
      });
      
      public static var BossNestCat:Summon = new Summon({
         "foe":"BossNestCat",
         "SP":109,
         "animations":["intro2","magic2","special2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"RazorLeaf3");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(BossNestCat);
            _loc1_.damage /= 6;
            Skills.user.sendHit(_loc1_);
         },
         "effect3":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  _loc1_.buff(Stats.MAGIC_ATTACK,60);
               }
            }
         },
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[330],
         "element":Element.BIO,
         "elementDegree":100,
         "accuracy":150,
         "buffEffect":"bless2",
         "buffChance":[0],
         "buffDegree":[60]
      });
      
      public static var BossNestNinja:Summon = new Summon({
         "foe":"BossNestNinja",
         "SP":112,
         "animations":["intro2","special2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Ritual");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(BossNestNinja);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[380],
         "element":Element.DARK,
         "elementDegree":100,
         "accuracy":150,
         "statusEffect":Status.CURSE,
         "statusChance":[100],
         "statusDegree":[9]
      });
      
      public static var EvilMatt:Summon = new Summon({
         "foe":"EvilMatt",
         "SP":131,
         "animations":["intro","magic2","itemeat","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Cataclysm");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(EvilMatt);
            Skills.user.sendHit(_loc1_);
         },
         "SpMC":"Cataclysm",
         "multiMC":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[485],
         "element":Element.EARTH,
         "elementDegree":100,
         "accuracy":150,
         "critical":30
      });
      
      public static var EvilNatalie:Summon = new Summon({
         "foe":"EvilNatalie",
         "SP":139,
         "animations":["intro","magic1","equip","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Judgement");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(EvilNatalie);
            Skills.user.sendHit(_loc1_);
         },
         "SpMC":"Judgement",
         "multiMC":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[550],
         "element":Element.HOLY,
         "elementDegree":100,
         "accuracy":150,
         "critical":30
      });
      
      public static var EvilLance:Summon = new Summon({
         "foe":"EvilLance",
         "SP":132,
         "animations":["intro","magic1","magic2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"AirStrike4");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(EvilLance);
            Skills.user.sendHit(_loc1_);
         },
         "SpMC":"AirStrike4",
         "multiMC":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[510],
         "element":Element.BOMB,
         "elementDegree":100,
         "accuracy":150,
         "critical":30
      });
      
      public static var EvilAnna:Summon = new Summon({
         "foe":"EvilAnna",
         "SP":134,
         "animations":["intro","magic1","defend","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"Tempest");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(EvilAnna);
            Skills.user.sendHit(_loc1_);
         },
         "SpMC":"Tempest",
         "multiMC":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[520],
         "element":Element.WIND,
         "elementDegree":100,
         "accuracy":150,
         "critical":30
      });
      
      public static var EvilNoLegs:Summon = new Summon({
         "foe":"EvilNoLegs",
         "SP":160,
         "animations":["intro","evade","special4","special1"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"SpiritBomb");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(EvilNoLegs);
            _loc1_.damage /= 15;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[999],
         "element":Element.NONE,
         "elementDegree":100,
         "accuracy":300
      });
      
      public static var BossGigalith:Summon = new Summon({
         "foe":"BossGigalith",
         "SP":150,
         "animations":["intro3","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(BossGigalith);
            _loc1_.damage /= 9;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[600],
         "element":Element.NONE,
         "statusEffect":Status.SCORCHED,
         "statusChance":[100],
         "statusDegree":[6]
      });
      
      public static var BossDevourer:Summon = new Summon({
         "foe":"BossDevourer",
         "SP":250,
         "animations":["intro","special4","stand","special3"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"DevExplosion");
         },
         "effect2":function():*
         {
            Skills.user.castSpell(false,"SliceEarth");
         },
         "effect3":function():*
         {
            var _loc2_:* = undefined;
            var _loc3_:* = undefined;
            var _loc1_:* = new DamageObject(BossDevourer);
            Flags.devSummoned = true;
            Battle.targetType = Target.ALL_ENEMY;
            for each(_loc2_ in Battle.foes)
            {
               (_loc2_ as Foe).status[Status.BLESS] = 0;
               (_loc2_ as Foe).dispelAll();
            }
            Skills.user.sendHit(_loc1_);
            for each(_loc3_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc3_)
               {
                  (_loc3_ as Player).status[Status.BLESS] = 0;
               }
               if(_loc3_)
               {
                  (_loc3_ as Player).dispelAll();
               }
            }
            Global.oblivion = true;
            Battle.targetType = Target.ALL_ENEMY;
            Weather.weatherFoe.sendHit(new DamageObject({
               "accuracy":9999,
               "damage":300000,
               "type":Stats.MAGIC_ATTACK
            }));
            Battle.targetType = Target.ALL_STANDBY;
            Weather.weatherFoe.sendHit(new DamageObject({
               "accuracy":9999,
               "damage":300000,
               "type":Stats.MAGIC_ATTACK
            }));
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[9999],
         "element":Element.NONE,
         "elementDegree":100,
         "accuracy":300
      });
      
      public static var SketchXolotl:Summon = new Summon({
         "foe":"SketchXolotl",
         "SP":51,
         "animations":["intro2","magic2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"SketchBones");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(SketchXolotl);
            _loc1_.ignoreBuffs = true;
            _loc1_.damage /= 3;
            Skills.user.sendHit(_loc1_);
         },
         "SpMC":"SketchBones",
         "multiMC":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[150],
         "element":Element.NONE,
         "statusEffect":Status.WEAKEN,
         "statusChance":[200],
         "statusDegree":[5]
      });
      
      public static var SketchGuncat:Summon = new Summon({
         "foe":"SketchGuncat",
         "SP":105,
         "animations":["intro2","special2","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(SketchGuncat);
            _loc1_.type = Stats.ATTACK;
            _loc1_.ignoreBuffs = true;
            _loc1_.damage /= 6;
            Battle.finalHit = false;
            Skills.user.sendHit(_loc1_);
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(SketchGuncat);
            _loc1_.type = Stats.MAGIC_ATTACK;
            _loc1_.ignoreBuffs = true;
            _loc1_.damage /= 2;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "damage":[350],
         "element":Element.BOMB,
         "elementDegree":100
      });
      
      public static var SketchPapalotl:Summon = new Summon({
         "foe":"SketchPapalotl",
         "SP":80,
         "animations":["intro2","magic2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"SketchSpears");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(SketchPapalotl);
            _loc1_.ignoreBuffs = true;
            _loc1_.damage /= 3;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[400],
         "element":Element.NONE
      });
      
      public static var SketchGlaurung:Summon = new Summon({
         "foe":"SketchGlaurung",
         "SP":53,
         "animations":["intro2","special4","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(SketchGlaurung);
            _loc1_.damage /= 3;
            _loc1_.ignoreBuffs = true;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[240],
         "element":Element.WIND,
         "elementDegree":100,
         "statusEffect":Status.DISPEL,
         "statusChance":[130],
         "statusDegree":[1]
      });
      
      public static var ArcadeGuoye:Summon = new Summon({
         "foe":"ArcadeGuoye",
         "SP":50,
         "animations":["intro5","magic2c","flee2"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players)
            {
               if(_loc1_)
               {
                  _loc1_.buff(Stats.ACCURACY,100);
               }
            }
         },
         "effect3":function():*
         {
            Backgrounds.changeBackground(Backgrounds.GUOYE);
            Battle.shake("small");
            SFX.playSound("rbg");
         },
         "buffEffect":"lockon",
         "buffChance":[0],
         "buffDegree":[100],
         "target":Target.ALL_ALLY,
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var ArcadeTotom:Summon = new Summon({
         "foe":"ArcadeTotom",
         "SP":35,
         "animations":["intro7","magic1t","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"TotomHeal");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(ArcadeTotom);
            Battle.targetType = Target.ONE_ALLY;
            Battle.selectedTarget.dispelBadBuffs();
            Battle.selectedTarget.dispelBadStatus();
            Skills.user.sendHeal(_loc1_);
         },
         "effect3":function():*
         {
            Backgrounds.changeBackground(Backgrounds.TOTOM);
            Battle.shake("small");
            SFX.playSound("rbg");
         },
         "SpMC":"TotomHeal",
         "multiMC":true,
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "damage":[80],
         "element":Element.NONE
      });
      
      public static var ArcadePumpkus:Summon = new Summon({
         "foe":"ArcadePumpkus",
         "SP":12,
         "animations":["intro4","attack2b","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ArcadePumpkus);
            Battle.targetType = Target.ONE_ENEMY;
            _loc1_.damage /= 3;
            Skills.user.sendHit(_loc1_);
            Battle.selectedTarget = Battle.randomFoe();
         },
         "effect3":function():*
         {
            Backgrounds.changeBackground(Backgrounds.PUMPKUS);
            Battle.shake("small");
            SFX.playSound("rbg");
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[999],
         "element":Element.NONE
      });
      
      public static var ArcadeTreagure:Summon = new Summon({
         "foe":"ArcadeTreagure",
         "SP":57,
         "animations":["intro4","special4","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Battle.targetType = Target.ONE_ENEMY;
            Battle.selectedTarget = Battle.randomFoe(true);
            Skills.user.castSpell(false,"GemThrow");
         },
         "effect2":function(param1:int):*
         {
            var _loc2_:* = new DamageObject(ArcadeTreagure);
            Battle.targetType = Target.ONE_ENEMY;
            _loc2_.damage /= 8;
            if(param1 == 1)
            {
               _loc2_.element = Element.ICE;
               _loc2_.statusEffect = Status.FREEZE;
            }
            if(param1 == 2)
            {
               _loc2_.element = Element.THUNDER;
               _loc2_.statusEffect = Status.STUN;
            }
            if(param1 == 3)
            {
               _loc2_.element = Element.FIRE;
               _loc2_.statusEffect = Status.SCORCHED;
            }
            if(param1 == 4)
            {
               _loc2_.element = Element.WIND;
               _loc2_.statusEffect = Status.SYPHON;
            }
            if(param1 == 5)
            {
               _loc2_.element = Element.HOLY;
               _loc2_.statusEffect = Status.DOOM;
            }
            if(param1 == 6)
            {
               _loc2_.element = Element.BOMB;
               _loc2_.statusEffect = Status.STAGGER;
            }
            if(param1 == 7)
            {
               _loc2_.element = Element.WATER;
               _loc2_.statusEffect = Status.BAD_LUCK;
            }
            Skills.user.sendHit(_loc2_);
         },
         "effect3":function():*
         {
            Backgrounds.changeBackground(Backgrounds.TREAGURE);
            Battle.shake("small");
            SFX.playSound("rbg");
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[440],
         "element":Element.NONE,
         "elementDegree":0,
         "statusEffect":"random",
         "statusChance":[100],
         "statusDegree":[3]
      });
      
      public static var ArcadeGlob:Summon = new Summon({
         "foe":"ArcadeGlob",
         "SP":44,
         "animations":["intro4","special3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function(param1:int):*
         {
            var _loc2_:* = new DamageObject(ArcadeGlob);
            _loc2_.damage /= 6;
            if(param1 == 1)
            {
               _loc2_.statusEffect = Status.DISPEL;
            }
            if(param1 == 2)
            {
               _loc2_.statusEffect = Status.TIRED;
            }
            if(param1 == 3)
            {
               _loc2_.statusEffect = Status.CURSE;
            }
            if(param1 == 4)
            {
               _loc2_.statusEffect = Status.WEAKEN;
            }
            if(param1 == 5)
            {
               _loc2_.statusEffect = Status.BAD_LUCK;
            }
            if(param1 == 6)
            {
               _loc2_.statusEffect = Status.SHROUD;
            }
            Skills.user.sendHit(_loc2_);
         },
         "effect3":function():*
         {
            Backgrounds.changeBackground(Backgrounds.GLOB);
            Battle.shake("small");
            SFX.playSound("rbg");
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60],
         "element":Element.NONE,
         "statusEffect":"random",
         "statusChance":[100],
         "statusDegree":[5]
      });
      
      public static var ArcadeSnek:Summon = new Summon({
         "foe":"ArcadeSnek",
         "SP":20,
         "animations":["intro2","attack1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ArcadeSnek);
            _loc1_.statusEffect = Status.BURN;
            _loc1_.damage /= 2;
            Skills.user.sendHit(_loc1_);
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(ArcadeSnek);
            _loc1_.statusEffect = Status.POISON;
            _loc1_.damage /= 2;
            Skills.user.sendHit(_loc1_);
         },
         "effect3":function():*
         {
            Backgrounds.changeBackground(Backgrounds.SNEK);
            Battle.shake("small");
            SFX.playSound("rbg");
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[60],
         "element":Element.NONE,
         "statusEffect":"poisonburn",
         "statusChance":[100],
         "statusDegree":[9]
      });
      
      public static var ArcadeMaw:Summon = new Summon({
         "foe":"ArcadeMaw",
         "SP":66,
         "animations":["intro4","magic1c","special5","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ArcadeMaw);
            Skills.user.sendHit(_loc1_);
         },
         "effect3":function():*
         {
            Backgrounds.changeBackground(Backgrounds.MAW);
            Battle.shake("small");
            SFX.playSound("rbg");
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[90],
         "element":Element.BIO,
         "elementDegree":100,
         "statusEffect":Status.VIRUS,
         "statusChance":[100],
         "statusDegree":[5]
      });
      
      public static var ArcadeRobo:Summon = new Summon({
         "foe":"ArcadeRobo",
         "SP":65,
         "animations":["intro3","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"RobboExplosion");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(ArcadeRobo);
            Skills.user.sendHit(_loc1_);
         },
         "effect3":function():*
         {
            Backgrounds.changeBackground(Backgrounds.ROBO);
            Battle.shake("small");
            SFX.playSound("rbg");
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[280],
         "element":Element.THUNDER,
         "elementDegree":100,
         "statusEffect":Status.STUN,
         "statusChance":[100],
         "statusDegree":[1],
         "buffEffect":Stats.ACCURACY,
         "buffChance":[100],
         "buffDegree":[-80]
      });
      
      public static var ArcadeMermaid:Summon = new Summon({
         "foe":"ArcadeMermaid",
         "SP":70,
         "animations":["intro4","magic3m","magic1m","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  _loc1_.buff(Stats.EVADE,100);
               }
            }
         },
         "effect3":function():*
         {
            Backgrounds.changeBackground(Backgrounds.MERMAID);
            Battle.shake("small");
            SFX.playSound("rbg");
         },
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "damage":[0],
         "element":Element.NONE,
         "buffEffect":"reflex",
         "buffChance":[0],
         "buffDegree":[100]
      });
      
      public static var ArcadeBosh:Summon = new Summon({
         "foe":"ArcadeBosh",
         "SP":69,
         "animations":["intro4","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ArcadeBosh);
            Skills.user.sendHit(_loc1_);
         },
         "effect3":function():*
         {
            Backgrounds.changeBackground(Backgrounds.BOSH);
            Battle.shake("small");
            SFX.playSound("rbg");
         },
         "type":Stats.NONE,
         "target":Target.ALL_ENEMY,
         "damage":[0],
         "element":Element.NONE,
         "buffEffect":Stats.ATTACK,
         "buffChance":[100],
         "buffDegree":[-80],
         "statusOnly":true
      });
      
      public static var ArcadeChair:Summon = new Summon({
         "foe":"ArcadeChair",
         "SP":77,
         "animations":["intro4","magic2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"ChairStool");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(ArcadeChair);
            Skills.user.sendHit(_loc1_);
         },
         "effect3":function():*
         {
            Backgrounds.changeBackground(Backgrounds.CHAIR);
            Battle.shake("small");
            SFX.playSound("rbg");
         },
         "SpMC":"ChairStool",
         "multiMC":true,
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[150],
         "element":Element.BOMB,
         "elementDegree":100,
         "buffEffect":Stats.MAGIC_ATTACK,
         "buffChance":[100],
         "buffDegree":[-80]
      });
      
      public static var ArcadePhoenix:Summon = new Summon({
         "foe":"ArcadePhoenix",
         "SP":75,
         "animations":["intro6","magic2d","magic1d","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players)
            {
               if(_loc1_.dead)
               {
                  _loc1_.revive(33);
               }
               else
               {
                  Skills.giveStatus(_loc1_,Status.AUTOLIFE,5);
               }
            }
         },
         "effect3":function():*
         {
            Backgrounds.changeBackground(Backgrounds.PHOENIX);
            Battle.shake("small");
            SFX.playSound("rbg");
         },
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "damage":[0],
         "element":Element.NONE,
         "statusDegree":[5],
         "statusEffect":[Status.AUTOLIFE],
         "statusChance":[0],
         "statusOnly":true
      });
      
      public static var GolemBone:Summon = new Summon({
         "foe":"GolemBone",
         "SP":85,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"BonePillar");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(GolemBone);
            Skills.user.sendHit(_loc1_);
         },
         "SpMC":"BonePillar",
         "multiMC":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[300],
         "element":Element.NONE,
         "statusEffect":Status.WEAKEN,
         "statusChance":[50],
         "statusDegree":[3]
      });
      
      public static var BearBlack:Summon = new Summon({
         "foe":"BearBlack",
         "SP":40,
         "animations":["intro2","attack7","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(BearBlack);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[270],
         "element":Element.FIRE,
         "elementDegree":100,
         "statusEffect":Status.DRY,
         "statusChance":[200],
         "statusDegree":[9]
      });
      
      public static var Defender3:Summon = new Summon({
         "foe":"Defender3",
         "SP":101,
         "animations":["intro2","special3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(Defender3);
            _loc1_.damage /= 3;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[260],
         "element":Element.DARK,
         "elementDegree":100,
         "critical":210
      });
      
      public static var HydraOrigami:Summon = new Summon({
         "foe":"HydraOrigami",
         "SP":78,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"PaperSword");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(HydraOrigami);
            Skills.user.sendHit(_loc1_);
         },
         "effect3":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  _loc1_.buff(Stats.EVADE,70);
               }
            }
         },
         "SpMC":"PaperSword",
         "multiMC":true,
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[200],
         "element":Element.NONE,
         "buffEffect":"reflex",
         "buffChance":[0],
         "buffDegree":[70]
      });
      
      public static var CatSkeleton:Summon = new Summon({
         "foe":"CatSkeleton",
         "SP":18,
         "animations":["intro2","attack6"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(CatSkeleton);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[160],
         "element":Element.DARK,
         "elementDegree":100,
         "statusEffect":Status.BAD_LUCK,
         "statusChance":[200],
         "statusDegree":[9]
      });
      
      public static var WormBook:Summon = new Summon({
         "foe":"WormBook",
         "SP":30,
         "animations":["intro2","magic2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players)
            {
               if(_loc1_)
               {
                  _loc1_.buff(Stats.ACCURACY,50);
               }
            }
         },
         "buffEffect":"lockon",
         "buffChance":[0],
         "buffDegree":[50],
         "target":Target.ALL_ALLY,
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var GloopFab:Summon = new Summon({
         "foe":"GloopFab",
         "SP":17,
         "animations":["intro2","defend","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Weather.tempWeather = Weather.BLOSSOM;
            Weather.tempWeatherTime = 5;
            Battle.menu.updateWave();
         },
         "target":Target.ALL,
         "statusOnly":true,
         "type":Stats.NONE
      });
      
      public static var WraithOrigami:Summon = new Summon({
         "foe":"WraithOrigami",
         "SP":71,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"PaperStars");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(WraithOrigami);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[645],
         "element":Element.NONE,
         "statusEffect":Status.DISPEL,
         "statusChance":[100],
         "statusDegree":[1]
      });
      
      public static var ClassicSlime:Summon = new Summon({
         "foe":"ClassicSlime",
         "SP":1,
         "animations":["intro2","attack2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ClassicSlime);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[2]
      });
      
      public static var ClassicSlimeKing:Summon = new Summon({
         "foe":"ClassicSlimeKing",
         "SP":45,
         "animations":["intro2","special2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc2_:* = undefined;
            var _loc1_:* = new DamageObject(ClassicSlimeKing);
            Battle.targetType = Target.ALL_ALLY;
            Skills.user.sendHeal(_loc1_);
            _loc1_ = new DamageObject(ClassicSlimeKing);
            Battle.targetType = Target.ALL_STANDBY;
            Skills.user.sendHeal(_loc1_);
            for each(_loc2_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc2_)
               {
                  _loc2_.dispelBadStatus();
               }
            }
         },
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "damage":[60],
         "element":Element.NONE
      });
      
      public static var ClassicTree:Summon = new Summon({
         "foe":"ClassicTree",
         "SP":22,
         "animations":["intro2","special2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ClassicTree);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[5],
         "element":Element.BIO,
         "elementDegree":25,
         "statusEffect":Status.STUN,
         "statusChance":[50],
         "statusDegree":[1]
      });
      
      public static var ClassicEyeball:Summon = new Summon({
         "foe":"ClassicEyeball",
         "SP":28,
         "animations":["intro2","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ClassicEyeball);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[105],
         "element":Element.NONE
      });
      
      public static var ClassicBeholder:Summon = new Summon({
         "foe":"ClassicBeholder",
         "SP":69,
         "animations":["intro2","attack3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ClassicBeholder);
            _loc1_.damage /= 4;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[520],
         "element":Element.BIO,
         "elementDegree":50,
         "statusEffect":Status.POISON,
         "statusChance":[100],
         "statusDegree":[9]
      });
      
      public static var ClassicWaspRed:Summon = new Summon({
         "foe":"ClassicWaspRed",
         "SP":38,
         "animations":["intro2","special2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ClassicWaspRed);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.NONE,
         "target":Target.ONE_ENEMY,
         "damage":[0],
         "element":Element.NONE,
         "buffEffect":Stats.MAGIC_ATTACK,
         "buffDegree":[-80],
         "buffChance":[100],
         "statusOnly":true
      });
      
      public static var ClassicWaspBlack:Summon = new Summon({
         "foe":"ClassicWaspBlack",
         "SP":38,
         "animations":["intro2","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ClassicWaspBlack);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.NONE,
         "target":Target.ONE_ENEMY,
         "damage":[0],
         "element":Element.NONE,
         "buffEffect":Stats.ATTACK,
         "buffDegree":[-80],
         "buffChance":[100],
         "statusOnly":true
      });
      
      public static var ClassicSandworm:Summon = new Summon({
         "foe":"ClassicSandworm",
         "SP":101,
         "animations":["intro2","special4","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function(param1:int):*
         {
            var _loc2_:* = new DamageObject(ClassicSandworm);
            _loc2_.damage /= 4;
            _loc2_.buffEffect = [Stats.ATTACK,Stats.MAGIC_ATTACK,Stats.DEFENCE,Stats.MAGIC_DEFENCE][param1 - 1];
            Skills.user.sendHit(_loc2_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[100],
         "element":Element.BIO,
         "elementDegree":100,
         "buffEffect":"puke",
         "buffDegree":[-70],
         "buffChance":[100]
      });
      
      public static var ClassicEaterIce:Summon = new Summon({
         "foe":"ClassicEaterIce",
         "SP":44,
         "animations":["intro2","special1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ClassicEaterIce);
            _loc1_.damage /= 7;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[30],
         "element":Element.ICE,
         "elementDegree":100,
         "statusEffect":Status.FREEZE,
         "statusChance":[100],
         "statusDegree":[2]
      });
      
      public static var ClassicEaterFire:Summon = new Summon({
         "foe":"ClassicEaterFire",
         "SP":32,
         "animations":["intro2","special3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ClassicEaterFire);
            _loc1_.damage /= 4;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[60],
         "element":Element.FIRE,
         "elementDegree":100,
         "statusEffect":Status.DRY,
         "statusChance":[100],
         "statusDegree":[3]
      });
      
      public static var ClassicClayBlue:Summon = new Summon({
         "foe":"ClassicClayBlue",
         "SP":36,
         "animations":["intro2","magic2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"ClassicTornado");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(ClassicClayBlue);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[220],
         "element":Element.WIND,
         "elementDegree":100,
         "statusEffect":Status.LIGHT,
         "statusChance":[200],
         "statusDegree":[9]
      });
      
      public static var ClassicClayRed:Summon = new Summon({
         "foe":"ClassicClayRed",
         "SP":38,
         "animations":["intro2","attack3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ClassicClayRed);
            _loc1_.damage /= 5;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[240],
         "element":Element.EARTH,
         "elementDegree":100,
         "statusEffect":Status.HEAVY,
         "statusChance":[200],
         "statusDegree":[9]
      });
      
      public static var ClassicClayDark:Summon = new Summon({
         "foe":"ClassicClayDark",
         "SP":62,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"ClassicHaunt");
         },
         "effect2":function(param1:int):*
         {
            var _loc2_:* = new DamageObject(ClassicClayDark);
            _loc2_.damage /= 5;
            _loc2_.buffEffect = [Stats.NONE,Stats.ATTACK,Stats.MAGIC_ATTACK,Stats.DEFENCE,Stats.MAGIC_DEFENCE][param1 - 1];
            if(param1 > 1)
            {
               _loc2_.statusChance = 0;
            }
            Skills.user.sendHit(_loc2_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[260],
         "element":Element.DARK,
         "elementDegree":100,
         "buffEffect":"puke",
         "buffDegree":[-70],
         "buffChance":[100],
         "statusEffect":Status.DOOM,
         "statusChance":[100],
         "statusDegree":[3]
      });
      
      public static var ClassicClayLight:Summon = new Summon({
         "foe":"ClassicClayLight",
         "SP":40,
         "animations":["intro2","magic2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"ClassicMegalixir");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(ClassicClayLight);
            Battle.targetType = Target.ALL_ALLY;
            Skills.user.sendHeal(_loc1_);
            _loc1_ = new DamageObject(ClassicClayLight);
            Battle.targetType = Target.ALL_STANDBY;
            Skills.user.sendHeal(_loc1_);
         },
         "type":Stats.NONE,
         "target":Target.ALL_ALLY,
         "damage":[60],
         "element":Element.NONE
      });
      
      public static var ClassicProtector:Summon = new Summon({
         "foe":"ClassicProtector",
         "SP":115,
         "animations":["intro2","special4","special5","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ClassicProtector);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[295],
         "element":Element.THUNDER,
         "elementDegree":100,
         "statusEffect":Status.STUN,
         "statusChance":[200],
         "statusDegree":[3]
      });
      
      public static var ClassicSlingerGun:Summon = new Summon({
         "foe":"ClassicSlingerGun",
         "SP":28,
         "animations":["intro2","attack7","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ClassicSlingerGun);
            if(Math.random() < 0.5)
            {
               _loc1_.accuracy = 0;
            }
            _loc1_.ignoreBuffs = true;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[570],
         "element":Element.BOMB,
         "elementDegree":100
      });
      
      public static var ClassicSlingerSword:Summon = new Summon({
         "foe":"ClassicSlingerSword",
         "SP":26,
         "animations":["intro2","attack4","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ClassicSlingerSword);
            if(Math.random() < 0.5)
            {
               _loc1_.accuracy = 0;
            }
            _loc1_.ignoreBuffs = true;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[680],
         "element":Element.NONE
      });
      
      public static var ClassicPraetorian:Summon = new Summon({
         "foe":"ClassicPraetorian",
         "SP":141,
         "animations":["intro2","special1","attack2","attack3"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players)
            {
               if(_loc1_)
               {
                  Skills.giveStatus(_loc1_,Status.DEFEND,1);
               }
            }
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(ClassicPraetorian);
            Battle.finalHit = false;
            _loc1_.damage /= 6;
            _loc1_.ignoreBuffs = true;
            Skills.user.sendHit(_loc1_);
         },
         "effect3":function():*
         {
            var _loc1_:* = new DamageObject(ClassicPraetorian);
            _loc1_.ignoreBuffs = true;
            _loc1_.damage /= 2;
            _loc1_.statusEffect = Status.DEATH;
            _loc1_.statusChance = 25;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[500],
         "element":Element.NONE,
         "elementDegree":100,
         "statusEffect":Status.DEFEND,
         "statusDegree":[1]
      });
      
      public static var ClassicCrystalRed:Summon = new Summon({
         "foe":"ClassicCrystalRed",
         "SP":55,
         "animations":["intro2","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            Skills.user.castSpell(false,"ClassicDragonFlame");
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(ClassicCrystalRed);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[280],
         "element":Element.FIRE,
         "elementDegree":100,
         "statusEffect":Status.SCORCHED,
         "statusChance":[200],
         "statusDegree":[1]
      });
      
      public static var ClassicCrystalBlue:Summon = new Summon({
         "foe":"ClassicCrystalBlue",
         "SP":43,
         "animations":["intro2","attack1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ClassicCrystalBlue);
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[20],
         "element":Element.ICE,
         "elementDegree":100,
         "statusEffect":Status.FREEZE,
         "statusChance":[300],
         "statusDegree":[5]
      });
      
      public static var ClassicGigaGolem:Summon = new Summon({
         "foe":"ClassicGigaGolem",
         "SP":28,
         "animations":["intro2","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ClassicGigaGolem);
            _loc1_.element = Element.FIRE;
            Skills.user.sendHit(_loc1_);
         },
         "effect2":function():*
         {
            var _loc1_:* = new DamageObject(ClassicGigaGolem);
            _loc1_.element = Element.ICE;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ONE_ENEMY,
         "damage":[480],
         "element":"golem",
         "elementDegree":100
      });
      
      public static var ClassicRafflesia:Summon = new Summon({
         "foe":"ClassicRafflesia",
         "SP":121,
         "animations":["intro2","special5","magic1","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = new DamageObject(ClassicRafflesia);
            Battle.finalHit = false;
            _loc1_.damage /= 6;
            _loc1_.ignoreBuffs = true;
            Skills.user.sendHit(_loc1_);
         },
         "effect2":function():*
         {
            Skills.user.castSpell(false,"ClassicPlantSpikes2");
         },
         "effect3":function():*
         {
            var _loc1_:* = new DamageObject(ClassicRafflesia);
            _loc1_.damage /= 6;
            Skills.user.sendHit(_loc1_);
         },
         "type":Stats.ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[450],
         "element":Element.BIO,
         "elementDegree":100
      });
      
      public static var ClassicJack:Summon = new Summon({
         "foe":"ClassicJack",
         "SP":80,
         "animations":["intro2","special3","flee"],
         "animation":DEFAULT_ANIMATIONS,
         "effect":function():*
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc1_)
               {
                  _loc1_.buff(Stats.ATTACK,100);
               }
               if(_loc1_)
               {
                  _loc1_.buff(Stats.MAGIC_ATTACK,100);
               }
            }
         },
         "target":Target.ALL_ALLY,
         "type":Stats.NONE,
         "element":Element.NONE,
         "buffEffect":"jack",
         "buffChance":[0],
         "buffDegree":[100]
      });
      
      public static var ATTACK_SINGLE:Array = [];
      
      public static var ATTACK_ALL:Array = [];
      
      public static var BUFF:Array = [];
      
      public static var DEBUFF:Array = [];
      
      public static var MISC:Array = [];
      
      public static var RECENT:Array = [];
      
      public static var PREMIUM:Array = [];
      
      public static const SORT_BY_SP:String = "SP cost";
      
      public static const SORT_BY_NAME:String = "name";
      
      public static const SORT_BY_BESTIARY:String = "bestiary";
      
      public function Summons()
      {
         super();
      }
      
      public static function init() : *
      {
         PREMIUM = [BossCyclopsGlacial,BossCyclopsInfernal,BossNestNinja,BossGolemFire,HydraIce,EvilMatt,EvilNatalie,EvilLance,EvilAnna,EvilNoLegs];
         ATTACK_SINGLE = [SlimeChocolate,SlimeIcecream,SlimeSand,SlimeLava,SlimeMouse,SlimeMud,SlimeWater,CreepBlue,CreepGreen,CreepRed,CreepIcicle,CreepThorny,CreepHermit,Defender2,DogWolf,DogTanuki,ChibiKnightUltra,GolemTopaz,FallenLost,FallenCrucified,FallenBeheaded,PixelSlime,PixelIdol,PixelBush,PixelBat,MirrorHaunted,MammothWooly,SquidPink,SlimeBigSand,SlimeBigLava,WormPutrid,WormFuzzy,WraithFire,WraithIce,WraithLeaf,WraithSteel,WraithMaster,Glitch2,HydraIce,BatBlood,BearBrown,BitWind,BitFire,BoulderCoral,BoulderSandstone,CatSniper,CatBomber,CatWarrior,BossCyclopsGlacial,BossCyclopsInfernal,DollAnna,ClassicSlime,ClassicBeholder,ClassicSandworm,ClassicEaterIce,ClassicEaterFire,ClassicClayBlue,ClassicClayRed,ClassicClayDark,ClassicSlingerGun,ClassicSlingerSword,WraithOrigami,CatSkeleton,BearBlack,ArcadeRobo,ArcadeSnek,ArcadeTreagure,ArcadePumpkus,ClassicCrystalRed,ClassicGigaGolem];
         ATTACK_ALL = [Defender1,DogMage,DogZap,GolemPearl,GolemAmethyst,FishGold,FishJet,FishSteam,FallenBurned,MonolithCosmic,MammothCamel,MammothWar,SquidPurple,SquidLime,Underlegs,SlimeBigMud,SlimeBigIcecream,SlimeBigChocolate,Glitch1,HydraZombie,HydraMagma,DragonEarth,DragonOmega,DragonSea,DragonSky,BearGrolar,BearPanda,BitWater,BitPoison,BoulderDirt,BoulderObsidian,BoulderMarble,DollLance,BossCyclopsDesert,BossCyclopsGlacial,BossCyclopsInfernal,BossGolemWater,BossGolemFire,BossNestCat,BossNestNinja,MammothWooly,EvilMatt,EvilNatalie,EvilLance,EvilAnna,EvilNoLegs,ClassicEyeball,ClassicProtector,Defender3,HydraOrigami,GolemBone,BossGigalith,BossDevourer,ArcadeChair,ArcadeMaw,ArcadeTreagure,ArcadePumpkus,SketchPapalotl,SketchGuncat,SketchGlaurung,SketchXolotl,ClassicPraetorian,ClassicRafflesia];
         BUFF = [SlimeBunny,DogFriend,HandSkeleton,HandMagma,FlybotBlue,FlybotRed,FallenDrowned,FallenBeheaded,MonolithAncient,MonolithViking,IdolWood,MirrorWise,MammothCamel,MammothWar,WormCutie,GloopWood,GloopAsh,FallenLost,BatBlood,BitIce,BitThunder,BitHoly,CatWizard,DollMatt,DollNatalie,BossNestCat,ChibiKnightUltra,ClassicSlimeKing,ClassicClayLight,CatNinja,WormBook,HydraOrigami,ArcadePhoenix,ArcadeMermaid,ArcadeTotom,ArcadeGuoye,ClassicPraetorian,ClassicJack];
         DEBUFF = [BushGreen,BushRed,BushDark,BushSand,BushMud,HandZombie,FlybotYellow,FlybotRed,GloopStone,GloopCrystal,DollNoLegs,SquidPurple,DragonEarth,DragonOmega,DragonSky,DragonSea,SquidLime,WormPutrid,SlimeChocolate,BitFire,BitWind,DogWolf,WraithLeaf,WraithSteel,WraithMaster,SquidPink,WormFuzzy,PixelBat,PixelBush,PixelIdol,PixelSlime,ClassicTree,ClassicWaspBlack,ClassicWaspRed,ClassicSandworm,ClassicEaterIce,ClassicEaterFire,ClassicClayBlue,ClassicClayRed,ClassicClayDark,ArcadeChair,ArcadeBosh,ArcadeRobo,ArcadeMaw,ArcadeSnek,ArcadeGlob,ArcadeTreagure,SketchGlaurung,SketchXolotl,ClassicCrystalRed,ClassicCrystalBlue,MonolithCosmic,BoulderMarble,DogMage,WraithFire,GolemPearl,SlimeBigChocolate,BoulderDirt,SlimeBigIcecream,SlimeIcecream,SlimeLava,SlimeMouse,FallenBurned,BitWater,BitPoison,CatBomber,HydraZombie,CatSkeleton];
         MISC = [MirrorAngel,MirrorDemon,HandMagma,IdolGem,IdolMetal,IdolStone,WormScaly,DogFriend,BatBone,BatSnow,SpriteFire,SpriteThunder,SpriteRock,SpriteWind,SpriteIce,ChomperLeafy,ChomperMagma,ChomperMutant,ChomperSeaweed,CatNinja,BatThunder,WraithFire,GloopFab];
         RECENT = [];
         ALL_SUMMONS = [BossNestCat,BossNestNinja,EvilMatt,EvilNatalie,EvilLance,EvilAnna,EvilNoLegs,BoulderSandstone,BoulderDirt,CatNinja,CatSniper,CatWizard,CatBomber,CatWarrior,DollMatt,DollNatalie,DollLance,DollAnna,DollNoLegs,BossCyclopsGlacial,BossCyclopsInfernal,BossCyclopsDesert,BossGolemFire,BossGolemWater,DragonEarth,DragonSky,DragonSea,DragonOmega,BatBlood,BatSnow,BatThunder,BatBone,BearBrown,BearGrolar,BearPanda,BitIce,BitThunder,BitHoly,BitWind,BitFire,BitWater,BitPoison,BoulderCoral,BoulderMarble,BoulderObsidian,MirrorAngel,WormScaly,WormPutrid,WormFuzzy,WormCutie,WraithIce,WraithFire,WraithSteel,WraithLeaf,WraithMaster,Glitch2,Glitch1,GloopStone,GloopCrystal,GloopAsh,GloopWood,HydraZombie,HydraMagma,HydraIce,MirrorWise,MirrorDemon,MirrorHaunted,MammothWooly,MammothCamel,MammothWar,SquidPurple,SquidPink,SquidLime,Underlegs,SlimeBigSand,SlimeBigLava,SlimeBigMud,SlimeBigIcecream,SlimeBigChocolate,FlybotYellow,FlybotRed,FallenLost,FallenCrucified,FallenDrowned,FallenBurned,FallenBeheaded,PixelSlime,PixelBat,PixelBush,PixelIdol,MonolithViking,MonolithAncient,MonolithCosmic,IdolGem,IdolStone,IdolMetal,IdolWood,Defender1,Defender2,DogFriend,DogTanuki,DogWolf,DogZap,DogMage,ChibiKnightUltra,BushGreen,BushRed,BushMud,BushSand,BushDark,GolemTopaz,GolemPearl,GolemAmethyst,FishSteam,FishJet,FishGold,HandSkeleton,HandMagma,HandZombie,FlybotBlue,SlimeChocolate,SlimeIcecream,SlimeSand,SlimeLava,SlimeWater,SlimeMouse,SlimeMud,SlimeBunny,SpriteFire,SpriteIce,SpriteRock,SpriteWind,SpriteThunder,ChomperLeafy,ChomperSeaweed,ChomperMagma,ChomperMutant,CreepThorny,CreepIcicle,CreepHermit,CreepGreen,CreepRed,CreepBlue,DogMaxi,ClassicSlime,ClassicSlimeKing,ClassicTree,ClassicEyeball,ClassicBeholder,ClassicWaspBlack,ClassicWaspRed,ClassicSandworm,ClassicEaterIce,ClassicEaterFire,ClassicClayBlue,ClassicClayRed,ClassicClayDark,ClassicClayLight,ClassicProtector,ClassicSlingerGun,ClassicSlingerSword,WraithOrigami,GloopFab,WormBook,HydraOrigami,Defender3,CatSkeleton,BearBlack,GolemBone,ArcadePhoenix,ArcadeBosh,ArcadeChair,ArcadeMermaid,ArcadeRobo,ArcadeMaw,ArcadeSnek,ArcadeGlob,ArcadeTreagure,ArcadePumpkus,ArcadeTotom,ArcadeGuoye,SketchPapalotl,SketchGuncat,SketchGlaurung,SketchXolotl,ClassicPraetorian,ClassicCrystalRed,ClassicCrystalBlue,ClassicGigaGolem,ClassicRafflesia,ClassicJack,BossGigalith,BossDevourer];
         OWNED_SUMMONS = [];
         if(Debug.allSummons)
         {
            OWNED_SUMMONS = ALL_SUMMONS.concat();
         }
         var _loc1_:int = 0;
         while(_loc1_ < ALL_SUMMONS.length)
         {
            (ALL_SUMMONS[_loc1_] as Summon).equipped = false;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < PREMIUM.length)
         {
            (PREMIUM[_loc1_] as Summon).premium = true;
            _loc1_++;
         }
         if(Debug.skillSet <= 1)
         {
            PARTY_SUMMONS = [Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty];
         }
         if(Debug.skillSet == 2)
         {
            PARTY_SUMMONS = [WormPutrid,WraithSteel,GloopAsh,SpriteIce,SlimeBigChocolate,BatThunder,BoulderCoral,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty,Equips.empty];
         }
         if(Debug.skillSet == 3)
         {
            PARTY_SUMMONS = [IdolWood,FlybotRed,SlimeBunny,BitIce,BatThunder,HandMagma,FallenCrucified,CreepBlue,BearPanda,ChomperLeafy,MonolithViking,MonolithAncient,GolemTopaz,BossNestNinja,BossCyclopsDesert,BossGolemWater,Equips.empty,Equips.empty];
         }
         setBestiaryNumbers();
         sortAllSummons(sortMethod);
         initialized = true;
      }
      
      public static function checkWhichSummonsAreEquipped() : *
      {
         var _loc1_:Summon = null;
         for each(_loc1_ in OWNED_SUMMONS)
         {
            if(PARTY_SUMMONS.indexOf(_loc1_) != -1)
            {
               _loc1_.equipped = true;
            }
            else
            {
               _loc1_.equipped = false;
            }
         }
      }
      
      public static function setBestiaryNumbers() : *
      {
         var _loc1_:Summon = null;
         for each(_loc1_ in ALL_SUMMONS)
         {
            _loc1_.bestiary = Foes.FOES.indexOf(getDefinitionByName("foes." + _loc1_.foeClassName));
         }
      }
      
      public static function sortAllSummons(param1:String) : *
      {
         var _loc2_:Array = null;
         var _loc3_:Summon = null;
         if(param1 == SORT_BY_NAME)
         {
            for each(_loc3_ in ALL_SUMMONS)
            {
               if(Boolean(Summons.info[_loc3_.fname]) && Summons.info[_loc3_.fname]["nickname"] != "")
               {
                  _loc3_.nickname = Summons.info[_loc3_.fname]["nickname"];
               }
               else
               {
                  _loc3_.nickname = _loc3_.name;
               }
            }
         }
         for each(_loc2_ in [OWNED_SUMMONS,ATTACK_ALL,ATTACK_SINGLE,BUFF,DEBUFF,MISC])
         {
            if(param1 == SORT_BY_SP)
            {
               _loc2_.sortOn("SP",Array.NUMERIC);
            }
            if(param1 == SORT_BY_NAME)
            {
               _loc2_.sortOn("nickname");
            }
            if(param1 == SORT_BY_BESTIARY)
            {
               _loc2_.sortOn("bestiary",Array.NUMERIC);
            }
         }
         sortMethod = param1;
      }
      
      public static function loseSummon(param1:Summon) : *
      {
         param1.equipped = false;
         if(info[param1.foeClassName])
         {
            info[param1.foeClassName] = null;
            delete info[param1.foeClassName];
         }
         Summons.OWNED_SUMMONS.splice(Summons.OWNED_SUMMONS.indexOf(param1),1);
         if(Summons.PARTY_SUMMONS.indexOf(param1) != -1)
         {
            Summons.PARTY_SUMMONS.splice(Summons.PARTY_SUMMONS.indexOf(param1),1,Equips.empty);
         }
         if(Summons.RECENT.indexOf(param1) != -1)
         {
            Summons.RECENT.splice(Summons.RECENT.indexOf(param1),1);
         }
      }
   }
}

