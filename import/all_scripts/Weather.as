package
{
   import foes.*;
   
   public class Weather
   {
      public static var weatherPlayer:Player;
      
      public static var weatherFoe:Foe;
      
      public static var NONE:Weather = new Weather("normal","");
      
      public static var CLEAR:Weather = new Weather("clear","");
      
      public static var RAIN:Weather = new Weather("rain","Rain");
      
      public static var SNOW:Weather = new Weather("blizzard","Snow");
      
      public static var ASH:Weather = new Weather("ash","Ash");
      
      public static var SUNNY:Weather = new Weather("sunny","Sunshine");
      
      public static var ACID:Weather = new Weather("acid","AcidRain");
      
      public static var EARTHQUAKE:Weather = new Weather("earthquake","Earthquake");
      
      public static var HAIL:Weather = new Weather("hail","Hail");
      
      public static var BLOSSOM:Weather = new Weather("blossom","Petals");
      
      public static var LEAVES:Weather = new Weather("leaves","Leaves");
      
      public static var SANDSTORM:Weather = new Weather("sandstorm","Sandstorm");
      
      public static var WINDY:Weather = new Weather("windy","Wind");
      
      public static var ELECTRIC:Weather = new Weather("electric","Static");
      
      public static var SACRED:Weather = new Weather("sacred","SacredGround");
      
      public static var CURSED:Weather = new Weather("cursed","EvilGround");
      
      public static var LOW_GRAVITY:Weather = new Weather("lowgravity","LowGravity");
      
      public static var HIGH_GRAVITY:Weather = new Weather("highgravity","HighGravity");
      
      public static var RADIATION:Weather = new Weather("radiation","Radiation");
      
      public static var ENERGY:Weather = new Weather("energy","Neon");
      
      public static var FOG:Weather = new Weather("fog","Fog");
      
      public static var GLITCH:Weather = new Weather("glitchy","Glitchy");
      
      public static var GLITCH_2:Weather = new Weather("glitchy2","Glitchy2");
      
      public static var FALLINGSTARS:Weather = new Weather("fallingstars","s",[Spells.luckystar2]);
      
      public static var AIRSTRIKES:Weather = new Weather("airstrikes","s",[Spells.airstrike1,Spells.airstrike2,Spells.airstrike2,Spells.medipack]);
      
      public static var ERUPTION:Weather = new Weather("eruption","s",[Spells.firerock]);
      
      public static var OVERGROWTH:Weather = new Weather("overgrowth","s",[Spells.ivy,Spells.ivy,Spells.vines]);
      
      public static var GEYSERS:Weather = new Weather("geysers","s",[Spells.geysergush,Spells.geysergush,Spells.pouringpike,Spells.scald]);
      
      public static var LAVAFLOW:Weather = new Weather("lavaflow","s",[Spells.fume,Spells.fume,Spells.scald]);
      
      public static var UNDEAD:Weather = new Weather("undead","s",[Spells.bones,Spells.bones,Spells.bonestar,Spells.groundblade,Spells.groundblade]);
      
      public static var THUNDERSTORM:Weather = new Weather("thunderstorm","s",[Spells.thunderbolt,Spells.thunder]);
      
      public static var STALACTITES:Weather = new Weather("stalactites","s",[Spells.stalactite,Spells.stalactite,Spells.stalactite,Spells.stalactite2]);
      
      public static var currentWeather:Weather = NONE;
      
      public static var tempWeather:Weather = NONE;
      
      public static var currentWeatherTime:int = 5;
      
      public static var tempWeatherTime:int = 0;
      
      public static const WEATHER_LIST:Array = [NONE,CLEAR,RAIN,SNOW,ASH,SUNNY,ACID,EARTHQUAKE,HAIL,BLOSSOM,LEAVES,SANDSTORM,WINDY,ELECTRIC,SACRED,CURSED,LOW_GRAVITY,HIGH_GRAVITY,RADIATION,ENERGY,FALLINGSTARS,AIRSTRIKES,ERUPTION,OVERGROWTH,GEYSERS,LAVAFLOW,UNDEAD,THUNDERSTORM,STALACTITES,GLITCH,GLITCH_2,FOG];
      
      public var name:String;
      
      public var desc:String;
      
      public var SID:String;
      
      public var mc:String;
      
      public var mcs:Array;
      
      public function Weather(param1:String, param2:String, param3:Array = null)
      {
         super();
         this.SID = param1;
         this.mc = param2;
         this.mcs = param3;
      }
      
      public static function isGlitchy() : *
      {
         return (Weather.currentWeather == Weather.GLITCH || Weather.currentWeather == Weather.GLITCH_2) && Weather.tempWeather == Weather.NONE;
      }
      
      public static function isGlitchy2() : *
      {
         return Weather.currentWeather == Weather.GLITCH_2 && Weather.tempWeather == Weather.NONE;
      }
      
      public static function setRandomWeather() : *
      {
         if(Debug.expoDemo)
         {
            return;
         }
         currentWeather = WEATHER_LIST[int(Math.random() * WEATHER_LIST.length)];
         if(Debug.skillSet == 1 || Debug.bossDemo)
         {
            currentWeather = NONE;
         }
         if(Debug.skillSet == 1 && Math.random() < 0.55)
         {
            currentWeather = NONE;
         }
         if(Debug.skillSet == 1 && Math.random() < 0.33)
         {
            currentWeather = NONE;
         }
         if(Debug.boss == 20)
         {
            Weather.currentWeather = Weather.GLITCH_2;
         }
      }
      
      public static function initWeatherTargets() : *
      {
         weatherPlayer = new PlayerWeather();
         weatherFoe = new WeatherFoe(Players.player1.level);
         var _loc1_:int = 0;
         while(_loc1_ < Players.player1.level - 1)
         {
            weatherPlayer.EXP += weatherPlayer.EXPnext;
            weatherPlayer.levelUp();
            _loc1_++;
         }
      }
      
      public static function doWeather() : *
      {
         var _loc2_:String = null;
         var _loc3_:Spell = null;
         var _loc1_:Weather = currentWeather;
         Battle.currentFoe = null;
         if(tempWeather != NONE)
         {
            _loc1_ = tempWeather;
            --tempWeatherTime;
            if(tempWeatherTime == 0)
            {
               tempWeather = NONE;
               Battle.menu.updateWave();
            }
         }
         if(_loc1_.mc == "")
         {
            return;
         }
         Battle.selectedSkill = new Object();
         Battle.selectedSkill.target = Target.ALL;
         if(_loc1_.mc == "s")
         {
            _loc3_ = _loc1_.mcs[int(_loc1_.mcs.length * Math.random())];
            _loc2_ = _loc3_.MC;
            Battle.selectedSkill.target = _loc3_.target;
            Battle.selectedTarget = Battle.randomTarget();
         }
         else
         {
            _loc2_ = _loc1_.mc;
         }
         Battle.multiSpell = -1;
         if(_loc1_.mc == "s" && Battle.selectedTarget is Player)
         {
            Skills.user = weatherFoe;
            Battle.targetType = Battle.selectedSkill.target;
            weatherFoe.castSpell(_loc2_);
         }
         else
         {
            Skills.user = weatherPlayer;
            Battle.selectedSkill.MC = _loc2_;
            weatherPlayer.castSpell();
         }
      }
   }
}

