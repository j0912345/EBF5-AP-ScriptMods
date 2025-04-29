package
{
   import flash.events.*;
   import flash.media.*;
   import flash.utils.*;
   
   public class BGM
   {
      public static const SUNSET_HARBOR:String = "SunsetHarbor";
      
      public static const RAINY_FOREST_MORNING:String = "RainyForestMorning";
      
      public static const PLAISANTERIE_SAVANTE:String = "PlaisanterieSavante";
      
      public static const FORTRESS_THEME:String = "FortressTheme";
      
      public static const BREEZE_FROM_HOME:String = "BreezeFromHome";
      
      public static const PATH_TO_YGGDRASIL:String = "PathToYggdrasil";
      
      public static const SNOWDRIFT_ON_THE_CLOUDS:String = "SnowdriftOnTheClouds";
      
      public static const REDPINE_THEME:String = "RedpineTheme";
      
      public static const RAPTURE_THEME:String = "RaptureTheme";
      
      public static const HOUSE_THEME:String = "HouseTheme";
      
      public static const OF_RAINBOWS:String = "OfRainbows";
      
      public static const ANIMA:String = "LacrimisAnima";
      
      public static const WALKING_BONES:String = "WalkingBones";
      
      public static const CAPTAIN_8BIT:String = "Captain8Bit";
      
      public static const GLITCH:String = "GlitchTheme";
      
      public static const NYMPHIS_FAE:String = "NymphisFae";
      
      public static const SECONDARY_BATTLE:String = "SecondaryBattle";
      
      public static const TERTIARY_BATTLE:String = "TertiaryBattle";
      
      public static const RETURN_OF_SNOW_QUEEN:String = "ReturnOfSnowQueen";
      
      public static const BLADE_AND_SWITCH:String = "BladeAndSwitch";
      
      public static const MECHANICAL_CONDAMNATION:String = "MechanicalCondamnation";
      
      public static const NO_X1B:String = "Nox1B";
      
      public static const FINAL_BATTLE:String = "FinalBattleTheme";
      
      public static var POSH_BATTLE:String = "Leopard";
      
      public static var BLOSSOM:String = "Blossom";
      
      public static var PETALS_OF_BLADE:String = "PetalsOfBlade";
      
      public static var UNDER_MY_SKIN:String = "UnderMySkin";
      
      public static var BREEZE_VOCALS:String = "BreezeVocals";
      
      public static var ARCADE:String = "ArcadeMusic";
      
      public static const GAME_OVER:String = "GameOver";
      
      public static const VICTORY:String = "Victory";
      
      public static const SILENCE:String = "Silence";
      
      public static const CAVE_AMBIENCE:String = "CaveAmbience";
      
      public static const EVIL_AMBIENCE:String = "EvilAmbience";
      
      public static const SPACE_AMBIENCE:String = "SpaceAmbience";
      
      public static const MACHINE_AMBIENCE:String = "MachineAmbience";
      
      public static var TREE_AMBIENCE:String = "TreeAmbience";
      
      public static var PURITY:String = "Purity";
      
      public static var INNOCENCE:String = "Innocence";
      
      public static var TPF_TRANS:String = "TpfTrans";
      
      public static var ESTAVIUS:String = "Estavius";
      
      public static var WINGS:String = "Wings";
      
      public static var SNOW_SISTERS:String = "SnowSisters";
      
      public static var FAERIE_BREEZE:String = "FaerieBreeze";
      
      public static var CHAOS_OF_MIND:String = "ChaosOfMind";
      
      public static var BINARY_EMISIONS:String = "BinaryEmisions";
      
      public static var HEROES_MARCH:String = "HeroesMarch";
      
      public static var INTO_COMBAT:String = "IntoCombat";
      
      public static var JUMP_INTO_BATTLE:String = "JumpIntoBattle";
      
      public static var THE_TREK:String = "TheTrek";
      
      public static var WINGS_2:String = "Wings2";
      
      public static var YOULL_NEVER_GUESS:String = "YoullNeverGuessThis";
      
      internal static var music:SoundChannel = new SoundChannel();
      
      internal static var fader:SoundTransform = new SoundTransform();
      
      internal static var fade:Boolean = false;
      
      internal static var volume:Number = 0;
      
      internal static var maxvol:Number = 1;
      
      internal static var nextSong:String = "";
      
      internal static var thisSong:String = " ";
      
      internal static var mute:Boolean = false;
      
      internal static var paus:Boolean = false;
      
      internal static var loops:int = 999;
      
      internal static var currentTrack:String = "";
      
      public static var randomize:Boolean = false;
      
      public static var songVolume:Number = 1;
      
      public static var fast:Boolean = false;
      
      private var startPos:int = 0;
      
      public function BGM()
      {
         super();
      }
      
      public static function init() : *
      {
         if(Options.webVersion)
         {
            BGM.PETALS_OF_BLADE = BGM.RETURN_OF_SNOW_QUEEN;
            BGM.UNDER_MY_SKIN = BGM.BLADE_AND_SWITCH;
            BGM.BREEZE_VOCALS = BGM.BREEZE_FROM_HOME;
            BGM.TREE_AMBIENCE = BGM.CAVE_AMBIENCE;
            BGM.PURITY = BGM.CAPTAIN_8BIT;
            BGM.INNOCENCE = BGM.SNOWDRIFT_ON_THE_CLOUDS;
            BGM.TPF_TRANS = BGM.MECHANICAL_CONDAMNATION;
            BGM.ESTAVIUS = BGM.SUNSET_HARBOR;
            BGM.WINGS = BGM.NYMPHIS_FAE;
            BGM.SNOW_SISTERS = BGM.RETURN_OF_SNOW_QUEEN;
            BGM.FAERIE_BREEZE = BGM.RAINY_FOREST_MORNING;
            BGM.CHAOS_OF_MIND = BGM.FORTRESS_THEME;
            BGM.BINARY_EMISIONS = BGM.NO_X1B;
         }
      }
      
      public static function loop() : *
      {
         try
         {
            if(volume < maxvol && Boolean(fade))
            {
               volume += 0.04;
            }
            if(volume > 0 && !fade)
            {
               volume -= 0.04;
            }
            if(volume <= 0 && nextSong != "")
            {
               music.stop();
               startPos = 0;
               if(nextSong == OF_RAINBOWS && Game.mode == Game.MAIN_MENU)
               {
                  startPos = 41000;
               }
               if(nextSong == GAME_OVER)
               {
                  loops = 0;
                  fast = true;
                  randomize = false;
               }
               else if(nextSong == VICTORY)
               {
                  fast = true;
                  randomize = false;
               }
               else
               {
                  loops = int.MAX_VALUE;
               }
               if(randomize)
               {
                  randomize = false;
                  startPos = Math.floor(Math.random() * getSong().length / 1.5);
                  music = getSong().play(startPos,1);
                  music.addEventListener(Event.SOUND_COMPLETE,loop2);
               }
               else
               {
                  music = getSong().play(startPos,loops);
               }
               music.soundTransform = fader;
               thisSong = nextSong;
               nextSong = "";
               volume = 0.04;
               if(fast)
               {
                  volume = maxvol;
                  fast = false;
               }
               fade = true;
            }
            setVolume();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function loop2(param1:Event) : *
      {
         var _loc2_:Class = null;
         try
         {
            _loc2_ = Class(getDefinitionByName(thisSong));
            music = new _loc2_().play(0,loops);
            music.soundTransform = fader;
         }
         catch(e:Error)
         {
         }
      }
      
      internal static function setVolume() : *
      {
         try
         {
            fader.volume = volume * Options.music / 100 * songVolume;
            music.soundTransform = fader;
         }
         catch(e:Error)
         {
         }
      }
      
      internal static function getSong() : Sound
      {
         var _loc1_:Class = null;
         try
         {
            songVolume = 1;
            if(nextSong == PLAISANTERIE_SAVANTE)
            {
               songVolume = 0.6;
            }
            if(nextSong == SNOW_SISTERS)
            {
               songVolume = 0.75;
            }
            if(nextSong == PATH_TO_YGGDRASIL)
            {
               songVolume = 0.85;
            }
            if(nextSong == BLOSSOM)
            {
               songVolume = 0.9;
            }
            if(nextSong == REDPINE_THEME)
            {
               songVolume = 0.81;
            }
            if(nextSong == FINAL_BATTLE)
            {
               songVolume = 1.05;
            }
            if(nextSong == OF_RAINBOWS)
            {
               songVolume = 1.23;
            }
            if(nextSong == POSH_BATTLE)
            {
               songVolume = 1.1;
            }
            if(nextSong == JUMP_INTO_BATTLE)
            {
               songVolume = 1.2;
            }
            if(nextSong == HEROES_MARCH)
            {
               songVolume = 1.1;
            }
            if(nextSong == TPF_TRANS)
            {
               songVolume = 1.1;
            }
            if(nextSong == INTO_COMBAT)
            {
               songVolume = 1.1;
            }
            if(nextSong == YOULL_NEVER_GUESS)
            {
               songVolume = 0.9;
            }
            _loc1_ = Class(getDefinitionByName(nextSong));
            return new _loc1_();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function play(param1:String, param2:Boolean = false, param3:Boolean = false) : *
      {
         if(param1 == VICTORY && (currentTrack == EVIL_AMBIENCE || currentTrack == GLITCH || currentTrack == BREEZE_VOCALS))
         {
            return;
         }
         try
         {
            if(nextSong == param1)
            {
               return;
            }
            if(param1 != SILENCE)
            {
               currentTrack = param1;
            }
            paus = false;
            if(!((thisSong == param1 || nextSong == param1) && Boolean(fade)))
            {
               randomize = !param2;
               fade = false;
               if(param3)
               {
                  volume = 0;
                  fast = true;
               }
               nextSong = param1;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function stop() : *
      {
         try
         {
            music.stop();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function pause() : *
      {
         try
         {
            paus = true;
            volume = 0;
            setVolume();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function resume() : *
      {
         try
         {
            paus = false;
            volume = maxvol;
            setVolume();
         }
         catch(e:Error)
         {
         }
      }
   }
}

