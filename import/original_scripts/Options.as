package
{
   import flash.display.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.system.*;
   
   public class Options
   {
      public static var ZERO:String = "zero";
      
      public static var EASY:String = "easy";
      
      public static var NORMAL:String = "normal";
      
      public static var HARD:String = "hard";
      
      public static var EPIC:String = "epic";
      
      public static var difficulty:String = NORMAL;
      
      public static var extraFoeResistance:Boolean = false;
      
      public static var lessPlayerResistance:Boolean = false;
      
      public static var counterAttacks:Boolean = false;
      
      public static var bulkyFoes:Boolean = false;
      
      public static var evasiveFoes:Boolean = false;
      
      public static var offensiveFoes:Boolean = false;
      
      public static var surpriseAttack:Boolean = false;
      
      public static var noAutoRevive:Boolean = false;
      
      public static var statusAntibody:Boolean = false;
      
      public static var comboBreaker:Boolean = false;
      
      public static var noGrinding:Boolean = false;
      
      public static var noReviveTurn:Boolean = false;
      
      public static var noRareFood:Boolean = false;
      
      public static var noFoeHPbars:Boolean = false;
      
      public static var turnTimeLimit:Boolean = false;
      
      public static var superEffective:Boolean = true;
      
      public static var summoner:Boolean = true;
      
      public static var unlimited:Boolean = true;
      
      public static var feebleFoes:Boolean = true;
      
      public static var blindFoes:Boolean = true;
      
      public static var treasureFinder:Boolean = true;
      
      public static var politeFoes:Boolean = true;
      
      public static var cowardlyFoes:Boolean = true;
      
      public static var preemptiveStrike:Boolean = true;
      
      public static var instantHealing:Boolean = true;
      
      public static var extraAttacks:Boolean = true;
      
      public static var noAutoSpells:Boolean = false;
      
      public static var autoScan:Boolean = true;
      
      public static var learnAllSkills:Boolean = false;
      
      public static var sillyNPCs:Boolean = true;
      
      public static var catSimulator:Boolean = false;
      
      public static var oneHP:Boolean = false;
      
      public static var stunnedFoes:Boolean = false;
      
      public static var altWeather:Boolean = false;
      
      public static var altFoes:Boolean = false;
      
      public static var altEquipStats:Boolean = true;
      
      public static var altEquipLocations:Boolean = false;
      
      public static var alwaysScaleFoes:Boolean = false;
      
      public static var alwaysGiveEXP:Boolean = false;
      
      public static var threePlayerMode:Boolean = false;
      
      public static var twoPlayerMode:Boolean = false;
      
      public static var onePlayerMode:Boolean = false;
      
      public static var LOW:String = "low";
      
      public static var MEDIUM:String = "medium";
      
      public static var HIGH:String = "high";
      
      public static var quality:String = MEDIUM;
      
      public static var GUIskin:int = 3;
      
      public static var idlePlayers:Boolean = true;
      
      public static var idleFoes:Boolean = true;
      
      public static var idleBackgrounds:Boolean = true;
      
      public static var screenShake:Boolean = false;
      
      public static var showFlashes:Boolean = true;
      
      public static var titties:Boolean = true;
      
      public static var blood:Boolean = true;
      
      public static var mature:Boolean = true;
      
      public static var showTips:Boolean = true;
      
      public static var ENGLISH:int = 0;
      
      public static var SPANISH:int = 1;
      
      public static var PORTUGUESE:int = 2;
      
      public static var GERMAN:int = 3;
      
      public static var FRENCH:int = 4;
      
      public static var POLISH:int = 5;
      
      public static var RUSSIAN:int = 6;
      
      public static var VIETNAMESE:int = 7;
      
      public static var CHIN_SIMP:int = 8;
      
      public static var CHIN_TRAD:int = 9;
      
      public static var JAPANESE:int = 10;
      
      public static var KOREAN:int = 11;
      
      public static var language:int = ENGLISH;
      
      public static var sound:int = 60;
      
      public static var music:int = 40;
      
      public static var soundTemp:int = 80;
      
      public static var musicTemp:int = 35;
      
      public static var frameskip:Boolean = false;
      
      public static var fastText:Boolean = false;
      
      public static var fastForward:Boolean = true;
      
      public static var walkThroughWalls:Boolean = false;
      
      public static var animateCutscenes:Boolean = true;
      
      public static var showFlair:Boolean = true;
      
      public static var showFps:Boolean = true;
      
      public static var showChat:Boolean = true;
      
      public static var effects:Boolean = false;
      
      public static var showNoLegsHat:Boolean = true;
      
      public static var keyboard:Boolean = false;
      
      public static var fades:Boolean = false;
      
      public static var newgroundsVersion:Boolean = false;
      
      public static var enableSols:Boolean = false;
      
      public static var applicationFeatures:Boolean = true;
      
      public static var webVersion:Boolean = false;
      
      public static const W_525x375:Array = [525,375];
      
      public static const W_700x500:Array = [700,500];
      
      public static const W_1050x750:Array = [1050,750];
      
      public static const F_640x480:Array = [640,480];
      
      public static const F_720x480:Array = [720,480];
      
      public static const F_800x600:Array = [800,600];
      
      public static const F_1024x768:Array = [1024,768];
      
      public static const F_1280x800:Array = [1280,800];
      
      public static const F_1280x720:Array = [1280,720];
      
      public static var windowSize:int = 1;
      
      public static var fullscreenSize:int = 1;
      
      public static var fullscreenMode:Boolean = false;
      
      public static var framePadding:Array = [];
      
      public static var fsmode:int = 7;
      
      public static var ignoreLanguage:Boolean = false;
      
      public function Options()
      {
         super();
      }
      
      public static function cheatsOn() : Boolean
      {
         return cheatsOnForMedals() || noAutoSpells;
      }
      
      public static function cheatsOnForMedals() : Boolean
      {
         return superEffective || summoner || unlimited || learnAllSkills || feebleFoes || blindFoes || politeFoes || cowardlyFoes || preemptiveStrike || extraAttacks || autoScan || catSimulator || oneHP;
      }
      
      public static function challengesOn() : Boolean
      {
         return extraFoeResistance || instantHealing || lessPlayerResistance || counterAttacks || bulkyFoes || evasiveFoes || offensiveFoes || surpriseAttack || noAutoRevive || statusAntibody || comboBreaker || noGrinding || noReviveTurn || noRareFood || noFoeHPbars || turnTimeLimit;
      }
      
      public static function allChallenges() : Boolean
      {
         return extraFoeResistance && lessPlayerResistance && counterAttacks && bulkyFoes && evasiveFoes && offensiveFoes && surpriseAttack && statusAntibody && comboBreaker && noReviveTurn && noRareFood && noFoeHPbars && turnTimeLimit;
      }
      
      public static function clearCheats() : *
      {
         Options.extraFoeResistance = false;
         Options.lessPlayerResistance = false;
         Options.counterAttacks = false;
         Options.bulkyFoes = false;
         Options.evasiveFoes = false;
         Options.offensiveFoes = false;
         Options.surpriseAttack = false;
         Options.noAutoRevive = false;
         Options.statusAntibody = false;
         Options.comboBreaker = false;
         Options.noGrinding = false;
         Options.noReviveTurn = false;
         Options.noRareFood = false;
         Options.noFoeHPbars = false;
         Options.turnTimeLimit = false;
         Options.superEffective = false;
         Options.summoner = false;
         Options.unlimited = false;
         Options.feebleFoes = false;
         Options.blindFoes = false;
         Options.politeFoes = false;
         Options.cowardlyFoes = false;
         Options.preemptiveStrike = false;
         Options.instantHealing = false;
         Options.extraAttacks = false;
         Options.noAutoSpells = false;
         Options.autoScan = false;
         Options.catSimulator = false;
         Options.sillyNPCs = false;
         Options.oneHP = false;
         Options.stunnedFoes = false;
         Options.learnAllSkills = false;
         Options.treasureFinder = false;
      }
      
      public static function clearCustomOptions() : *
      {
         altWeather = false;
         altFoes = false;
         altEquipStats = false;
         altEquipLocations = false;
         alwaysScaleFoes = false;
         alwaysGiveEXP = false;
         threePlayerMode = false;
         twoPlayerMode = false;
         onePlayerMode = false;
      }
      
      public static function customEnabled() : Boolean
      {
         return altWeather || altFoes || altEquipStats || altEquipLocations || alwaysScaleFoes || alwaysGiveEXP || threePlayerMode || twoPlayerMode || onePlayerMode;
      }
      
      public static function threeOrLessPlayers() : Boolean
      {
         return threePlayerMode || twoPlayerMode || onePlayerMode;
      }
      
      public static function getPadding() : *
      {
      }
      
      public static function initWindow() : *
      {
         if(fullscreenMode && fsmode == 7)
         {
            Main.sendMessage("toggleFullscreen",fsmode,fullscreenMode);
         }
         else
         {
            if(windowSize == 1)
            {
               Main.sendMessage("setWindowSize1");
            }
            if(windowSize == 2)
            {
               Main.sendMessage("setWindowSize2");
            }
            if(windowSize == 3)
            {
               Main.sendMessage("setWindowSize3");
            }
            if(windowSize == 4)
            {
               Main.sendMessage("setWindowSize4");
            }
            if(windowSize == 5)
            {
               Main.sendMessage("setWindowSize5");
            }
            if(windowSize == 6)
            {
               Main.sendMessage("setWindowSize6");
            }
         }
      }
      
      public static function setWindowSize1() : *
      {
         windowSize = 1;
         Main.sendMessage("setWindowSize1");
         MapMenu.optionsUpdate();
      }
      
      public static function setWindowSize2() : *
      {
         windowSize = 2;
         Main.sendMessage("setWindowSize2");
         MapMenu.optionsUpdate();
      }
      
      public static function setWindowSize3() : *
      {
         windowSize = 3;
         Main.sendMessage("setWindowSize3");
         MapMenu.optionsUpdate();
      }
      
      public static function setWindowSize4() : *
      {
         windowSize = 4;
         Main.sendMessage("setWindowSize4");
         MapMenu.optionsUpdate();
      }
      
      public static function setWindowSize5() : *
      {
         windowSize = 5;
         Main.sendMessage("setWindowSize5");
         MapMenu.optionsUpdate();
      }
      
      public static function setWindowSize6() : *
      {
         windowSize = 6;
         Main.sendMessage("setWindowSize6");
         MapMenu.optionsUpdate();
      }
      
      public static function setFullscreenResolution(param1:int) : *
      {
         fsmode = param1;
         MapMenu.optionsUpdate();
      }
      
      public static function toggleFullscreen() : *
      {
         if(Main.messagesEnabled && applicationFeatures)
         {
            fullscreenMode = !fullscreenMode;
            Main.sendMessage("toggleFullscreen",fsmode,fullscreenMode);
         }
         else
         {
            try
            {
               if(fullscreenMode)
               {
                  fullscreenMode = false;
                  Game.root.stage.displayState = StageDisplayState.NORMAL;
               }
               else
               {
                  fullscreenMode = true;
                  Game.root.stage.fullScreenSourceRect = new Rectangle(0,0,1000,560);
                  Game.root.stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public static function isCJK() : Boolean
      {
         return language == CHIN_SIMP || language == CHIN_TRAD || language == KOREAN || language == JAPANESE;
      }
      
      public static function isCJ() : Boolean
      {
         return language == CHIN_SIMP || language == CHIN_TRAD;
      }
      
      public static function exitFullscreen() : *
      {
         try
         {
            fullscreenMode = false;
            Game.root.stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      public static function refreshResolution() : *
      {
         if(fullscreenMode)
         {
            toggleFullscreen();
            toggleFullscreen();
         }
      }
      
      public static function exitGame() : *
      {
         Main.sendMessage("exitGame");
      }
      
      public static function translate(param1:MovieClip) : *
      {
         param1.gotoAndStop(language + 1);
      }
      
      public static function setDefaultLanguage() : *
      {
         var lang:String = null;
         GUI.prepareTextFormat();
         GUI.init();
         if(Options.applicationFeatures)
         {
            return;
         }
         try
         {
            lang = Capabilities.language.substring(0,2);
            if(lang == "en")
            {
               language = ENGLISH;
            }
            if(lang == "es")
            {
               language = SPANISH;
            }
            if(lang == "pt")
            {
               language = PORTUGUESE;
            }
            if(lang == "de")
            {
               language = GERMAN;
            }
            if(lang == "fr")
            {
               language = FRENCH;
            }
            if(lang == "pl")
            {
               language = POLISH;
            }
            if(lang == "ru")
            {
               language = RUSSIAN;
            }
            if(lang == "ko")
            {
               language = KOREAN;
            }
            if(lang == "vi")
            {
               language = VIETNAMESE;
            }
            if(lang == "ja")
            {
               language = JAPANESE;
            }
            if(lang == "ar")
            {
               ignoreLanguage = true;
            }
         }
         catch(e:Error)
         {
            language = ENGLISH;
         }
         GUI.init();
      }
      
      public static function save() : *
      {
         var so:SharedObject = null;
         var data:Object = null;
         try
         {
            data = {};
            if(Options.enableSols)
            {
               so = SharedObject.getLocal("EBF5options");
               data = so.data;
            }
            data.everything = [language,quality,difficulty,sound,music,idlePlayers,idlePlayers,idleBackgrounds,showTips,blood,showFlashes,titties,mature,screenShake,frameskip,GUIskin,fastText];
            data.steamSettings = [fullscreenMode,windowSize,fsmode];
            if(Options.applicationFeatures && Main.messagesEnabled)
            {
               SaveData.exeSave = "options";
               SaveData.convertDataToJSON(data,true,false,true);
            }
            try
            {
               so.flush();
            }
            catch(e:Error)
            {
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function load(param1:Object = null) : *
      {
         var _loc2_:SharedObject = SharedObject.getLocal("EBF5options");
         var _loc3_:Object = _loc2_.data;
         if(param1)
         {
            _loc3_ = param1;
         }
         setDefaultLanguage();
         if(_loc3_.everything != undefined)
         {
            language = _loc3_.everything[0];
            quality = _loc3_.everything[1];
            difficulty = _loc3_.everything[2];
            sound = _loc3_.everything[3];
            music = _loc3_.everything[4];
            idlePlayers = _loc3_.everything[5];
            idleFoes = _loc3_.everything[5];
            idleBackgrounds = _loc3_.everything[7];
            showTips = _loc3_.everything[8];
            blood = _loc3_.everything[9];
            showFlashes = _loc3_.everything[10];
            titties = _loc3_.everything[11];
            mature = _loc3_.everything[12];
            screenShake = _loc3_.everything[13];
            frameskip = _loc3_.everything[14];
            GUIskin = _loc3_.everything[15];
            if(_loc3_.everything[16])
            {
               fastText = _loc3_.everything[16];
            }
            else
            {
               fastText = false;
            }
         }
         if(_loc3_.steamSettings)
         {
            windowSize = _loc3_.steamSettings[1];
            fsmode = _loc3_.steamSettings[2];
            if(fsmode == 7)
            {
               fullscreenMode = _loc3_.steamSettings[0];
            }
            else
            {
               fullscreenMode = false;
            }
            if(param1)
            {
               Options.initWindow();
            }
         }
         try
         {
            (Game.root as Main).minigame.minioptions.update();
         }
         catch(e:Error)
         {
         }
         Game.root.stage.quality = Options.quality;
      }
      
      public static function getDifficulty() : int
      {
         if(difficulty == ZERO)
         {
            return -1;
         }
         if(difficulty == EASY)
         {
            return 0;
         }
         if(difficulty == NORMAL)
         {
            return 1;
         }
         if(difficulty == HARD)
         {
            return 2;
         }
         if(difficulty == EPIC)
         {
            return 3;
         }
      }
      
      public static function toggleQuality(param1:int = 1) : *
      {
         if(quality == LOW)
         {
            quality = MEDIUM;
         }
         else if(quality == MEDIUM)
         {
            quality = HIGH;
         }
         else if(quality == HIGH)
         {
            quality = LOW;
         }
         Game.root.stage.quality = quality;
      }
      
      public static function toggleSound() : *
      {
         var _loc1_:MovieClip = null;
         if(sound)
         {
            soundTemp = sound;
            sound = 0;
         }
         else
         {
            sound = soundTemp;
         }
         if(Game.mode == Game.BATTLE)
         {
            for each(_loc1_ in Battle.stage.targetMCs)
            {
               setVolume(_loc1_,2);
            }
            for each(_loc1_ in Battle.stage.spellMCs)
            {
               setVolume(_loc1_,2);
            }
         }
      }
      
      public static function setVolume(param1:MovieClip = null, param2:int = 0, param3:int = 1) : *
      {
         if(!param1)
         {
            return;
         }
         param1.soundTransform = new SoundTransform(sound / 100);
      }
      
      public static function toggleMusic() : *
      {
         if(music)
         {
            musicTemp = music;
            music = 0;
         }
         else
         {
            music = musicTemp;
         }
      }
   }
}

