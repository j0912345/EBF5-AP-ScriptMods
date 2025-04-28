package
{
   import com.newgrounds.*;
   import flash.net.*;
   
   public class Medals
   {
      public static var current:Object;
      
      public static var MAX_MEDAL_COUNT:int = 133;
      
      public static var stats:Object = {
         "notHit":false,
         "kills":0
      };
      
      public static var adMedal:Object = {
         "SID":"adMedal",
         "icon":0
      };
      
      public static var whatGame:Object = {
         "SID":"whatGame",
         "icon":1,
         "value":100
      };
      
      public static var backAttack:Object = {
         "SID":"backAttack",
         "icon":2
      };
      
      public static var expPipeline:Object = {
         "SID":"expPipeline",
         "icon":3,
         "value":1337
      };
      
      public static var unlimitedBladeWorks:Object = {
         "SID":"unlimitedBladeWorks",
         "icon":4,
         "value":151
      };
      
      public static var upgradeComplete:Object = {
         "SID":"upgradeComplete",
         "icon":5
      };
      
      public static var notPokemon:Object = {
         "SID":"notPokemon",
         "icon":6
      };
      
      public static var slaveTrader:Object = {
         "SID":"slaveTrader",
         "icon":7
      };
      
      public static var beastTamer:Object = {
         "SID":"beastTamer",
         "icon":8
      };
      
      public static var bosssBoss:Object = {
         "SID":"bosssBoss",
         "icon":9,
         "value":4
      };
      
      public static var masterOfGods:Object = {
         "SID":"masterOfGods",
         "icon":10,
         "value":2
      };
      
      public static var limitsBroken:Object = {
         "SID":"limitsBroken",
         "icon":11
      };
      
      public static var nuclearHolocaust:Object = {
         "SID":"nuclearHolocaust",
         "icon":12
      };
      
      public static var noneAreSafe:Object = {
         "SID":"noneAreSafe",
         "icon":13,
         "value":50
      };
      
      public static var noneAreFree:Object = {
         "SID":"noneAreFree",
         "icon":14,
         "value":100
      };
      
      public static var ripInPeace:Object = {
         "SID":"ripInPeace",
         "icon":15
      };
      
      public static var skilledCustomisation:Object = {
         "SID":"skilledCustomisation",
         "icon":16
      };
      
      public static var skilledLearner:Object = {
         "SID":"skilledLearner",
         "icon":17
      };
      
      public static var conductiveStatus:Object = {
         "SID":"conductiveStatus",
         "icon":18
      };
      
      public static var showMercy:Object = {
         "SID":"showMercy",
         "icon":19
      };
      
      public static var showCruelty:Object = {
         "SID":"showCruelty",
         "icon":20
      };
      
      public static var unusualTorture:Object = {
         "SID":"unusualTorture",
         "icon":21
      };
      
      public static var roidRage:Object = {
         "SID":"roidRage",
         "icon":22
      };
      
      public static var catPerson:Object = {
         "SID":"catPerson",
         "icon":23
      };
      
      public static var niceGuy:Object = {
         "SID":"niceGuy",
         "icon":24
      };
      
      public static var childMinder:Object = {
         "SID":"childMinder",
         "icon":25
      };
      
      public static var baitAndSwitch:Object = {
         "SID":"baitAndSwitch",
         "icon":26
      };
      
      public static var helpingHand:Object = {
         "SID":"helpingHand",
         "icon":27,
         "value":10
      };
      
      public static var publicServant:Object = {
         "SID":"publicServant",
         "icon":28,
         "value":20
      };
      
      public static var questCuck:Object = {
         "SID":"questCuck",
         "icon":29,
         "value":30
      };
      
      public static var xrayGoggles:Object = {
         "SID":"xrayGoggles",
         "icon":30,
         "value":125
      };
      
      public static var likeABird:Object = {
         "SID":"likeABird",
         "icon":31,
         "value":50
      };
      
      public static var eagleEye:Object = {
         "SID":"eagleEye",
         "icon":32,
         "value":100
      };
      
      public static var treasureHunter:Object = {
         "SID":"treasureHunter",
         "icon":33,
         "value":200
      };
      
      public static var chestGrabber:Object = {
         "SID":"chestGrabber",
         "icon":34,
         "value":400
      };
      
      public static var professionalBurglar:Object = {
         "SID":"professionalBurglar",
         "icon":35,
         "value":600
      };
      
      public static var artConnoisseur:Object = {
         "SID":"artConnoisseur",
         "icon":36
      };
      
      public static var coolingOff:Object = {
         "SID":"coolingOff",
         "icon":37,
         "value":9
      };
      
      public static var damage1:Object = {
         "SID":"damage1",
         "icon":38,
         "value":1000
      };
      
      public static var damage2:Object = {
         "SID":"damage2",
         "icon":39,
         "value":10000
      };
      
      public static var damage3:Object = {
         "SID":"damage3",
         "icon":40,
         "value":100000
      };
      
      public static var damage4:Object = {
         "SID":"damage4",
         "icon":41,
         "value":1000000
      };
      
      public static var damage5:Object = {
         "SID":"damage5",
         "icon":42,
         "value":10000000
      };
      
      public static var over100Percent:Object = {
         "SID":"over100Percent",
         "icon":43,
         "value":100
      };
      
      public static var secondChance:Object = {
         "SID":"secondChance",
         "icon":44
      };
      
      public static var unfavourableWeather:Object = {
         "SID":"unfavourableWeather",
         "icon":45
      };
      
      public static var favourableWeather:Object = {
         "SID":"favourableWeather",
         "icon":46
      };
      
      public static var confusion:Object = {
         "SID":"confusion",
         "icon":47
      };
      
      public static var fogOfWar:Object = {
         "SID":"fogOfWar",
         "icon":48
      };
      
      public static var berzerkersRage:Object = {
         "SID":"berzerkersRage",
         "icon":49
      };
      
      public static var disarmed:Object = {
         "SID":"disarmed",
         "icon":50
      };
      
      public static var uncontrollableHunger:Object = {
         "SID":"uncontrollableHunger",
         "icon":51
      };
      
      public static var pervert:Object = {
         "SID":"pervert",
         "icon":52
      };
      
      public static var partySoftly:Object = {
         "SID":"partySoftly",
         "icon":53
      };
      
      public static var glitch:Object = {
         "SID":"glitch",
         "icon":54
      };
      
      public static var slipNSlide:Object = {
         "SID":"slipNSlide",
         "icon":55
      };
      
      public static var riverRapids:Object = {
         "SID":"riverRapids",
         "icon":56
      };
      
      public static var codeBreaker:Object = {
         "SID":"codeBreaker",
         "icon":57
      };
      
      public static var dimDepths:Object = {
         "SID":"dimDepths",
         "icon":58
      };
      
      public static var secretWorld:Object = {
         "SID":"secretWorld",
         "icon":59
      };
      
      public static var wheresSatan:Object = {
         "SID":"wheresSatan",
         "icon":60
      };
      
      public static var bookWorm:Object = {
         "SID":"bookWorm",
         "icon":61
      };
      
      public static var videoGames:Object = {
         "SID":"videoGames",
         "icon":62
      };
      
      public static var familyRoots:Object = {
         "SID":"familyRoots",
         "icon":63
      };
      
      public static var sometimesInvincible:Object = {
         "SID":"sometimesInvincible",
         "icon":64
      };
      
      public static var secretFarm:Object = {
         "SID":"secretFarm",
         "icon":65
      };
      
      public static var cartographer:Object = {
         "SID":"cartographer",
         "icon":66
      };
      
      public static var genericHoliday:Object = {
         "SID":"genericHoliday",
         "icon":67
      };
      
      public static var wanderingOut:Object = {
         "SID":"wanderingOut",
         "icon":68
      };
      
      public static var overTheWall:Object = {
         "SID":"overTheWall",
         "icon":69
      };
      
      public static var swamped:Object = {
         "SID":"swamped",
         "icon":70
      };
      
      public static var arcticExpedition:Object = {
         "SID":"arcticExpedition",
         "icon":71
      };
      
      public static var alienLandscape:Object = {
         "SID":"alienLandscape",
         "icon":72
      };
      
      public static var worldSaved:Object = {
         "SID":"worldSaved",
         "icon":73
      };
      
      public static var tunnelVision:Object = {
         "SID":"tunnelVision",
         "icon":74
      };
      
      public static var popEye:Object = {
         "SID":"popEye",
         "icon":75,
         "epic":true
      };
      
      public static var bashTheFash:Object = {
         "SID":"bashTheFash",
         "icon":76,
         "epic":true
      };
      
      public static var barkAndBite:Object = {
         "SID":"barkAndBite",
         "icon":77,
         "epic":true
      };
      
      public static var forgottenMyths:Object = {
         "SID":"forgottenMyths",
         "icon":78,
         "epic":true
      };
      
      public static var firewood:Object = {
         "SID":"firewood",
         "icon":79,
         "epic":true
      };
      
      public static var goldenGod:Object = {
         "SID":"goldenGod",
         "icon":80,
         "epic":true
      };
      
      public static var tripleDead:Object = {
         "SID":"tripleDead",
         "icon":81,
         "epic":true
      };
      
      public static var ultimateHero:Object = {
         "SID":"ultimateHero",
         "icon":82,
         "epic":true
      };
      
      public static var determination:Object = {
         "SID":"determination",
         "icon":83,
         "epic":true
      };
      
      public static var reformat:Object = {
         "SID":"reformat",
         "icon":84
      };
      
      public static var doubleTrouble:Object = {
         "SID":"doubleTrouble",
         "icon":85,
         "epic":true
      };
      
      public static var drillBreaker:Object = {
         "SID":"drillBreaker",
         "icon":86,
         "epic":true
      };
      
      public static var catastrophe:Object = {
         "SID":"catastrophe",
         "icon":87,
         "epic":true
      };
      
      public static var fryyoufools:Object = {
         "SID":"fryyoufools",
         "icon":88,
         "epic":true
      };
      
      public static var noRespawns:Object = {
         "SID":"noRespawns",
         "icon":89,
         "epic":true
      };
      
      public static var dungeonCrawler:Object = {
         "SID":"dungeonCrawler",
         "icon":90
      };
      
      public static var dustToDust:Object = {
         "SID":"dustToDust",
         "icon":91,
         "epic":true
      };
      
      public static var burnTheWitch:Object = {
         "SID":"burnTheWitch",
         "icon":92,
         "epic":true
      };
      
      public static var twistedMetal:Object = {
         "SID":"twistedMetal",
         "icon":93,
         "epic":true
      };
      
      public static var demonHunter:Object = {
         "SID":"demonHunter",
         "icon":94,
         "epic":true
      };
      
      public static var superSaiyan:Object = {
         "SID":"superSaiyan",
         "icon":95,
         "epic":true
      };
      
      public static var realDeal:Object = {
         "SID":"realDeal",
         "icon":96
      };
      
      public static var minibossSlayer:Object = {
         "SID":"minibossSlayer",
         "icon":103,
         "epic":true
      };
      
      public static var bossSlayer:Object = {
         "SID":"bossSlayer",
         "icon":97,
         "epic":true
      };
      
      public static var megaBossSlayer:Object = {
         "SID":"megaBossSlayer",
         "icon":98,
         "epic":true
      };
      
      public static var deathbringer:Object = {
         "SID":"deathbringer",
         "icon":99,
         "epic":true
      };
      
      public static var endgame:Object = {
         "SID":"endgame",
         "icon":100,
         "value":30
      };
      
      public static var secretSoundboard:Object = {
         "SID":"secretSoundboard",
         "icon":101,
         "value":5
      };
      
      public static var burningSoul:Object = {
         "SID":"burningSoul",
         "icon":102,
         "epic":true
      };
      
      public static var sixthSense:Object = {
         "SID":"sixthSense",
         "icon":104,
         "value":200
      };
      
      public static var criticalCondition:Object = {
         "SID":"criticalCondition",
         "icon":111
      };
      
      public static var gottaCatchEmAll:Object = {
         "SID":"gottaCatchEmAll",
         "icon":105,
         "value":151
      };
      
      public static var newStrats:Object = {
         "SID":"newStrats",
         "icon":107,
         "value":30
      };
      
      public static var retaliation:Object = {
         "SID":"retaliation",
         "icon":108,
         "value":30
      };
      
      public static var extremeDifficulty:Object = {
         "SID":"extremeDifficulty",
         "icon":136
      };
      
      public static var outOfBounds:Object = {
         "SID":"outOfBounds",
         "icon":112
      };
      
      public static var gameCollector:Object = {
         "SID":"gameCollector",
         "icon":114
      };
      
      public static var retroGamer:Object = {
         "SID":"retroGamer",
         "icon":113,
         "epic":true
      };
      
      public static var historyLessons:Object = {
         "SID":"historyLessons",
         "icon":124
      };
      
      public static var ebf1:Object = {
         "SID":"ebf1",
         "icon":115,
         "epic":true
      };
      
      public static var ebf2:Object = {
         "SID":"ebf2",
         "icon":116,
         "epic":true
      };
      
      public static var ebf3:Object = {
         "SID":"ebf3",
         "icon":117,
         "epic":true
      };
      
      public static var ebf4:Object = {
         "SID":"ebf4",
         "icon":121,
         "epic":true
      };
      
      public static var epicDuo:Object = {
         "SID":"epicDuo",
         "icon":122,
         "epic":true
      };
      
      public static var epicTrio:Object = {
         "SID":"epicTrio",
         "icon":123,
         "epic":true
      };
      
      public static var gladiators:Object = {
         "SID":"gladiators",
         "icon":125
      };
      
      public static var soloSwordsman:Object = {
         "SID":"soloSwordsman",
         "icon":126,
         "epic":true
      };
      
      public static var wizardBattle:Object = {
         "SID":"wizardBattle",
         "icon":127,
         "epic":true
      };
      
      public static var shootingRange:Object = {
         "SID":"shootingRange",
         "icon":128,
         "epic":true
      };
      
      public static var bowMaster:Object = {
         "SID":"bowMaster",
         "icon":129,
         "epic":true
      };
      
      public static var catAttack:Object = {
         "SID":"catAttack",
         "icon":130,
         "epic":true
      };
      
      public static var paperShredder:Object = {
         "SID":"paperShredder",
         "icon":131,
         "epic":true
      };
      
      public static var unchartedIslands:Object = {
         "SID":"unchartedIslands",
         "icon":109
      };
      
      public static var adventureRemix:Object = {
         "SID":"adventureRemix",
         "icon":135
      };
      
      public static var questCompletionist:Object = {
         "SID":"questCompletionist",
         "icon":110,
         "value":40
      };
      
      public static var tradingCards:Object = {
         "SID":"tradingCards",
         "icon":132,
         "value":25
      };
      
      public static var cardShark:Object = {
         "SID":"cardShark",
         "icon":133,
         "value":50
      };
      
      public static var epidemic:Object = {
         "SID":"epidemic",
         "icon":106
      };
      
      public static var bestCustomer:Object = {
         "SID":"bestCustomer",
         "icon":134
      };
      
      public static var watchCredits:Object = {
         "SID":"watchCredits",
         "icon":137
      };
      
      public static var MEDALS:Array = [whatGame,wanderingOut,slipNSlide,overTheWall,partySoftly,swamped,riverRapids,arcticExpedition,alienLandscape,worldSaved,secretSoundboard,skilledLearner,skilledCustomisation,roidRage,coolingOff,upgradeComplete,conductiveStatus,secondChance,sometimesInvincible,over100Percent,confusion,uncontrollableHunger,disarmed,fogOfWar,berzerkersRage,backAttack,ripInPeace,favourableWeather,unfavourableWeather,expPipeline,limitsBroken,nuclearHolocaust,unlimitedBladeWorks,showMercy,showCruelty,unusualTorture,slaveTrader,beastTamer,bosssBoss,notPokemon,noneAreSafe,noneAreFree,xrayGoggles,familyRoots,secretFarm,videoGames,bookWorm,artConnoisseur,pervert,wheresSatan,codeBreaker,glitch,dimDepths,secretWorld,cartographer,catPerson,niceGuy,childMinder,baitAndSwitch,helpingHand,publicServant,questCuck,genericHoliday,treasureHunter,chestGrabber,professionalBurglar,likeABird,eagleEye,damage1,damage2,damage3,damage4,damage5,popEye,firewood,bashTheFash,barkAndBite,forgottenMyths,goldenGod,tripleDead,determination,reformat,ultimateHero,masterOfGods,tunnelVision,dungeonCrawler,realDeal,doubleTrouble,drillBreaker,catastrophe,fryyoufools,noRespawns,burningSoul,dustToDust,burnTheWitch,twistedMetal,demonHunter,superSaiyan,bossSlayer,megaBossSlayer,deathbringer,endgame,minibossSlayer,adMedal,sixthSense,criticalCondition,gottaCatchEmAll,newStrats,extremeDifficulty,outOfBounds,gameCollector,retroGamer,historyLessons,ebf1,ebf2,ebf3,ebf4,epicDuo,epicTrio,gladiators,soloSwordsman,wizardBattle,shootingRange,bowMaster,catAttack,paperShredder,unchartedIslands,adventureRemix,questCompletionist,tradingCards,cardShark,epidemic,bestCustomer,retaliation,watchCredits];
      
      public static var MEDALS_DISPLAY:Array = [whatGame,wanderingOut,slipNSlide,overTheWall,partySoftly,swamped,riverRapids,arcticExpedition,familyRoots,alienLandscape,worldSaved,skilledLearner,skilledCustomisation,roidRage,coolingOff,upgradeComplete,conductiveStatus,secondChance,sometimesInvincible,berzerkersRage,disarmed,fogOfWar,uncontrollableHunger,confusion,backAttack,ripInPeace,favourableWeather,unfavourableWeather,expPipeline,limitsBroken,nuclearHolocaust,unlimitedBladeWorks,showMercy,showCruelty,unusualTorture,slaveTrader,beastTamer,notPokemon,noneAreSafe,noneAreFree,bosssBoss,xrayGoggles,secretFarm,videoGames,bookWorm,artConnoisseur,pervert,wheresSatan,codeBreaker,cartographer,over100Percent,catPerson,niceGuy,childMinder,baitAndSwitch,helpingHand,publicServant,questCuck,genericHoliday,dimDepths,secretWorld,treasureHunter,chestGrabber,likeABird,eagleEye,secretSoundboard,glitch,damage1,damage2,damage3,damage4,damage5,popEye,firewood,bashTheFash,barkAndBite,forgottenMyths,goldenGod,tripleDead,burningSoul,determination,reformat,ultimateHero,adMedal];
      
      public static var MEDALS_DISPLAY_PREMIUM:Array = [whatGame,wanderingOut,slipNSlide,overTheWall,partySoftly,swamped,riverRapids,arcticExpedition,familyRoots,alienLandscape,unchartedIslands,worldSaved,skilledLearner,skilledCustomisation,roidRage,coolingOff,upgradeComplete,bestCustomer,conductiveStatus,criticalCondition,secondChance,epidemic,sometimesInvincible,berzerkersRage,disarmed,fogOfWar,uncontrollableHunger,confusion,backAttack,ripInPeace,favourableWeather,unfavourableWeather,expPipeline,limitsBroken,nuclearHolocaust,unlimitedBladeWorks,showMercy,showCruelty,unusualTorture,slaveTrader,beastTamer,notPokemon,noneAreSafe,noneAreFree,bosssBoss,gottaCatchEmAll,xrayGoggles,secretFarm,videoGames,bookWorm,artConnoisseur,pervert,wheresSatan,codeBreaker,cartographer,secretSoundboard,adventureRemix,over100Percent,catPerson,niceGuy,childMinder,baitAndSwitch,helpingHand,publicServant,questCuck,genericHoliday,questCompletionist,dimDepths,secretWorld,treasureHunter,chestGrabber,professionalBurglar,tunnelVision,likeABird,eagleEye,sixthSense,glitch,damage1,damage2,damage3,damage4,damage5,tradingCards,cardShark,watchCredits,retaliation,newStrats,extremeDifficulty,outOfBounds,gameCollector,historyLessons,gladiators,dungeonCrawler,realDeal,reformat,popEye,firewood,bashTheFash,barkAndBite,forgottenMyths,goldenGod,tripleDead,burningSoul,determination,doubleTrouble,drillBreaker,catastrophe,fryyoufools,noRespawns,paperShredder,ebf1,ebf2,ebf3,ebf4,soloSwordsman,wizardBattle,shootingRange,bowMaster,catAttack,dustToDust,burnTheWitch,twistedMetal,demonHunter,superSaiyan,ultimateHero,epicDuo,epicTrio,retroGamer,deathbringer,minibossSlayer,bossSlayer,megaBossSlayer,endgame];
      
      public function Medals()
      {
         super();
      }
      
      public static function reset() : *
      {
         var _loc1_:Object = null;
         for each(_loc1_ in MEDALS)
         {
            _loc1_.unlocked = false;
            _loc1_.aced = false;
         }
         SaveData.endlessBattlesScore = 0;
         Options.catSimulator = false;
         Options.oneHP = false;
         Options.sillyNPCs = false;
         saveMisc();
      }
      
      public static function isAce() : Boolean
      {
         return !Options.cheatsOnForMedals() && Options.difficulty == Options.EPIC && Options.allChallenges();
      }
      
      public static function saveMisc() : *
      {
         var a:Array;
         var b:Array;
         var i:int;
         var so:SharedObject = null;
         var data:Object = {};
         if(Options.enableSols)
         {
            so = SharedObject.getLocal("EBF5misc");
            data = so.data;
         }
         a = [];
         b = [];
         i = 0;
         while(i < MEDALS.length)
         {
            a[i] = MEDALS[i].unlocked;
            b[i] = MEDALS[i].aced;
            i++;
         }
         data.medals = a;
         data.aces = b;
         data.score = SaveData.endlessBattlesScore;
         if(Options.applicationFeatures && Main.messagesEnabled)
         {
            SaveData.exeSave = "medals";
            SaveData.convertDataToJSON(data,true,false,true);
         }
         try
         {
            if(Options.enableSols)
            {
               so.flush();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function submitDataCallback(param1:Object) : void
      {
         if(!param1.success)
         {
         }
      }
      
      public static function loadOnlineMedals() : *
      {
         if(!Debug.armorGames)
         {
            return;
         }
         try
         {
            Main.armorAPI.retrieveUserData(recieveDataCallback,"medals");
         }
         catch(e:Error)
         {
         }
      }
      
      public static function recieveDataCallback(param1:Object) : void
      {
         var _loc2_:int = 0;
         if(Boolean(param1.success) && Boolean(param1.data))
         {
            _loc2_ = 0;
            while(_loc2_ < MEDALS.length)
            {
               MEDALS[_loc2_].unlocked = param1.data[_loc2_];
               _loc2_++;
            }
         }
      }
      
      public static function sendMedals() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < MEDALS.length)
         {
            _loc1_[_loc2_] = MEDALS[_loc2_].unlocked;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public static function recieveMedals(param1:Array) : *
      {
         var _loc2_:int = 0;
         while(_loc2_ < MEDALS.length)
         {
            MEDALS[_loc2_].unlocked = param1[_loc2_];
            _loc2_++;
         }
      }
      
      public static function loadMisc(param1:Object = null) : *
      {
         var _loc2_:SharedObject = null;
         var _loc3_:Object = null;
         if(!param1)
         {
            _loc2_ = SharedObject.getLocal("EBF5misc");
         }
         if(param1)
         {
            _loc3_ = param1;
         }
         else
         {
            _loc3_ = _loc2_.data;
         }
         if(!_loc3_.medals)
         {
            return;
         }
         var _loc4_:int = 0;
         while(_loc4_ < MEDALS.length)
         {
            MEDALS[_loc4_].unlocked = _loc3_.medals[_loc4_];
            if(Debug.allMedals)
            {
               MEDALS[_loc4_].unlocked = true;
            }
            _loc4_++;
         }
         if(_loc3_.aces)
         {
            _loc4_ = 0;
            while(_loc4_ < MEDALS.length)
            {
               MEDALS[_loc4_].aced = _loc3_.aces[_loc4_];
               _loc4_++;
            }
         }
         SaveData.endlessBattlesScore = _loc3_.score;
      }
      
      public static function unlock(param1:Object) : *
      {
         var doSave:Boolean;
         var medal:Object = param1;
         if(!Debug.dialogueEnabled || Debug.expoDemo || Debug.trailerMode)
         {
            return;
         }
         doSave = false;
         if(medal.epic || medal == reformat || medal == endgame)
         {
            if(isAce())
            {
               medal.aced = true;
               doSave = true;
            }
         }
         if(!medal.unlocked)
         {
            if(!(Boolean(medal.epic) && (Options.difficulty != Options.EPIC || Options.cheatsOnForMedals())))
            {
               medal.unlocked = true;
               Main.sendMessage("unlockMedal",medal.SID);
               current = medal;
               try
               {
                  Game.root.medalBox.gotoAndPlay(100);
                  Game.root.medalBox.gotoAndPlay(2);
                  Game.root.setChildIndex(Game.root.medalBox,Game.root.numChildren - 1);
               }
               catch(e:Error)
               {
               }
               if(Options.newgroundsVersion)
               {
                  try
                  {
                     API.unlockMedal(medal.MID);
                  }
                  catch(e:Error)
                  {
                  }
               }
               countMedals();
               doSave = true;
            }
         }
         if(doSave)
         {
            saveMisc();
         }
      }
      
      public static function resendMedal(param1:*) : *
      {
         var MID:* = param1;
         if(Options.newgroundsVersion)
         {
            try
            {
               API.unlockMedal(MID);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public static function strReplace(param1:String, param2:String, param3:String) : String
      {
         return param1.split(param2).join(param3);
      }
      
      public static function sendArmorMedals(param1:Object) : *
      {
         var med:Object = null;
         var medalName:String = null;
         var medal:Object = param1;
         if(Debug.armorGames)
         {
            try
            {
               for each(med in [chicken,fullparty,deathpenalty,blacksmith,NPChelper,keeneyes,level33,lostruins,treasurehunter,d3m,quest1,leethacker])
               {
                  if(medal == med)
                  {
                     medalName = strReplace(medal.name[0]," ","_");
                     medalName = strReplace(medalName,"\'","");
                     Main.armorQuests.achievements.submit({"key":medalName});
                     break;
                  }
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public static function resendMedals() : *
      {
      }
      
      public static function countMedals() : int
      {
         var _loc1_:int = 0;
         var _loc2_:Array = MEDALS_DISPLAY;
         if(Main.hasPremium)
         {
            _loc2_ = MEDALS_DISPLAY_PREMIUM;
         }
         var _loc3_:int = 1;
         while(_loc3_ <= _loc2_.length)
         {
            if(_loc2_[_loc3_ - 1].unlocked)
            {
               _loc1_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      public static function checkDungeons() : *
      {
         if(Boolean(Flags.SUPER_CYCLOPS_DEFEATED.quantity) && Boolean(Flags.SUPER_TANK_DEFEATED.quantity) && Boolean(Flags.SUPER_NEST_DEFEATED.quantity) && Boolean(Flags.SUPER_GOLEM_DEFEATED.quantity) && Boolean(Flags.ICE_HYDRA_DEFEATED.quantity))
         {
            Medals.unlock(Medals.dungeonCrawler);
         }
      }
   }
}

