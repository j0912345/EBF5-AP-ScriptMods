package
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.*;
   import flash.text.TextField;
   import flash.utils.*;
   import foes.*;
   import text.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7189")]
   public class MapMenu extends MovieClip
   {
      public static var sounds:MovieClip;
      
      public static var cheatSource:MovieClip;
      
      public static var customSource:MovieClip;
      
      public static var optionsSource:MovieClip;
      
      public static var faderFrame:int = 0;
      
      public static var tempMapVars:Array = null;
      
      public static var tipList:Array = ["tipSteroids","tipForging","tipMap","tipSummons","tipSkills","tipOptions","tipInfo","tipParty","tipSets","tipCheats"];
      
      public static var tipCoords:Array = [[122,10],[615,10],[715,10],[417,10],[322,10],[898,10],[814,10],[268,57],[515,10],[898,10]];
      
      public static var tipStartFlag:Array = [];
      
      public static var tipCompleteFlag:Array = [];
      
      public static var soundCount:int = 0;
      
      public var playerBars:MovieClip;
      
      public var subMenus:MovieClip;
      
      public var playerSelect:MovieClip;
      
      public var forgeSelect:MovieClip;
      
      public var itemsSelect:MovieClip;
      
      public var skillEquip1:MovieClip;
      
      public var skillEquip2:MovieClip;
      
      public var errorLog:TextField;
      
      public var cheatsMenu:MovieClip;
      
      public var cardMenu:MovieClip;
      
      public var forgeMenu:MovieClip;
      
      public var forgeMenu2:MovieClip;
      
      public var statsMenu:MovieClip;
      
      public var skillsMenu:MovieClip;
      
      public var equipsMenu:MovieClip;
      
      public var setsMenu:MovieClip;
      
      public var equipList:MovieClip;
      
      public var equipList2:MovieClip;
      
      public var splash:MovieClip;
      
      public var playerMenu:MovieClip;
      
      public var optionsMenu:MovieClip;
      
      public var textbox:MapText;
      
      public var treasurebox:MovieClip;
      
      public var maps:Maps;
      
      public var shopMenu:MovieClip;
      
      public var premiumMenu:MovieClip;
      
      public var transferMenu:MovieClip;
      
      public var minimapMenu:MovieClip;
      
      public var quitMenu:MovieClip;
      
      public var saveMenu:MovieClip;
      
      public var tipBubble:MovieClip;
      
      public var back:SimpleButton;
      
      public var fader:MovieClip;
      
      public var goalsSelect:MovieClip;
      
      public var questsMenu:MovieClip;
      
      public var bestiaryMenu:MovieClip;
      
      public var summonsMenu:MovieClip;
      
      public var medalsMenu:MovieClip;
      
      public var gamestatsMenu:MovieClip;
      
      public var foestatsMenu:MovieClip;
      
      public var gallery:MovieClip;
      
      public var itemMenu:MovieClip;
      
      public var foodItemMenu:MovieClip;
      
      public var statItemMenu:MovieClip;
      
      public var keyItemMenu:MovieClip;
      
      public var cursor:Icon;
      
      public var skin:MovieClip;
      
      public var currentMenu:String = "";
      
      public var previousChoice:int = 0;
      
      public var prevPlayer:Player;
      
      public var bonusSkill:Boolean = false;
      
      public var skillPosition:int = -1;
      
      public var selectedSkill:Spell;
      
      internal var emo:Emoticon;
      
      public var graphic:TargetMC;
      
      public var oldEquip:Object;
      
      public var selectedItem:Item;
      
      public var foeIndex:int;
      
      public var bpage:int = 1;
      
      public var draggable:MovieClip;
      
      public function MapMenu()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public static function quitFromGameOver() : *
      {
         Game.win = false;
         Game.gameOver = true;
         Game.tempSave = [];
         Game.endBattle();
         (Game.root as Main).stopAllChildren(Game.root);
         Game.maps = null;
         Game.battle = null;
         MapData.map = null;
         MainMenu.loadFile = 0;
         Game.mode = Game.MAIN_MENU;
         Game.root.gotoAndStop(17);
      }
      
      public static function cheatClick(param1:String) : *
      {
         if(param1 == "c1")
         {
            Options.superEffective = !Options.superEffective;
            if(Options.superEffective)
            {
               Options.extraFoeResistance = false;
            }
         }
         if(param1 == "c2")
         {
            Options.summoner = !Options.summoner;
         }
         if(param1 == "c3")
         {
            Options.unlimited = !Options.unlimited;
         }
         if(param1 == "c4")
         {
            Options.feebleFoes = !Options.feebleFoes;
            if(Options.feebleFoes)
            {
               Options.bulkyFoes = false;
            }
         }
         if(param1 == "c5")
         {
            Options.learnAllSkills = !Options.learnAllSkills;
            Spells.verifySkills();
         }
         if(param1 == "c6")
         {
            Options.treasureFinder = !Options.treasureFinder;
         }
         if(param1 == "c7")
         {
            Options.cowardlyFoes = !Options.cowardlyFoes;
         }
         if(param1 == "c8")
         {
            Options.preemptiveStrike = !Options.preemptiveStrike;
            if(Options.preemptiveStrike)
            {
               Options.surpriseAttack = false;
            }
         }
         if(param1 == "c9")
         {
            Options.stunnedFoes = !Options.stunnedFoes;
         }
         if(param1 == "c10")
         {
            Options.extraAttacks = !Options.extraAttacks;
            if(Options.extraAttacks)
            {
               Options.noAutoSpells = false;
            }
         }
         if(param1 == "c11")
         {
            Options.noAutoSpells = !Options.noAutoSpells;
            if(Options.noAutoSpells)
            {
               Options.extraAttacks = false;
            }
         }
         if(param1 == "c12")
         {
            Options.autoScan = !Options.autoScan;
         }
         if(param1 == "c13")
         {
            Options.sillyNPCs = !Options.sillyNPCs;
         }
         if(param1 == "c14")
         {
            Options.catSimulator = !Options.catSimulator;
         }
         if(param1 == "c15")
         {
            Options.oneHP = !Options.oneHP;
         }
         if(param1 == "h1")
         {
            Options.extraFoeResistance = !Options.extraFoeResistance;
            if(Options.extraFoeResistance)
            {
               Options.superEffective = false;
            }
         }
         if(param1 == "h2")
         {
            Options.lessPlayerResistance = !Options.lessPlayerResistance;
            Equips.setEquipResistances();
         }
         if(param1 == "h3")
         {
            Options.counterAttacks = !Options.counterAttacks;
         }
         if(param1 == "h4")
         {
            Options.bulkyFoes = !Options.bulkyFoes;
            if(Options.bulkyFoes)
            {
               Options.feebleFoes = false;
            }
         }
         if(param1 == "h5")
         {
            Options.evasiveFoes = !Options.evasiveFoes;
         }
         if(param1 == "h6")
         {
            Options.offensiveFoes = !Options.offensiveFoes;
         }
         if(param1 == "h7")
         {
            Options.statusAntibody = !Options.statusAntibody;
         }
         if(param1 == "h8")
         {
            Options.surpriseAttack = !Options.surpriseAttack;
            if(Options.surpriseAttack)
            {
               Options.preemptiveStrike = false;
            }
         }
         if(param1 == "h9")
         {
            Options.instantHealing = !Options.instantHealing;
         }
         if(param1 == "h10")
         {
            Options.comboBreaker = !Options.comboBreaker;
         }
         if(param1 == "h11")
         {
            Options.noGrinding = !Options.noGrinding;
         }
         if(param1 == "h12")
         {
            Options.noReviveTurn = !Options.noReviveTurn;
         }
         if(param1 == "h13")
         {
            Options.noRareFood = !Options.noRareFood;
         }
         if(param1 == "h14")
         {
            Options.noFoeHPbars = !Options.noFoeHPbars;
         }
         if(param1 == "h15")
         {
            Options.turnTimeLimit = !Options.turnTimeLimit;
         }
         cheatsUpdate();
         (cheatSource.parent as MapMenu).updatePlayerBars(true);
      }
      
      public static function cheatsUpdate() : *
      {
         var _loc1_:String = null;
         var _loc2_:MovieClip = null;
         for each(_loc1_ in ["c1","h1","c4","h4","c8","h8","c10","c11"])
         {
            cheatSource[_loc1_].tick.box.gotoAndStop(2);
         }
         _loc2_ = cheatSource;
         showBooleanOption(Options.superEffective,_loc2_.c1.tick);
         showBooleanOption(Options.summoner,_loc2_.c2.tick);
         showBooleanOption(Options.unlimited,_loc2_.c3.tick);
         showBooleanOption(Options.feebleFoes,_loc2_.c4.tick);
         showBooleanOption(Options.learnAllSkills,_loc2_.c5.tick);
         showBooleanOption(Options.treasureFinder,_loc2_.c6.tick);
         showBooleanOption(Options.cowardlyFoes,_loc2_.c7.tick);
         showBooleanOption(Options.preemptiveStrike,_loc2_.c8.tick);
         showBooleanOption(Options.stunnedFoes,_loc2_.c9.tick);
         showBooleanOption(Options.extraAttacks,_loc2_.c10.tick);
         showBooleanOption(Options.noAutoSpells,_loc2_.c11.tick);
         showBooleanOption(Options.autoScan,_loc2_.c12.tick);
         showBooleanOption(Options.sillyNPCs,_loc2_.c13.tick);
         showBooleanOption(Options.catSimulator,_loc2_.c14.tick);
         showBooleanOption(Options.oneHP,_loc2_.c15.tick);
         showBooleanOption(Options.extraFoeResistance,_loc2_.h1.tick);
         showBooleanOption(Options.lessPlayerResistance,_loc2_.h2.tick);
         showBooleanOption(Options.counterAttacks,_loc2_.h3.tick);
         showBooleanOption(Options.bulkyFoes,_loc2_.h4.tick);
         showBooleanOption(Options.evasiveFoes,_loc2_.h5.tick);
         showBooleanOption(Options.offensiveFoes,_loc2_.h6.tick);
         showBooleanOption(Options.statusAntibody,_loc2_.h7.tick);
         showBooleanOption(Options.surpriseAttack,_loc2_.h8.tick);
         showBooleanOption(Options.instantHealing,_loc2_.h9.tick);
         showBooleanOption(Options.comboBreaker,_loc2_.h10.tick);
         showBooleanOption(Options.noGrinding,_loc2_.h11.tick);
         showBooleanOption(Options.noReviveTurn,_loc2_.h12.tick);
         showBooleanOption(Options.noRareFood,_loc2_.h13.tick);
         showBooleanOption(Options.noFoeHPbars,_loc2_.h14.tick);
         showBooleanOption(Options.turnTimeLimit,_loc2_.h15.tick);
         Battle.calculateSP();
         (_loc2_.parent as MapMenu).updatePlayerBars(true);
      }
      
      public static function customClick(param1:int) : *
      {
         if(!customSource)
         {
            return;
         }
         if(param1 == 1)
         {
            Options.altFoes = !Options.altFoes;
         }
         if(param1 == 2)
         {
            Options.altWeather = !Options.altWeather;
         }
         if(param1 == 3)
         {
            Options.altEquipStats = !Options.altEquipStats;
         }
         if(param1 == 4)
         {
            Options.altEquipLocations = !Options.altEquipLocations;
         }
         if(param1 == 5)
         {
            Options.alwaysScaleFoes = !Options.alwaysScaleFoes;
         }
         if(param1 == 6)
         {
            Options.threePlayerMode = !Options.threePlayerMode;
            Options.twoPlayerMode = false;
            Options.onePlayerMode = false;
         }
         if(param1 == 7)
         {
            Options.twoPlayerMode = !Options.twoPlayerMode;
            Options.onePlayerMode = false;
            Options.threePlayerMode = false;
         }
         if(param1 == 8)
         {
            Options.onePlayerMode = !Options.onePlayerMode;
            Options.threePlayerMode = false;
            Options.twoPlayerMode = false;
         }
         updateCustomMenu(customSource);
      }
      
      public static function updateCustomMenu(param1:MovieClip) : *
      {
         if(!param1)
         {
            return;
         }
         showBooleanOption(Options.altFoes,param1.tick1);
         showBooleanOption(Options.altWeather,param1.tick2);
         showBooleanOption(Options.altEquipStats,param1.tick3);
         showBooleanOption(Options.altEquipLocations,param1.tick4);
         showBooleanOption(Options.alwaysScaleFoes,param1.tick5);
         showBooleanOption(Options.threePlayerMode,param1.tick6);
         showBooleanOption(Options.twoPlayerMode,param1.tick7);
         showBooleanOption(Options.onePlayerMode,param1.tick8);
         customSource = param1;
      }
      
      public static function optionClick(param1:String) : *
      {
         var _loc2_:MovieClip = optionsSource;
         if(param1 == "low")
         {
            Options.quality = Options.LOW;
         }
         if(param1 == "medium")
         {
            Options.quality = Options.MEDIUM;
         }
         if(param1 == "high")
         {
            Options.quality = Options.HIGH;
         }
         if(param1 == "eng")
         {
            Options.language = Options.ENGLISH;
            updateLanguage(_loc2_);
         }
         if(param1 == "spa")
         {
            Options.language = Options.SPANISH;
            updateLanguage(_loc2_);
         }
         if(param1 == "por")
         {
            Options.language = Options.PORTUGUESE;
            updateLanguage(_loc2_);
         }
         if(param1 == "fre")
         {
            Options.language = Options.FRENCH;
            updateLanguage(_loc2_);
         }
         if(param1 == "ger")
         {
            Options.language = Options.GERMAN;
            updateLanguage(_loc2_);
         }
         if(param1 == "cht")
         {
            Options.language = Options.CHIN_TRAD;
            updateLanguage(_loc2_);
         }
         if(param1 == "chs")
         {
            Options.language = Options.CHIN_SIMP;
            updateLanguage(_loc2_);
         }
         if(param1 == "pol")
         {
            Options.language = Options.POLISH;
            updateLanguage(_loc2_);
         }
         if(param1 == "rus")
         {
            Options.language = Options.RUSSIAN;
            updateLanguage(_loc2_);
         }
         if(param1 == "kor")
         {
            Options.language = Options.KOREAN;
            updateLanguage(_loc2_);
         }
         if(param1 == "vie")
         {
            Options.language = Options.VIETNAMESE;
            updateLanguage(_loc2_);
         }
         if(param1 == "jap")
         {
            Options.language = Options.JAPANESE;
            updateLanguage(_loc2_);
         }
         var _loc3_:int = _loc2_.music.mouseX / 0.58 + 12;
         if(_loc3_ <= 0)
         {
            _loc3_ = 0;
         }
         else if(_loc3_ >= 100)
         {
            _loc3_ = 100;
         }
         if(param1 == "music")
         {
            Options.music = _loc3_;
         }
         if(param1 == "sound")
         {
            Options.sound = _loc3_;
            try
            {
               Options.setVolume(sounds);
            }
            catch(e:Error)
            {
            }
            try
            {
               Options.setVolume(Maps.instance);
            }
            catch(e:Error)
            {
            }
         }
         if(param1 == "zero")
         {
            Options.difficulty = Options.ZERO;
         }
         if(param1 == "easy")
         {
            Options.difficulty = Options.EASY;
         }
         if(param1 == "normal")
         {
            Options.difficulty = Options.NORMAL;
         }
         if(param1 == "hard")
         {
            Options.difficulty = Options.HARD;
         }
         if(param1 == "epic")
         {
            Options.difficulty = Options.EPIC;
         }
         if(param1 == "brown")
         {
            Options.GUIskin = 3;
            reskinGUI(_loc2_);
         }
         if(param1 == "blue")
         {
            Options.GUIskin = 1;
            reskinGUI(_loc2_);
         }
         if(param1 == "black")
         {
            Options.GUIskin = 4;
            reskinGUI(_loc2_);
         }
         if(param1 == "frameskip")
         {
            Options.frameskip = !Options.frameskip;
         }
         if(param1 == "speed")
         {
            Options.fastText = !Options.fastText;
         }
         if(param1 == "tips")
         {
            Options.showTips = !Options.showTips;
         }
         if(param1 == "blood")
         {
            Options.blood = !Options.blood;
         }
         if(param1 == "flashes")
         {
            Options.showFlashes = !Options.showFlashes;
         }
         if(param1 == "cleavage")
         {
            Options.titties = !Options.titties;
         }
         if(param1 == "mature")
         {
            Options.mature = !Options.mature;
         }
         if(param1 == "shake")
         {
            Options.screenShake = !Options.screenShake;
         }
         if(param1 == "players")
         {
            Options.idlePlayers = !Options.idlePlayers;
         }
         if(param1 == "background")
         {
            Options.idleBackgrounds = !Options.idleBackgrounds;
         }
         if(param1 == "fullscreen")
         {
            Options.toggleFullscreen();
         }
         Game.root.stage.quality = Options.quality;
         optionsUpdate();
         Options.save();
      }
      
      public static function optionsUpdate() : *
      {
         var _loc2_:String = null;
         var _loc1_:MovieClip = optionsSource;
         for each(_loc2_ in [Options.LOW,Options.MEDIUM,Options.HIGH,Options.ZERO,Options.EASY,Options.NORMAL,Options.HARD,Options.EPIC,"brown","blue","black","res1","res2","res3","res4","res5","res6","fs1","fs2","fs3","fs4","fs5","fs6","fs7","eng","cht","chs","spa","por","ger","fre","rus","pol","kor","vie","jap"])
         {
            _loc1_[_loc2_ + "t"].box.gotoAndStop(2);
         }
         for each(_loc2_ in [Options.ZERO,Options.EASY,Options.NORMAL,Options.HARD,Options.EPIC])
         {
            showBooleanOption(Options.difficulty == _loc2_,_loc1_[_loc2_ + "t"]);
         }
         for each(_loc2_ in [Options.LOW,Options.MEDIUM,Options.HIGH])
         {
            showBooleanOption(Options.quality == _loc2_,_loc1_[_loc2_ + "t"]);
         }
         showBooleanOption(Options.language == 0,_loc1_.engt);
         showBooleanOption(Options.language == 1,_loc1_.spat);
         showBooleanOption(Options.language == 2,_loc1_.port);
         showBooleanOption(Options.language == 3,_loc1_.gert);
         showBooleanOption(Options.language == 4,_loc1_.fret);
         showBooleanOption(Options.language == 5,_loc1_.polt);
         showBooleanOption(Options.language == 6,_loc1_.rust);
         showBooleanOption(Options.language == 7,_loc1_.viet);
         showBooleanOption(Options.language == 8,_loc1_.chst);
         showBooleanOption(Options.language == 9,_loc1_.chtt);
         showBooleanOption(Options.language == 10,_loc1_.japt);
         showBooleanOption(Options.language == 11,_loc1_.kort);
         _loc1_.musicbar.gotoAndStop(Options.music + 1);
         _loc1_.soundbar.gotoAndStop(Options.sound + 1);
         showBooleanOption(Options.idlePlayers,_loc1_.playerst);
         Options.idleFoes = Options.idlePlayers;
         showBooleanOption(Options.idleBackgrounds,_loc1_.backgroundt);
         showBooleanOption(Options.fastText,_loc1_.speedt);
         showBooleanOption(Options.showTips,_loc1_.tipst);
         showBooleanOption(Options.blood,_loc1_.bloodt);
         showBooleanOption(Options.showFlashes,_loc1_.flashest);
         showBooleanOption(Options.titties,_loc1_.cleavaget);
         showBooleanOption(Options.mature,_loc1_.maturet);
         showBooleanOption(Options.screenShake,_loc1_.shaket);
         showBooleanOption(Options.frameskip,_loc1_.frameskipt);
         showBooleanOption(Options.GUIskin == 3,_loc1_.brownt);
         showBooleanOption(Options.GUIskin == 1,_loc1_.bluet);
         showBooleanOption(Options.GUIskin == 4,_loc1_.blackt);
         showBooleanOption(Options.fullscreenMode,_loc1_.fst);
         _loc1_.text1.text = "" + Options.music + "%";
         _loc1_.text2.text = "" + Options.sound + "%";
         _loc1_.text1.setTextFormat(GUI.boldText);
         _loc1_.text2.setTextFormat(GUI.boldText);
         if(Options.applicationFeatures)
         {
            showBooleanOption(Options.windowSize == 1,_loc1_.res1t);
            showBooleanOption(Options.windowSize == 2,_loc1_.res2t);
            showBooleanOption(Options.windowSize == 3,_loc1_.res3t);
            showBooleanOption(Options.windowSize == 4,_loc1_.res4t);
            showBooleanOption(Options.windowSize == 5,_loc1_.res5t);
            showBooleanOption(Options.windowSize == 6,_loc1_.res6t);
            showBooleanOption(Options.fsmode == 1,_loc1_.fs1t);
            showBooleanOption(Options.fsmode == 2,_loc1_.fs2t);
            showBooleanOption(Options.fsmode == 3,_loc1_.fs3t);
            showBooleanOption(Options.fsmode == 4,_loc1_.fs4t);
            showBooleanOption(Options.fsmode == 5,_loc1_.fs5t);
            showBooleanOption(Options.fsmode == 6,_loc1_.fs6t);
            showBooleanOption(Options.fsmode == 7,_loc1_.fs7t);
         }
         Options.save();
      }
      
      public static function updateLanguage(param1:MovieClip) : *
      {
         GUI.prepareTextFormat();
         SetStrings.setAllStrings();
         reskinGUI(param1);
      }
      
      public static function reskinGUI(param1:MovieClip) : *
      {
         var _loc2_:MapMenu = null;
         if(param1.parent.parent is MapMenu)
         {
            _loc2_ = param1.parent.parent;
            Global.translate(_loc2_.playerBars.tf1,"SP");
            _loc2_.optionsMenu.gotoAndStop(3);
            _loc2_.optionsMenu.gotoAndStop(1);
            _loc2_.foestatsMenu.gotoAndStop(3);
            _loc2_.foestatsMenu.gotoAndPlay(1);
            _loc2_.statsMenu.gotoAndStop(3);
            _loc2_.statsMenu.gotoAndPlay(1);
            _loc2_.equipsMenu.gotoAndStop(3);
            _loc2_.equipsMenu.gotoAndPlay(1);
            _loc2_.equipList.gotoAndStop(2);
            _loc2_.equipList.gotoAndStop(1);
            _loc2_.equipList2.gotoAndStop(2);
            _loc2_.equipList2.gotoAndStop(1);
            _loc2_.summonsMenu.gotoAndStop(2);
            _loc2_.summonsMenu.gotoAndPlay(1);
            _loc2_.medalsMenu.gotoAndStop(2);
            _loc2_.medalsMenu.gotoAndPlay(1);
            _loc2_.questsMenu.gotoAndStop(2);
            _loc2_.questsMenu.gotoAndPlay(1);
            _loc2_.gamestatsMenu.gotoAndStop(2);
            _loc2_.gamestatsMenu.gotoAndPlay(1);
            _loc2_.bestiaryMenu.gotoAndStop(2);
            _loc2_.bestiaryMenu.gotoAndPlay(1);
            _loc2_.minimapMenu.gotoAndStop(2);
            _loc2_.minimapMenu.gotoAndStop(1);
            _loc2_.forgeSelect.gotoAndStop(2);
            _loc2_.forgeSelect.gotoAndPlay(1);
            _loc2_.forgeMenu.gotoAndStop(2);
            _loc2_.forgeMenu.gotoAndPlay(1);
            _loc2_.forgeMenu2.gotoAndStop(2);
            _loc2_.forgeMenu2.gotoAndPlay(1);
            _loc2_.playerMenu.gotoAndStop(2);
            _loc2_.playerMenu.gotoAndPlay(1);
            _loc2_.skillEquip1.gotoAndStop(2);
            _loc2_.skillEquip1.gotoAndPlay(1);
            _loc2_.skillEquip2.gotoAndStop(2);
            _loc2_.skillEquip2.gotoAndPlay(1);
            _loc2_.skillsMenu.gotoAndStop(5);
            _loc2_.treasurebox.gotoAndStop(4);
            _loc2_.textbox.gotoAndStop(4);
            _loc2_.textbox.emo.window.gotoAndStop(Options.GUIskin);
            _loc2_.quitMenu.gotoAndStop(2);
            _loc2_.quitMenu.gotoAndStop(1);
            _loc2_.saveMenu.gotoAndStop(2);
            _loc2_.saveMenu.gotoAndStop(1);
            _loc2_.goalsSelect.gotoAndStop(2);
            _loc2_.goalsSelect.gotoAndStop(1);
            _loc2_.playerSelect.gotoAndStop(2);
            _loc2_.playerSelect.gotoAndStop(1);
            _loc2_.itemsSelect.gotoAndStop(2);
            _loc2_.itemsSelect.gotoAndStop(1);
            _loc2_.itemMenu.gotoAndStop(5);
            _loc2_.skin.gotoAndStop(2);
            _loc2_.skin.gotoAndStop(1);
         }
         else
         {
            param1.gotoAndStop(3);
            param1.gotoAndStop(1);
         }
      }
      
      public static function showBooleanOption(param1:Boolean, param2:MovieClip) : *
      {
         if(param1)
         {
            param2.gotoAndStop("on");
         }
         else
         {
            param2.gotoAndStop("off");
         }
      }
      
      public static function showPlayerIconOnEquip(param1:Icon, param2:int = 0) : *
      {
         var _loc3_:Player = null;
         var _loc4_:Equip = null;
         if(param1.data == Equips.empty)
         {
            return;
         }
         for each(_loc3_ in Players.PLAYERS_ORDER)
         {
            for each(_loc4_ in _loc3_.equips)
            {
               if(_loc4_ && _loc4_ == param1.data)
               {
                  param1.player.gotoAndStop(_loc3_.playerNo + 1);
                  if(param1.player.x > 10)
                  {
                     param1.player.x -= 22;
                     param1.player.y -= 22;
                  }
               }
            }
         }
      }
      
      public function init() : *
      {
         Game.mode = Game.MAP;
         this.addEventListener(MouseEvent.RIGHT_MOUSE_DOWN,this.onRightClick);
         this.makeMap();
         x = 0;
         y = 480;
         Game.mode = Game.MAP;
         Game.mapMenu = this;
         this.cursor = GUI.createIcon(this,null,null,true,Icon.CURSOR);
         setChildIndex(this.cursor,getChildIndex(this.splash));
         this.cursor.icon.gotoAndStop(2);
         this.splash.mouseChildren = false;
         this.splash.mouseEnabled = false;
         this.startTips();
         this.clearMenus();
         Game.root.mouseFunction = this.moveCursor;
         try
         {
            Options.setVolume(sounds);
         }
         catch(e:Error)
         {
         }
         try
         {
            Options.setVolume(Maps.instance);
         }
         catch(e:Error)
         {
         }
         try
         {
            this.updatePlayerBars(true);
         }
         catch(e:Error)
         {
         }
      }
      
      public function makeMap(param1:Boolean = false, param2:Boolean = false) : *
      {
         if(Boolean(this.maps) && Boolean(this.maps.parent))
         {
            faderFrame = this.maps.fader.currentFrame;
            tempMapVars = [this.maps.player.X,this.maps.player.Y,this.maps.player.facing,MapPlayer.watered];
            this.maps.teardown();
            removeChild(this.maps);
            this.maps = null;
         }
         if(Main.newGameFlag || Main.newGamePlusFlag)
         {
            MapData.mapNo = Maps.mapMatrix[Constants.MAP_Y][Constants.MAP_X];
            Main.newGameFlag = false;
         }
         else
         {
            if(Game.tempSave.length != 0)
            {
               MapData.mapNo = Game.tempSave[4];
            }
            else
            {
               MapData.mapNo = Maps.mapMatrix[Maps.mapY][Maps.mapX];
            }
            if(param1)
            {
               faderFrame = 2;
               MapData.mapNo = Maps.tempWarpData[0];
            }
            if(param2)
            {
               if(Maps.doorDetails[3] == 1 || Maps.doorDetails[3] == 3)
               {
                  faderFrame = 95;
               }
               if(Maps.doorDetails[3] == 4 || Maps.doorDetails[3] == 2)
               {
                  faderFrame = 113;
               }
               MapData.mapNo = Maps.doorDetails[0];
            }
         }
         var _loc3_:Class = getDefinitionByName("Map" + MapData.mapNo);
         this.maps = new _loc3_();
         addChild(this.maps);
         setChildIndex(this.maps,0);
         this.maps.y = -480;
         if(tempMapVars)
         {
            ++this.maps.busy;
         }
      }
      
      public function clearMenus() : *
      {
         if(!(this.treasurebox.alpha != 1 && this.treasurebox.visible))
         {
            GUI.removeIcons();
         }
         this.back.visible = false;
         if(this.treasurebox.alpha == 1)
         {
            if(this.treasurebox.visible)
            {
               Maps.playSound("unequip");
            }
            this.treasurebox.visible = false;
         }
         this.cardMenu.visible = false;
         this.cheatsMenu.visible = false;
         this.itemsSelect.visible = false;
         this.itemMenu.visible = false;
         this.itemMenu.gotoAndStop(1);
         this.statsMenu.visible = false;
         this.playerSelect.visible = false;
         this.forgeSelect.visible = false;
         this.forgeMenu.visible = false;
         this.forgeMenu2.visible = false;
         this.equipsMenu.visible = false;
         this.setsMenu.visible = false;
         this.equipList.visible = false;
         this.equipList2.visible = false;
         this.optionsMenu.visible = false;
         this.summonsMenu.visible = false;
         this.summonsMenu.clearSelection();
         this.summonsMenu.blocker.visible = false;
         this.summonsMenu.renameMenu.visible = false;
         this.foestatsMenu.visible = false;
         this.skillEquip1.visible = false;
         this.skillEquip2.visible = false;
         this.skillsMenu.visible = false;
         this.playerMenu.visible = false;
         this.shopMenu.visible = false;
         this.minimapMenu.visible = false;
         var _loc1_:int = 0;
         while(_loc1_ < this.minimapMenu.numChildren)
         {
            if(this.minimapMenu.getChildAt(_loc1_) is Marker)
            {
               this.minimapMenu.removeChildAt(_loc1_);
               _loc1_--;
            }
            _loc1_++;
         }
         this.quitMenu.visible = false;
         this.saveMenu.visible = false;
         this.goalsSelect.visible = false;
         this.clearGoalMenus();
         this.splash.x = 15;
         this.splash.y = -256;
         this.splash.gotoAndStop(1);
         GUI.clearDragIcon();
         if(this.draggable)
         {
            this.draggable.x = this.draggable.ox;
            this.draggable.y = this.draggable.oy;
         }
         this.draggable = null;
      }
      
      public function clearGoalMenus() : *
      {
         if(!(this.treasurebox.alpha != 1 && this.treasurebox.visible))
         {
            GUI.removeIcons();
         }
         this.cheatsMenu.visible = false;
         this.cardMenu.visible = false;
         this.questsMenu.visible = false;
         this.bestiaryMenu.visible = false;
         this.gamestatsMenu.visible = false;
         this.medalsMenu.visible = false;
         this.removePlayer();
      }
      
      public function openMenu(param1:String) : Boolean
      {
         this.tipBubble.gotoAndStop(1);
         this.tipBubble.visible = false;
         this.maps = Maps.instance;
         this.maps.cursor.x = 1000;
         this.maps.cursor2.x = 1000;
         this.clearMenus();
         if(this.currentMenu != param1)
         {
            this.currentMenu = param1;
            return true;
         }
         this.currentMenu = "";
         return false;
      }
      
      public function startTips() : *
      {
         if(!Options.showTips)
         {
            return;
         }
         if((Items.bacon.quantity >= 1 || Items.egg.quantity >= 1 || Items.beef.quantity >= 1 || Items.sushi.quantity >= 1 || Items.riceball.quantity >= 1) && SaveData.foesDefeated >= 130)
         {
            tipStartFlag[0] = true;
         }
         if(SaveData.foesDefeated >= 70 && (Items.iron.quantity >= 1 || Items.wood.quantity >= 1))
         {
            tipStartFlag[1] = true;
         }
         if(Items.shovel.quantity == 1 && Game.party.length == 3)
         {
            tipStartFlag[2] = true;
         }
         if(SaveData.foesDefeated >= 90 && Summons.OWNED_SUMMONS.length > 0)
         {
            tipStartFlag[3] = true;
         }
         if(Players.player1.AP > 100 && Players.player5.AP > 100)
         {
            tipStartFlag[4] = true;
         }
         if(SaveData.foesDefeated >= 10)
         {
            tipStartFlag[5] = true;
         }
         if(SaveData.foesDefeated >= 280)
         {
            tipStartFlag[6] = true;
         }
         if(SaveData.foesDefeated >= 200)
         {
            tipStartFlag[7] = true;
         }
         if(SaveData.foesDefeated >= 350)
         {
            tipStartFlag[8] = true;
         }
         if(SaveData.foesDefeated >= 500)
         {
            tipStartFlag[9] = true;
         }
      }
      
      public function showTipBubbles() : *
      {
         if(!Options.showTips)
         {
            return;
         }
         if(this.textbox.visible || this.tipBubble.visible)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < tipList.length)
         {
            if(Boolean(tipStartFlag[_loc1_]) && !tipCompleteFlag[_loc1_])
            {
               this.showTipBubble(tipList[_loc1_],tipCoords[_loc1_]);
               return;
            }
            _loc1_++;
         }
      }
      
      public function showTipBubble(param1:String, param2:Array) : *
      {
         this.tipBubble.bubbleText = SetStrings.getString("menus",param1);
         this.tipBubble.x = param2[0];
         this.tipBubble.y = param2[1];
         this.tipBubble.play();
      }
      
      public function onRightClick(param1:Event = null) : *
      {
         if(this.skillEquip1.visible || this.skillEquip2.visible)
         {
            this.cancelSkillEquipSelection();
         }
         else if(this.skillsMenu.visible && this.skillsMenu.currentFrame != 1)
         {
            this.showSkills();
         }
         else if(this.equipList.visible || this.equipList2.visible)
         {
            this.cancelEquipSelection();
         }
         else
         {
            this.closeMenus();
         }
         this.maps.clearText();
      }
      
      public function closeMenus() : *
      {
         this.currentMenu = "";
         if(!Options.keyboard)
         {
            this.maps.highlight();
         }
         this.clearMenus();
      }
      
      public function openItemsMenu() : *
      {
         if(this.openMenu("items"))
         {
            this.showMenu(this.itemsSelect);
         }
      }
      
      public function openSkillsMenu() : *
      {
         if(this.openMenu("skills"))
         {
            this.showPlayerSelect(156);
         }
      }
      
      public function openStatsMenu() : *
      {
         this.statsMenu.gotoAndStop(3);
         this.statsMenu.gotoAndPlay(1);
         if(this.openMenu("stats"))
         {
            this.showPlayerSelect(56);
         }
      }
      
      public function openSummonsMenu() : *
      {
         if(Summons.OWNED_SUMMONS.length > 0)
         {
            tipCompleteFlag[3] = true;
         }
         if(this.openMenu("summons"))
         {
            this.showMenu(this.summonsMenu);
            this.summonsMenu.update();
         }
      }
      
      public function openEquipsMenu() : *
      {
         var _loc2_:Equip = null;
         var _loc4_:Equip = null;
         var _loc5_:Array = null;
         var _loc6_:Equip = null;
         var _loc1_:int = 0;
         for each(_loc2_ in Equips.ALL_EQUIPS)
         {
            if(Boolean(_loc2_) && _loc2_.owned)
            {
               _loc1_++;
            }
         }
         if(_loc1_ >= Medals.unlimitedBladeWorks.value)
         {
            Medals.unlock(Medals.unlimitedBladeWorks);
         }
         _loc1_ = 0;
         var _loc3_:Array = Equips.SWORDS.concat(Equips.STALVES).concat(Equips.GUNS).concat(Equips.BOWS).concat(Equips.TOYS);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.level == 5)
            {
               _loc1_++;
            }
         }
         _loc1_ = 0;
         _loc5_ = Equips.MALE_HATS.concat(Equips.FEMALE_HATS).concat(Equips.FEMALE_ARMOR).concat(Equips.MALE_ARMOR);
         for each(_loc6_ in _loc5_)
         {
            if(_loc6_.level == 5)
            {
               _loc1_++;
            }
         }
         if(this.openMenu("equips"))
         {
            this.showPlayerSelect(350);
         }
      }
      
      public function openSetsMenu(param1:String, param2:int) : *
      {
         if(this.openMenu("sets"))
         {
            this.setsMenu.mode = param1;
            this.showMenu(this.setsMenu);
            this.setsMenu.gotoAndStop(3);
            this.setsMenu.gotoAndStop(2);
            this.setsMenu.init(param1,param2);
         }
      }
      
      public function openForgeMenu() : *
      {
         if(this.openMenu("forge"))
         {
            this.forgeSelect.gotoAndStop(2);
            this.forgeSelect.gotoAndPlay(1);
            this.showMenu(this.forgeSelect);
         }
      }
      
      public function openMapMenu() : *
      {
         if(Items.shovel.quantity)
         {
            tipCompleteFlag[2] = true;
         }
         if(this.openMenu("minimap"))
         {
            this.showMenu(this.minimapMenu);
            this.minimapMenu.update();
         }
      }
      
      public function openGoalsMenu() : *
      {
         if(SaveData.foesDefeated > 30)
         {
            tipCompleteFlag[6] = true;
         }
         if(this.openMenu("goals"))
         {
            this.showMenu(this.goalsSelect);
         }
      }
      
      public function openHelpMenu() : *
      {
         this.clearMenus();
         this.currentMenu = "help";
      }
      
      public function openOptionsMenu() : *
      {
         tipCompleteFlag[5] = true;
         this.optionsMenu.gotoAndStop(3);
         this.optionsMenu.gotoAndStop(1);
         if(this.openMenu("options"))
         {
            this.showMenu(this.optionsMenu);
         }
      }
      
      public function openSaveMenu() : *
      {
         if(this.openMenu("save"))
         {
            this.showMenu(this.saveMenu);
            this.saveMenu.saves.init();
         }
      }
      
      public function openQuitMenu() : *
      {
         if(this.openMenu("quit"))
         {
            this.showMenu(this.quitMenu);
         }
      }
      
      public function openMoregamesMenu() : *
      {
         this.clearMenus();
         this.currentMenu = "";
         Links.openLink(Links.sponsorSite);
      }
      
      public function openPlayersMenu() : *
      {
         if(this.openMenu("players"))
         {
            this.showMenu(this.playerMenu);
            this.initPlayerMenu();
         }
      }
      
      public function teardown(param1:Boolean = true) : *
      {
         this.removeEventListener(MouseEvent.RIGHT_MOUSE_DOWN,this.onRightClick);
         (Game.root as Main).stopAllChildren(Game.root);
         this.maps.removeChild(this.maps.player);
         this.maps.player = null;
         this.maps.teardown();
         Game.maps = null;
         Game.battle = null;
         MapData.map = null;
         parent.removeChild(this);
         if(param1)
         {
            Game.mode = Game.MAIN_MENU;
            Game.root.gotoAndStop(17);
         }
      }
      
      public function quit(param1:Boolean) : *
      {
         if(param1)
         {
            this.teardown();
         }
         else
         {
            this.currentMenu = "";
            this.clearMenus();
         }
      }
      
      public function showPremium() : *
      {
         this.clearMenus();
         this.premiumMenu.visible = true;
         this.premiumMenu.init();
      }
      
      public function showTransfer() : *
      {
         this.clearMenus();
         this.transferMenu.visible = true;
         this.transferMenu.gotoAndPlay(2);
      }
      
      public function buyPremium() : *
      {
         var _loc1_:Spell = null;
         this.clearMenus();
         this.premiumMenu.visible = true;
         this.premiumMenu.gotoAndStop(2);
         Main.hasPremium = true;
         Main.unlockPremiumStuff();
         for each(_loc1_ in Spells.PREMIUM_SKILLS)
         {
            _loc1_.level = 0;
         }
      }
      
      public function showShop(param1:Array) : *
      {
         this.clearMenus();
         this.shopMenu.visible = true;
         this.shopMenu.init(param1[0],param1[1]);
         this.back.visible = true;
      }
      
      public function showText(param1:String, param2:int = 0, param3:int = 1) : *
      {
         this.textbox.visible = true;
         this.textbox.arrow.visible = false;
         this.textbox.ex.visible = true;
         this.textbox.texter.play();
         Global.translate(this.textbox.box,"",0," ");
         Global.translate(this.textbox.box2,"",0," ");
         if(param3 == 0)
         {
            param3 = Text.getPlayerNumberFromEmoticon(param2);
         }
         if(!param1)
         {
            param1 = "no text here for some reason. index out of bounds probably, or no translation available.";
         }
         if(param2 <= 0)
         {
            this.textbox.texter.gotoAndStop(1);
            this.textbox.gotoAndStop(2);
            this.textbox.box.text = "";
            Global.translate(this.textbox.box2,"",0,param1);
            if(Options.isCJ())
            {
               this.textbox.resizeAll();
            }
         }
         else
         {
            this.textbox.gotoAndStop(3);
            this.textbox.emo.playerNo = param3;
            this.textbox.emo.show(param2 - 1);
            this.textbox.box2.text = "";
            this.textbox.texter.reset();
            this.textbox.texter.fullText = param1;
            this.textbox.texter.gotoAndPlay(1);
         }
         if(Maps.instance.cursor)
         {
            Maps.instance.cursor.x = 2000;
            Maps.instance.cursor2.x = 2000;
         }
      }
      
      public function treeTreasure() : *
      {
         var _loc1_:Array = [];
         if(Math.random() < 0.3)
         {
            _loc1_.push(Items.wood);
            _loc1_.push(1);
         }
         if(Math.random() < 0.25)
         {
            _loc1_.push(Items.herb);
            _loc1_.push(1);
         }
         if(Math.random() < 0.15)
         {
            _loc1_.push(Items.root);
            _loc1_.push(1);
         }
         if(_loc1_.length)
         {
            this.showTreasure(_loc1_);
         }
      }
      
      public function snowTreasure() : *
      {
         var _loc1_:Array = [];
         if(Math.random() < 0.8)
         {
            _loc1_.push(Items.snowball);
            _loc1_.push(1);
         }
         if(Math.random() < 0.1)
         {
            _loc1_.push(Items.water);
            _loc1_.push(1);
         }
         if(Math.random() < 0.4)
         {
            _loc1_.push(Items.ice);
            _loc1_.push(1);
         }
         if(Math.random() < 0.02)
         {
            _loc1_.push(Items.moonpearl);
            _loc1_.push(1);
         }
         if(_loc1_.length)
         {
            this.showTreasure(_loc1_);
         }
      }
      
      public function dirtTreasure() : *
      {
         var _loc1_:Array = [];
         if(Math.random() < 0.5)
         {
            _loc1_.push(Items.turd);
            _loc1_.push(1);
         }
         if(Math.random() < 0.2)
         {
            _loc1_.push(Items.brick);
            _loc1_.push(1);
         }
         if(Math.random() < 0.08)
         {
            _loc1_.push(Items.pipe);
            _loc1_.push(1);
         }
         if(Math.random() < 0.06)
         {
            _loc1_.push(Items.claw);
            _loc1_.push(1);
         }
         if(Math.random() < 0.05)
         {
            _loc1_.push(Items.rune2);
            _loc1_.push(1);
         }
         if(Math.random() < 0.02)
         {
            _loc1_.push(Items.spike);
            _loc1_.push(1);
         }
         if(_loc1_.length)
         {
            this.showTreasure(_loc1_);
         }
      }
      
      public function crystalTreasure() : *
      {
         var _loc1_:Array = [];
         if(Math.random() < 0.7)
         {
            _loc1_.push(Items.glass);
            _loc1_.push(1);
         }
         if(Math.random() < 0.15)
         {
            _loc1_.push(Items.ruby);
            _loc1_.push(1);
         }
         if(Math.random() < 0.05)
         {
            _loc1_.push(Items.rune);
            _loc1_.push(1);
         }
         if(Math.random() < 0.03)
         {
            _loc1_.push(Items.darkmatter);
            _loc1_.push(1);
         }
         if(_loc1_.length)
         {
            this.showTreasure(_loc1_);
         }
      }
      
      public function rockTreasure() : *
      {
         var _loc1_:Array = [];
         if(Math.random() < 0.16)
         {
            _loc1_.push(Items.turd);
            _loc1_.push(1);
         }
         if(Math.random() < 0.12)
         {
            _loc1_.push(Items.iron);
            _loc1_.push(1);
         }
         if(Math.random() < 0.06)
         {
            _loc1_.push(Items.magma);
            _loc1_.push(1);
         }
         if(Math.random() < 0.08)
         {
            _loc1_.push(Items.geode);
            _loc1_.push(1);
         }
         if(Math.random() < 0.02)
         {
            _loc1_.push(Items.sapphire);
            _loc1_.push(1);
         }
         if(Math.random() < 0.02)
         {
            _loc1_.push(Items.emerald);
            _loc1_.push(1);
         }
         if(Math.random() < 0.02)
         {
            _loc1_.push(Items.ruby);
            _loc1_.push(1);
         }
         if(Math.random() < 0.02)
         {
            _loc1_.push(Items.topaz);
            _loc1_.push(1);
         }
         if(Math.random() < 0.01)
         {
            _loc1_.push(Items.diamond);
            _loc1_.push(1);
         }
         if(_loc1_.length)
         {
            this.showTreasure(_loc1_);
         }
      }
      
      public function showTreasure(param1:Array, param2:int = 1, param3:Array = null) : *
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         var _loc8_:Class = null;
         var _loc9_:Boolean = false;
         var _loc10_:Spell = null;
         var _loc11_:String = null;
         var _loc12_:int = 0;
         var _loc13_:Spell = null;
         var _loc14_:int = 0;
         this.clearMenus();
         Main.sendKongStats();
         this.treasurebox.visible = true;
         this.treasurebox.gotoAndStop(param2);
         this.treasurebox.fader.gotoAndPlay(2);
         var _loc4_:Array = [];
         if(param2 == 2)
         {
            _loc6_ = 0;
            while(_loc6_ < param3.length && _loc6_ < 6)
            {
               _loc7_ = param3[_loc6_];
               if(_loc7_ is Summon)
               {
                  Icon.text = "1";
                  _loc4_.push(GUI.createIcon(this.treasurebox,_loc7_,null,true,Icon.SUMMON));
               }
               else
               {
                  Icon.text = "" + param3[_loc6_ + 1];
                  _loc4_.push(GUI.createIcon(this.treasurebox,_loc7_,null,true,Icon.ITEM));
               }
               _loc6_ += 2;
            }
            if(param3.length < 6)
            {
               _loc4_.push(null);
            }
            if(param3.length < 4)
            {
               _loc4_.push(null);
            }
         }
         _loc6_ = 0;
         for(; _loc6_ < param1.length && _loc6_ < 6; _loc6_ += 2)
         {
            _loc5_ = true;
            _loc7_ = param1[_loc6_];
            Icon.text = "" + param1[_loc6_ + 1];
            if(param2 != 3)
            {
               _loc8_ = Class(getDefinitionByName(getQualifiedClassName(_loc7_)));
               if(_loc8_ == Card)
               {
                  ++_loc7_.quantity;
                  Icon.text = SetStrings.getString("names","card");
                  _loc4_.push(GUI.createIcon(this.treasurebox,_loc7_,null,_loc5_,Icon.CARD));
                  Cards.calculatePerks();
                  this.updatePlayerBars(true);
               }
               if(_loc8_ == Item)
               {
                  _loc7_.quantity += param1[_loc6_ + 1];
                  _loc4_.push(GUI.createIcon(this.treasurebox,_loc7_,null,_loc5_,Icon.ITEM));
               }
               if(_loc8_ == Equip)
               {
                  if(Options.altEquipLocations)
                  {
                     _loc7_ = Equip.getRandomEquip((_loc7_ as Equip).type);
                  }
                  if(!_loc7_)
                  {
                     continue;
                  }
                  Icon.text = SetStrings.getString("names",(_loc7_ as Equip).type);
                  if(!(_loc7_ as Equip).owned)
                  {
                     (_loc7_ as Equip).owned = true;
                  }
                  _loc4_.push(GUI.createIcon(this.treasurebox,_loc7_,null,_loc5_,Icon.EQUIP));
               }
               if(_loc8_ == Spell)
               {
                  _loc9_ = false;
                  for each(_loc10_ in Spells.summons)
                  {
                     if(_loc7_ == _loc10_)
                     {
                        _loc9_ = true;
                     }
                  }
                  _loc11_ = Icon.SKILL;
                  if(_loc9_)
                  {
                     Icon.text = "pet";
                     _loc11_ = Icon.SUMMON;
                  }
                  else
                  {
                     Icon.text = SetStrings.getString("names","skill");
                     _loc11_ = Icon.SKILL;
                  }
                  Skills.user = null;
                  if(!(_loc7_ as Spell).owned)
                  {
                     (_loc7_ as Spell).owned = true;
                  }
                  _loc4_.push(GUI.createIcon(this.treasurebox,_loc7_,null,_loc5_,_loc11_));
                  _loc12_ = 0;
                  for each(_loc13_ in Spells.summons)
                  {
                     if(_loc13_.owned)
                     {
                        _loc12_++;
                     }
                  }
               }
            }
            if(param2 == 3)
            {
               if(_loc7_ is Summon)
               {
                  _loc14_ = 1;
                  if(Summons.OWNED_SUMMONS.indexOf(_loc7_) == -1)
                  {
                     _loc5_ = false;
                     _loc14_ = 0;
                  }
                  Icon.text = "" + _loc14_ + "/1";
                  _loc4_.push(GUI.createIcon(this.treasurebox,_loc7_,null,_loc5_,Icon.SUMMON));
               }
               else
               {
                  if(_loc7_.quantity < param1[_loc6_ + 1])
                  {
                     _loc5_ = false;
                  }
                  Icon.text = "" + _loc7_.quantity + "/" + param1[_loc6_ + 1];
                  _loc4_.push(GUI.createIcon(this.treasurebox,_loc7_,null,_loc5_,Icon.ITEM));
               }
            }
            Icon.text = "";
         }
         if(param2 == 2)
         {
            GUI.createIconMatrix(_loc4_,3,190,-43,18,26);
         }
         else
         {
            GUI.createIconMatrix(_loc4_,3,190,39,18);
         }
      }
      
      public function cardMove(param1:int) : *
      {
         var _loc2_:MovieClip = null;
         var _loc4_:Player = null;
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         tipCompleteFlag[7] = true;
         var _loc3_:Player = Game.party[param1 - 1];
         var _loc6_:int = 1;
         while(_loc6_ <= 5)
         {
            if(this.playerMenu["card" + _loc6_].pNo == param1)
            {
               _loc2_ = this.playerMenu["card" + _loc6_];
            }
            _loc6_++;
         }
         if(this.draggable)
         {
            this.draggable = null;
            _loc2_.x = _loc2_.ox;
            _loc2_.y = _loc2_.oy;
            _loc7_ = 333;
            _loc8_ = 250;
            if(Game.root.mouseX <= _loc7_ && Game.root.mouseY <= _loc8_)
            {
               _loc5_ = 0;
            }
            if(Game.root.mouseX > _loc7_ && Game.root.mouseX <= _loc7_ * 2 && Game.root.mouseY <= _loc8_)
            {
               _loc5_ = 1;
            }
            if(Game.root.mouseX > _loc7_ * 2 && Game.root.mouseY <= _loc8_)
            {
               _loc5_ = 2;
            }
            if(Game.root.mouseX <= 500 && Game.root.mouseY > _loc8_)
            {
               _loc5_ = 3;
            }
            if(Game.root.mouseX > 500 && Game.root.mouseY > _loc8_)
            {
               _loc5_ = 4;
            }
            if(Game.party.length < _loc5_ + 1)
            {
               _loc5_ = int(Game.party.length - 1);
            }
            _loc4_ = Game.party[_loc5_];
            Game.party[_loc5_] = _loc3_;
            Game.party[param1 - 1] = _loc4_;
            this.initPlayerMenu();
            this.updatePlayerBars();
            this.showMenu(_loc2_);
            this.showMenu(this.playerMenu["card" + (_loc5_ + 1)]);
         }
         else
         {
            this.draggable = _loc2_;
         }
         this.maps.player.player = (Game.party[0] as Player).playerNo;
         this.maps.player.skin();
      }
      
      public function initPlayerMenu() : *
      {
         var _loc1_:MovieClip = null;
         var _loc2_:Player = null;
         var _loc4_:Array = null;
         var _loc5_:Emoticon = null;
         var _loc6_:int = 0;
         GUI.removeIcons();
         var _loc3_:int = 1;
         while(_loc3_ <= 5)
         {
            _loc1_ = this.playerMenu["card" + _loc3_];
            _loc1_.visible = true;
            _loc1_.gotoAndStop(2);
            _loc1_.gotoAndStop(1);
            if(_loc3_ > Game.party.length)
            {
               _loc1_.visible = false;
            }
            else
            {
               _loc2_ = Game.party[_loc3_ - 1];
               _loc1_.pNo = _loc3_;
               _loc1_.ox = _loc1_.x;
               _loc1_.oy = _loc1_.y;
               Global.translate(_loc1_.player,"",10,SetStrings.getPlayerName(_loc2_.playerNo - 1));
               Global.translate(_loc1_.level,"level",5," " + _loc2_.level);
               _loc1_.hp.text = SetStrings.getString("menus","HP") + " " + _loc2_.getHp();
               _loc1_.hpbar.gotoAndStop(_loc2_.getHpPercent());
               _loc1_.lpbar.gotoAndStop(_loc2_.getLimitPercent());
               _loc1_.expbar.gotoAndStop(_loc2_.getExpPercent());
               Global.translate(_loc1_.expt,"EXP");
               _loc1_.player.setTextFormat(GUI.boldText);
               _loc1_.level.setTextFormat(GUI.boldText);
               GUI.setTextColor(_loc1_.level);
               _loc1_.hp.setTextFormat(GUI.boldText);
               _loc4_ = [];
               _loc4_.push(GUI.createIcon(_loc1_,_loc2_.weapon,null,true,Icon.EQUIP));
               _loc4_.push(GUI.createIcon(_loc1_,_loc2_.hat,null,true,Icon.EQUIP));
               _loc4_.push(GUI.createIcon(_loc1_,_loc2_.armor,null,true,Icon.EQUIP));
               _loc4_.push(GUI.createIcon(_loc1_,_loc2_.flair1,null,true,Icon.EQUIP));
               _loc4_.push(GUI.createIcon(_loc1_,_loc2_.flair2,null,true,Icon.EQUIP));
               _loc4_.push(GUI.createIcon(_loc1_,_loc2_.flair3,null,true,Icon.EQUIP));
               GUI.createIconMatrix(_loc4_,6,105,94,2);
               _loc1_.setChildIndex(_loc1_.equips,_loc1_.numChildren - 1);
               _loc1_.setChildIndex(_loc1_.skills,_loc1_.numChildren - 1);
               _loc5_ = new Emoticon();
               _loc1_.addChild(_loc5_);
               _loc5_.x = 93;
               _loc5_.y = -24;
               _loc5_.playerNo = _loc2_.playerNo;
               _loc6_ = 1;
               if(_loc2_.getHpPercent() >= 100)
               {
                  _loc6_ = 3;
               }
               else if(_loc2_.getHpPercent() >= 75)
               {
                  _loc6_ = 2;
               }
               else if(_loc2_.getHpPercent() >= 50)
               {
                  _loc6_ = 1;
               }
               else if(_loc2_.getHpPercent() >= 25)
               {
                  _loc6_ = 5;
               }
               else
               {
                  _loc6_ = 8;
               }
               _loc5_.show((_loc2_.playerNo - 1) * 30 + _loc6_ - 1);
               _loc1_.setChildIndex(_loc1_.skills,_loc1_.numChildren - 1);
            }
            _loc3_++;
         }
      }
      
      public function cardEquips(param1:int) : *
      {
         this.openEquipsMenu();
         this.selectPlayer(-1,Game.party[param1 - 1]);
      }
      
      public function cardStats(param1:int) : *
      {
         this.openStatsMenu();
         this.selectPlayer(-1,Game.party[param1 - 1]);
      }
      
      public function cardSkills(param1:int) : *
      {
         this.openSkillsMenu();
         this.selectPlayer(-1,Game.party[param1 - 1]);
      }
      
      public function cardFood() : *
      {
         this.openItemsMenu();
         this.selectItem(1);
      }
      
      public function selectForge(param1:int = 0, param2:Boolean = false) : *
      {
         var _loc5_:Icon = null;
         var _loc7_:Boolean = false;
         var _loc8_:Player = null;
         var _loc9_:Equip = null;
         GUI.removeIcons();
         if(!param2)
         {
            this.forgeSelect.gotoAndStop(2);
            this.forgeSelect.gotoAndPlay(1);
            this.showMenu(this.forgeMenu);
         }
         if(param1 != 0)
         {
            this.previousChoice = param1;
            this.forgeMenu2.visible = false;
         }
         else
         {
            param1 = this.previousChoice;
         }
         var _loc3_:Array = [];
         if(param1 == 1)
         {
            _loc3_ = Equips.SWORDS;
         }
         if(param1 == 2)
         {
            _loc3_ = Equips.STALVES;
         }
         if(param1 == 3)
         {
            _loc3_ = Equips.GUNS;
         }
         if(param1 == 4)
         {
            _loc3_ = Equips.BOWS;
         }
         if(param1 == 5)
         {
            _loc3_ = Equips.TOYS;
         }
         if(param1 == 6)
         {
            _loc3_ = Equips.MALE_HATS;
         }
         if(param1 == 7)
         {
            _loc3_ = Equips.MALE_ARMOR;
         }
         if(param1 == 8)
         {
            _loc3_ = Equips.FEMALE_HATS;
         }
         if(param1 == 9)
         {
            _loc3_ = Equips.FEMALE_ARMOR;
         }
         if(param1 == 10)
         {
            _loc3_ = Equips.FLAIRS_DISPLAY.slice(0,21);
         }
         if(param1 == 11)
         {
            _loc3_ = Equips.FLAIRS_DISPLAY.slice(21,42);
         }
         if(param1 == 12)
         {
            _loc3_ = Equips.FLAIRS_DISPLAY.slice(42);
         }
         var _loc4_:Array = [];
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_.length)
         {
            if(!(!Main.hasPremium && _loc3_[_loc6_] && Boolean(_loc3_[_loc6_].premium)))
            {
               if(Boolean(_loc3_[_loc6_]) && !_loc3_[_loc6_].owned)
               {
                  _loc4_.push(null);
               }
               else
               {
                  _loc7_ = false;
                  if(_loc3_[_loc6_])
                  {
                     _loc7_ = Boolean(_loc3_[_loc6_].hasMaterials());
                  }
                  if(_loc3_[_loc6_])
                  {
                     _loc5_ = GUI.createIcon(this.forgeMenu,_loc3_[_loc6_],this.selectForgeEquip,_loc7_,Icon.EQUIP,0,0,0,-1,11,true);
                     for each(_loc8_ in Players.PLAYERS_ORDER)
                     {
                        for each(_loc9_ in _loc8_.equips)
                        {
                           if(_loc9_ && _loc9_ == _loc3_[_loc6_])
                           {
                              _loc5_.player.gotoAndStop(_loc8_.playerNo + 1);
                              if(_loc5_.player.x > 10)
                              {
                                 _loc5_.player.x -= 22;
                                 _loc5_.player.y -= 22;
                              }
                           }
                        }
                     }
                  }
                  if(Boolean(_loc3_[_loc6_]) && !_loc3_[_loc6_].upgradable())
                  {
                     _loc5_.alpha = 0.5;
                  }
                  if(_loc3_[_loc6_])
                  {
                     _loc4_.push(_loc5_);
                  }
               }
            }
            _loc6_++;
         }
         GUI.createIconMatrix(_loc4_,7,17,40,5,5);
      }
      
      public function selectForgeEquip(param1:Object) : *
      {
         this.showMenu(this.forgeMenu2);
         this.forgeMenu2.gotoAndStop(2);
         this.forgeMenu2.gotoAndStop(1);
         this.forgeMenu2.showData(param1);
      }
      
      public function selectPlayer(param1:int = 0, param2:Player = null) : *
      {
         var _loc3_:Player = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         this.equipList.visible = false;
         this.equipList2.visible = false;
         this.selectedSkill = null;
         if(param1 == 1)
         {
            _loc3_ = Players.player1;
         }
         if(param1 == 2)
         {
            _loc3_ = Players.player2;
         }
         if(param1 == 3)
         {
            _loc3_ = Players.player3;
         }
         if(param1 == 4)
         {
            _loc3_ = Players.player4;
         }
         if(param1 == 5)
         {
            _loc3_ = Players.player5;
         }
         if(param1 == 0)
         {
            _loc3_ = this.prevPlayer;
         }
         if(param1 == -1)
         {
            _loc3_ = param2;
         }
         if(param2)
         {
            param1 = param2.playerNo;
         }
         this.prevPlayer = _loc3_;
         if(this.currentMenu == "stats")
         {
            this.showMenu(this.statsMenu);
            this.statsMenu.gotoAndStop(3);
            this.statsMenu.gotoAndPlay(1);
            this.statsMenu.display(_loc3_);
            this.statsMenu.pointer.x = -250 - 67 + param1 * 67;
            this.createPlayer(this.statsMenu,90);
            this.graphic.x += 100;
            this.graphic.y += 5;
         }
         if(this.currentMenu == "skills")
         {
            GUI.removeIcons();
            this.cancelSkillEquipSelection();
            this.showMenu(this.skillsMenu);
            this.showSkills();
         }
         if(this.currentMenu == "equips")
         {
            GUI.removeIcons();
            this.showMenu(this.equipsMenu);
            this.equipsMenu.gotoAndStop(3);
            this.equipsMenu.gotoAndPlay(1);
            this.equipsMenu.display(_loc3_);
            if(param1)
            {
               this.equipsMenu.pointer.x = -112 - 67 + param1 * 67;
            }
            for each(_loc4_ in Stats.STATS)
            {
               this.equipsMenu[_loc4_ + "2"].text = "";
            }
            _loc5_ = [];
            _loc5_.push(GUI.createIcon(this.equipsMenu,_loc3_.weapon,this.selectEquip,true,Icon.EQUIP,0,0,0,1));
            _loc5_.push(GUI.createIcon(this.equipsMenu,_loc3_.hat,this.selectEquip,true,Icon.EQUIP,0,0,0,2));
            _loc5_.push(GUI.createIcon(this.equipsMenu,_loc3_.armor,this.selectEquip,true,Icon.EQUIP,0,0,0,3));
            _loc5_.push(GUI.createIcon(this.equipsMenu,_loc3_.flair1,this.selectEquip,true,Icon.EQUIP,0,0,0,4));
            _loc5_.push(GUI.createIcon(this.equipsMenu,_loc3_.flair2,this.selectEquip,true,Icon.EQUIP,0,0,0,5));
            _loc5_.push(GUI.createIcon(this.equipsMenu,_loc3_.flair3,this.selectEquip,true,Icon.EQUIP,0,0,0,6));
            _loc6_ = 1;
            while(_loc6_ < 7)
            {
               this.equipsMenu["f" + _loc6_].alpha = 0.1;
               if(([_loc3_.weapon,_loc3_.hat,_loc3_.armor,_loc3_.flair1,_loc3_.flair2,_loc3_.flair3][_loc6_ - 1] as Equip).upgradable() && ([_loc3_.weapon,_loc3_.hat,_loc3_.armor,_loc3_.flair1,_loc3_.flair2,_loc3_.flair3][_loc6_ - 1] as Equip).hasMaterials())
               {
                  this.equipsMenu["f" + _loc6_].alpha = 1;
               }
               _loc6_++;
            }
            GUI.createIconMatrix(_loc5_,3,-59,127,30,-25);
            this.createPlayer(this.equipsMenu,90);
         }
      }
      
      public function showSkills() : *
      {
         var _loc2_:Object = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         this.skillsMenu.gotoAndStop(1);
         GUI.removeIcons();
         Skills.user = this.prevPlayer;
         this.skillsMenu.pointer.x = this.prevPlayer.playerNo * 67 - 375;
         this.skillsMenu.txt6.text = GUI.formatNumber(this.prevPlayer.AP);
         this.createEmoticon(this.prevPlayer.playerNo,1,this.skillsMenu,80,-35);
         this.emo.show([1,31,61,91,121][this.prevPlayer.playerNo - 1] - 1);
         var _loc1_:Array = [[],[],[],[]];
         for each(_loc2_ in this.prevPlayer.skillsMain)
         {
            if(!_loc2_)
            {
               (_loc1_[1] as Array).push(Equips.empty);
            }
            else
            {
               _loc2_ = Spell.getUpgrades(_loc2_);
               if(_loc2_.animation.length == 1)
               {
                  (_loc1_[0] as Array).push(_loc2_);
               }
               else
               {
                  (_loc1_[1] as Array).push(_loc2_);
               }
            }
         }
         for each(_loc2_ in this.prevPlayer.skillsLimit)
         {
            if(!_loc2_)
            {
               (_loc1_[3] as Array).push(Equips.empty);
            }
            else if(_loc2_.animation.length == 1)
            {
               (_loc1_[2] as Array).push(_loc2_);
            }
            else
            {
               (_loc1_[3] as Array).push(_loc2_);
            }
         }
         (_loc1_[0] as Array).push(this.prevPlayer.skillsLimit[0]);
         (_loc1_[2] as Array).splice(0,1);
         _loc3_ = [];
         _loc4_ = 8 - _loc1_[1].length;
         while(_loc4_ > 0)
         {
            (_loc1_[1] as Array).push(Equips.empty);
            _loc4_--;
         }
         _loc4_ = 4 - _loc1_[3].length;
         while(_loc4_ > 0)
         {
            (_loc1_[3] as Array).push(Equips.empty);
            _loc4_--;
         }
         _loc4_ = 0;
         for each(_loc5_ in _loc1_)
         {
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               if(_loc5_[_loc7_] is Spell)
               {
                  Icon.text = SetStrings.getString("menus","lvl") + _loc5_[_loc7_].getDisplayableLevel();
                  _loc8_ = true;
                  if(_loc5_[_loc7_].level == 0)
                  {
                     if(Spells.canLearnSkill(this.prevPlayer,_loc5_[_loc7_],false))
                     {
                        Icon.text = "+";
                     }
                     else
                     {
                        Icon.text = "";
                     }
                  }
                  else if(_loc5_[_loc7_].level == _loc5_[_loc7_].AP.length && !_loc5_[_loc7_].upgradesInto)
                  {
                     Icon.text = SetStrings.getString("names","max");
                     _loc8_ = true;
                  }
                  if(_loc5_[_loc7_])
                  {
                     _loc3_.push(GUI.createIcon(this.skillsMenu,_loc5_[_loc7_],this.selectSkill,_loc8_,Icon.SKILL,0,0,0,1,31,false,_loc6_));
                  }
               }
               else
               {
                  Icon.text = "";
                  if(_loc4_ == 1)
                  {
                     _loc3_.push(GUI.createIcon(this.skillsMenu,_loc5_[_loc7_],this.openSkillEquip1,true,Icon.EQUIP,0,0,0,1,16,false,_loc6_));
                  }
                  if(_loc4_ == 3)
                  {
                     _loc3_.push(GUI.createIcon(this.skillsMenu,_loc5_[_loc7_],this.openSkillEquip2,true,Icon.EQUIP,0,0,0,1,16,false,_loc6_));
                  }
               }
               _loc6_++;
               if(!(_loc5_[_loc7_] is Equip))
               {
                  if(!Spells.canLearnSkill(this.prevPlayer,_loc5_[_loc7_],false) && _loc5_[_loc7_].level == 0)
                  {
                     _loc3_[_loc3_.length - 1].alpha = 0.25;
                  }
                  if(Spells.canLearnSkill(this.prevPlayer,_loc5_[_loc7_],false) && _loc5_[_loc7_].level == 0)
                  {
                     _loc3_[_loc3_.length - 1].alpha = 0.5;
                  }
                  if(_loc5_[_loc7_].AP[_loc5_[_loc7_].level] <= this.prevPlayer.AP || _loc5_[_loc7_].upgradesInto && _loc5_[_loc7_].upgradesInto.AP[0] <= this.prevPlayer.AP)
                  {
                     _loc3_[_loc3_.length - 1].alpha = 1;
                  }
                  else
                  {
                     _loc3_[_loc3_.length - 1].alpha = 0.5;
                  }
               }
               _loc7_++;
            }
            Icon.text = "";
            if(_loc4_ == 0)
            {
               GUI.createIconMatrix(_loc3_,3,-383,14,4,4);
            }
            if(_loc4_ == 1)
            {
               GUI.createIconMatrix(_loc3_,4,-173,14,4,4);
            }
            if(_loc4_ == 2)
            {
               GUI.createIconMatrix(_loc3_,4,-173,165,4,4);
            }
            if(_loc4_ == 3)
            {
               GUI.createIconMatrix(_loc3_,4,-173,260,4,4);
            }
            _loc3_ = [];
            _loc4_++;
         }
      }
      
      public function openSkillEquip1(param1:Object) : *
      {
         var _loc3_:Spell = null;
         var _loc4_:Spell = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         this.skillPosition = param1.temp;
         this.cancelEquipSelection();
         this.skillEquip1.visible = true;
         var _loc2_:Array = [];
         for each(_loc4_ in Spells.BASE_BONUS_SKILLS)
         {
            if(_loc4_.owned)
            {
               _loc3_ = _loc4_;
               _loc3_ = Spell.getUpgrades(_loc3_);
               _loc5_ = true;
               _loc6_ = Spells.inUseBy(_loc3_);
               if(_loc6_ != 8)
               {
                  _loc5_ = false;
               }
               if(_loc3_.animation[this.prevPlayer.playerNo - 1] == "" && !Options.learnAllSkills)
               {
                  _loc5_ = false;
               }
               _loc2_.push(GUI.createIcon(this.skillEquip1,_loc3_,this.equipSkill1,_loc5_,Icon.SKILL,0,0,0,1,31));
               _loc2_[_loc2_.length - 1].player.gotoAndStop(_loc6_);
               _loc2_[_loc2_.length - 1].player.x -= 22;
               _loc2_[_loc2_.length - 1].player.y -= 22;
               if(_loc3_.animation[this.prevPlayer.playerNo - 1] == "" && !Options.learnAllSkills)
               {
                  _loc2_[_loc2_.length - 1].alpha = 0.3;
               }
            }
            else
            {
               _loc2_.push(null);
            }
         }
         GUI.createIconMatrix(_loc2_,8,6,8,4,4);
      }
      
      public function openSkillEquip2(param1:Object) : *
      {
         var _loc3_:Spell = null;
         var _loc4_:Spell = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         this.skillPosition = param1.temp;
         this.cancelEquipSelection();
         this.skillEquip2.visible = true;
         var _loc2_:Array = [];
         for each(_loc4_ in Spells.BONUS_LIMITS)
         {
            if(_loc4_.owned)
            {
               _loc3_ = _loc4_;
               _loc5_ = true;
               _loc6_ = Spells.inUseBy(_loc3_);
               if(_loc6_ != 8)
               {
                  _loc5_ = false;
               }
               if(_loc3_.animation[this.prevPlayer.playerNo - 1] == "" && !Options.learnAllSkills)
               {
                  _loc5_ = false;
               }
               _loc2_.push(GUI.createIcon(this.skillEquip2,_loc3_,this.equipSkill2,_loc5_,Icon.SKILL,0,0,0,1,31));
               _loc2_[_loc2_.length - 1].player.gotoAndStop(_loc6_);
               _loc2_[_loc2_.length - 1].player.x -= 22;
               _loc2_[_loc2_.length - 1].player.y -= 22;
               if(_loc3_.animation[this.prevPlayer.playerNo - 1] == "" && !Options.learnAllSkills)
               {
                  _loc2_[_loc2_.length - 1].alpha = 0.3;
               }
            }
            else
            {
               _loc2_.push(null);
            }
         }
         GUI.createIconMatrix(_loc2_,5,6 + 38,8,4,4);
      }
      
      public function equipSkill1(param1:Spell) : *
      {
         param1 = param1.getBase();
         if(param1.animation[this.prevPlayer.playerNo - 1] == "" && !Options.learnAllSkills)
         {
            return;
         }
         if(Spells.inUseBy(param1) != 8)
         {
            return;
         }
         Medals.unlock(Medals.skilledCustomisation);
         Maps.playSound("equip");
         this.prevPlayer.skillsMain[13 + this.skillPosition] = param1;
         this.cancelSkillEquipSelection();
         this.emo.show((this.prevPlayer.playerNo - 1) * 30 + 1);
      }
      
      public function equipSkill2(param1:Spell) : *
      {
         if(param1.animation[this.prevPlayer.playerNo - 1] == "" && !Options.learnAllSkills)
         {
            return;
         }
         if(Spells.inUseBy(param1) != 8)
         {
            return;
         }
         Maps.playSound("equip");
         this.prevPlayer.skillsLimit[3 + this.skillPosition] = param1;
         this.cancelSkillEquipSelection();
         this.emo.show([16,34,66,96,140][this.prevPlayer.playerNo - 1] - 1);
      }
      
      public function cancelSkillEquipSelection() : *
      {
         this.skillEquip1.visible = false;
         this.skillEquip2.visible = false;
         GUI.removeIcons();
         this.showSkills();
      }
      
      public function selectSkill(param1:Object) : *
      {
         var full:Boolean;
         var data:Object = param1;
         this.skillPosition = data.temp;
         GUI.removeIcons(7);
         full = false;
         GUI.removeIcons();
         if(this.skillsMenu.forget)
         {
            this.skillsMenu.forget.visible = false;
         }
         if(this.skillsMenu.learn)
         {
            this.skillsMenu.learn.visible = false;
         }
         if(data.level == data.AP.length && !data.upgradesInto)
         {
            this.emo.x -= 43;
            this.emo.y += 4;
            this.skillsMenu.gotoAndStop(2);
            this.skillsMenu.display1.data = data;
            this.skillsMenu.display1.gotoAndPlay(1);
            if(data.animation.length == 1)
            {
               this.skillsMenu.forget.visible = false;
               this.skillsMenu.backb.x += 100;
               this.skillsMenu.txtb.x += 100;
            }
            this.skillsMenu.txt6.text = GUI.formatNumber(this.prevPlayer.AP);
            Global.translate(this.skillsMenu.txt2,"level",20," " + data.getDisplayableLevel());
            GUI.setTextColor(this.skillsMenu.txt2);
            this.emo.show([21,53,88,113,141][this.prevPlayer.playerNo - 1] - 1);
         }
         else if(data.level == 0)
         {
            this.emo.x -= 43;
            this.emo.y += 4;
            this.skillsMenu.gotoAndStop(3);
            this.skillsMenu.display1.data = data;
            this.skillsMenu.display1.gotoAndPlay(1);
            Global.translate(this.skillsMenu.txt2,"level",20," " + (data.level + 1));
            GUI.setTextColor(this.skillsMenu.txt2);
            this.skillsMenu.txt6.text = GUI.formatNumber(this.prevPlayer.AP);
            this.skillsMenu.ap.text = "" + GUI.formatNumber(data.AP[0]) + " " + SetStrings.getString("menus","AP");
            if(this.prevPlayer.AP < data.AP[0])
            {
               GUI.setTextColor(this.skillsMenu.ap,GUI.RED_TINT);
            }
            this.emo.show([15,45,75,117,136][this.prevPlayer.playerNo - 1] - 1);
         }
         else
         {
            this.emo.x += 201;
            this.emo.y += 4;
            this.skillsMenu.gotoAndStop(4);
            this.skillsMenu.display1.data = data;
            this.skillsMenu.display1.gotoAndStop(2);
            Global.translate(this.skillsMenu.learn.txt,"upgrade");
            if(data.animation.length == 1)
            {
               this.skillsMenu.forget.visible = false;
               this.skillsMenu.learn.x += 100;
               this.skillsMenu.backb.x += 150;
               this.skillsMenu.txtb.x += 150;
            }
            Global.translate(this.skillsMenu.txt2,"level",20," " + data.getDisplayableLevel());
            GUI.setTextColor(this.skillsMenu.txt2);
            if(data.level == data.AP.length)
            {
               data = data.upgradesInto;
               ++data.level;
            }
            else
            {
               ++data.level;
            }
            this.skillsMenu.display2.data = data;
            this.skillsMenu.display2.gotoAndStop(2);
            Global.translate(this.skillsMenu.txt3,"level",20," " + data.getDisplayableLevel());
            GUI.setTextColor(this.skillsMenu.txt3);
            --data.level;
            this.skillsMenu.txt6.text = GUI.formatNumber(this.prevPlayer.AP);
            this.skillsMenu.ap.text = "" + GUI.formatNumber(data.AP[data.level]) + " " + SetStrings.getString("menus","AP");
            if(this.prevPlayer.AP < data.AP[data.level])
            {
               GUI.setTextColor(this.skillsMenu.ap,GUI.RED_TINT);
            }
            this.highlightSkillUpgrades();
            this.emo.show([2,52,82,112,143][this.prevPlayer.playerNo - 1] - 1);
         }
         this.skillsMenu.backb.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            showSkills();
         });
         this.selectedSkill = data;
      }
      
      public function highlightSkillUpgrades() : *
      {
         var _loc1_:String = null;
         for each(_loc1_ in ["title","body","power","schance","sdegree","bchance","bdegree","power2","schance2","sdegree2","bchance2","bdegree2"])
         {
            if(!this.skillsMenu.display1[_loc1_] && this.skillsMenu.display2[_loc1_] && Boolean(this.skillsMenu.display1[_loc1_.substr(0,_loc1_.length - 1)]) && this.skillsMenu.display1[_loc1_.substr(0,_loc1_.length - 1)].text != this.skillsMenu.display2[_loc1_].text)
            {
               GUI.setTextColor(this.skillsMenu.display2[_loc1_],GUI.GREEN_TINT);
            }
            else if(Boolean(this.skillsMenu.display1[_loc1_]) && Boolean(this.skillsMenu.display2[_loc1_]) && this.skillsMenu.display1[_loc1_].text != this.skillsMenu.display2[_loc1_].text)
            {
               GUI.setTextColor(this.skillsMenu.display2[_loc1_],GUI.GREEN_TINT);
            }
         }
         if(!this.skillsMenu.display2.target2 && this.skillsMenu.display2.target.currentFrame != this.skillsMenu.display1.target.currentFrame)
         {
            this.skillsMenu.display2.target.gotoAndStop(this.skillsMenu.display2.target.currentFrame + 4);
         }
         if(Boolean(this.skillsMenu.display2.target2) && !this.skillsMenu.display1.target2)
         {
            if(this.skillsMenu.display2.target.currentFrame != this.skillsMenu.display1.target.currentFrame)
            {
               this.skillsMenu.display2.target.gotoAndStop(this.skillsMenu.display2.target.currentFrame + 4);
            }
            if(Boolean(this.skillsMenu.display2.target2) && this.skillsMenu.display2.target2.currentFrame != this.skillsMenu.display1.target.currentFrame)
            {
               this.skillsMenu.display2.target2.gotoAndStop(this.skillsMenu.display2.target2.currentFrame + 4);
            }
         }
      }
      
      public function learnSkill() : *
      {
         var _loc1_:int = this.prevPlayer.playerNo;
         var _loc2_:int = 0;
         if(this.selectedSkill.AP[this.selectedSkill.level] <= this.prevPlayer.AP && Spells.canLearnSkill(this.prevPlayer,this.selectedSkill,false))
         {
            this.prevPlayer.AP -= this.selectedSkill.AP[this.selectedSkill.level];
            ++this.selectedSkill.level;
            tipCompleteFlag[4] = true;
            if(this.selectedSkill.level == 1 && !this.selectedSkill.upgradesFrom)
            {
               this.splash.gotoAndPlay("newskill");
               Medals.unlock(Medals.skilledLearner);
               _loc2_ = (_loc1_ - 1) * 30 + 4;
            }
            else
            {
               this.splash.gotoAndPlay("skillup");
               _loc2_ = (_loc1_ - 1) * 30 + 3;
            }
            this.showSkills();
         }
         else
         {
            this.splash.gotoAndPlay("noAP");
            _loc2_ = (_loc1_ - 1) * 30 + 17;
         }
         this.emo.show(_loc2_ - 1);
      }
      
      public function forgetSkill() : *
      {
         if(this.prevPlayer.skillsMain.indexOf(this.selectedSkill.getBase()) != -1)
         {
            if(this.prevPlayer.recentSkills.indexOf(this.selectedSkill) != -1)
            {
               this.prevPlayer.recentSkills.splice(this.prevPlayer.recentSkills.indexOf(this.selectedSkill),1);
            }
            if(this.prevPlayer.recentSkills.indexOf(this.selectedSkill.getBase()) != -1)
            {
               this.prevPlayer.recentSkills.splice(this.prevPlayer.recentSkills.indexOf(this.selectedSkill.getBase()),1);
            }
            this.selectedSkill.cooldown = 0;
            this.selectedSkill.getBase().cooldown = 0;
            this.emo.show((this.prevPlayer.playerNo - 1) * 30 + 19 - 1);
            this.prevPlayer.skillsMain[13 + this.skillPosition] = null;
         }
         else
         {
            this.prevPlayer.skillsLimit[3 + this.skillPosition] = null;
            this.emo.show((this.prevPlayer.playerNo - 1) * 30 + 7 - 1);
         }
         Maps.playSound("unequip");
         this.showSkills();
      }
      
      public function createEmoticon(param1:int, param2:int, param3:MovieClip, param4:int = -1, param5:int = -1) : *
      {
         var p:int = param1;
         var f:int = param2;
         var parent:MovieClip = param3;
         var X:int = param4;
         var Y:int = param5;
         try
         {
            this.removeEmoticon();
            this.emo = new Emoticon();
            this.emo.playerNo = this.prevPlayer.playerNo;
            parent.addChild(this.emo);
            if(X != -1 && Y != -1)
            {
               this.emo.x = X;
               this.emo.y = Y;
            }
            else
            {
               this.emo.x = 500;
               this.emo.y = 16;
            }
            this.emo.gotoAndStop(1 + (p - 1) * 30 + f);
         }
         catch(errObject:Error)
         {
         }
      }
      
      public function removeEmoticon() : *
      {
         if(Boolean(this.emo) && Boolean(this.emo.parent))
         {
            this.emo.parent.removeChild(this.emo);
         }
         this.emo = null;
      }
      
      public function createPlayer(param1:MovieClip, param2:int = 100) : *
      {
         var _loc3_:Class = null;
         this.removePlayer();
         try
         {
            _loc3_ = getDefinitionByName(this.prevPlayer.graphicType);
            this.graphic = new _loc3_();
            param1.addChild(this.graphic);
            this.graphic.self = this.prevPlayer;
            this.graphic.scaleX *= param2 / 100;
            this.graphic.scaleY *= param2 / 100;
            this.graphic.x = -this.graphic.getX(1) + 380;
            this.graphic.y = -this.graphic.getY(1) + 195;
            if(this.prevPlayer.playerNo == 1)
            {
               this.graphic.x -= 60;
            }
            if(this.prevPlayer.playerNo == 3)
            {
               this.graphic.y += 0;
            }
            if(this.prevPlayer.playerNo == 4)
            {
               this.graphic.x -= 30;
            }
            if(this.prevPlayer.playerNo == 2)
            {
               this.graphic.x -= 25;
               this.graphic.y -= 5;
            }
            if(this.prevPlayer.playerNo == 5)
            {
               this.graphic.x -= 10;
               this.graphic.y -= 25;
            }
            (this.graphic as Player).playerNo = this.prevPlayer.playerNo;
            this.graphic.gotoAndStop("stand");
         }
         catch(errObject:Error)
         {
         }
      }
      
      public function removePlayer() : *
      {
         if(Boolean(this.graphic) && Boolean(this.graphic.parent))
         {
            this.graphic.parent.removeChild(this.graphic);
         }
         this.graphic = null;
      }
      
      public function createFoe(param1:Foe, param2:MovieClip, param3:int = 100) : *
      {
         this.removePlayer();
         var _loc4_:Class = getDefinitionByName(param1.graphicType);
         this.graphic = new _loc4_();
         param2.addChild(this.graphic);
         this.graphic.self = param1;
         if(param1 is EvilMatt || param1 is EvilNoLegs || param1 is EvilNatalie || param1 is EvilLance || param1 is EvilAnna)
         {
            this.graphic.scaleX *= -1;
            this.graphic.zombieMode = true;
         }
         this.graphic.scaleX *= param1.graphicScale / 10000 * param3;
         this.graphic.scaleY *= param1.graphicScale / 10000 * param3;
         this.graphic.x = -this.graphic.getX(1) - 620;
         this.graphic.y = -this.graphic.getY(1) + 170;
         this.graphic.skin = param1.skin;
         this.graphic.gotoAndPlay(1);
         this.graphic.gotoAndPlay("stand");
         this.graphic.gotoAndPlay(this.graphic.currentFrame - 1);
         if(param1 is BossNestCat || param1 is BossNestNinja)
         {
            this.graphic.y += 30;
            this.graphic.x -= 30;
         }
         if(param1 is BossGolemFire || param1 is BossGolemWater)
         {
            this.graphic.y += 30;
         }
         if(param1 is BossGigalith)
         {
            this.graphic.y += 50;
         }
         if(param1 is BossDevourer)
         {
            this.graphic.y += 50;
            this.graphic.x -= 15;
         }
         if(param1 is BossDevourerTentacle || param1 is BossDevourerClub)
         {
            this.graphic.y -= 30;
            this.graphic.x += 160;
         }
         if(param1 is ClassicGigaGolem)
         {
            this.graphic.y += 30;
            this.graphic.x -= 30;
         }
         if(param1 is ClassicSandworm)
         {
            this.graphic.y += 30;
            this.graphic.x += 10;
         }
         if(param1 is ClassicJack)
         {
            this.graphic.x -= 30;
            this.graphic.y += 15;
         }
         if(param1 is ClassicProtector)
         {
            this.graphic.y += 30;
         }
         if(param1 is ClassicRafflesia)
         {
            this.graphic.x -= 15;
            this.graphic.y += 5;
         }
         if(param1 is ClassicPraetorian)
         {
            this.graphic.x += 15;
            this.graphic.y += 40;
         }
         if(param1 is SketchGuncat)
         {
            this.graphic.x += 25;
            this.graphic.y += 25;
         }
         if(param1 is SketchPapalotl)
         {
            this.graphic.y += 20;
         }
         if(param1 is SketchXolotl)
         {
            this.graphic.x += 15;
            this.graphic.y += 5;
         }
         if(param1 is SketchGlaurung)
         {
            this.graphic.x -= 7;
            this.graphic.y += 50;
         }
         if(param1 is SketchGlaurung || param1 is SketchGuncat || param1 is SketchXolotl || param1 is SketchPapalotl)
         {
            this.graphic.gotoAndStop("bestiary");
         }
         this.graphic.bestiaryMode = true;
         this.graphic.mask = param2.foeMask;
      }
      
      public function selectEquip(param1:Object) : *
      {
         var _loc4_:int = 0;
         var _loc5_:Icon = null;
         var _loc7_:int = 0;
         GUI.removeIcons();
         var _loc2_:Array = [];
         if(param1.type == Equip.FLAIR)
         {
            _loc2_ = Equips.FLAIRS_DISPLAY;
         }
         if(param1.type == Equip.SWORD)
         {
            _loc2_ = Equips.SWORDS;
         }
         if(param1.type == Equip.STAFF)
         {
            _loc2_ = Equips.STALVES;
         }
         if(param1.type == Equip.GUN)
         {
            _loc2_ = Equips.GUNS;
         }
         if(param1.type == Equip.BOW)
         {
            _loc2_ = Equips.BOWS;
         }
         if(param1.type == Equip.TOYS)
         {
            _loc2_ = Equips.TOYS;
         }
         if(param1.type == Equip.HAT_MALE)
         {
            _loc2_ = Equips.MALE_HATS;
         }
         if(param1.type == Equip.ARMOR_MALE)
         {
            _loc2_ = Equips.MALE_ARMOR;
         }
         if(param1.type == Equip.HAT_FEMALE)
         {
            _loc2_ = Equips.FEMALE_HATS;
         }
         if(param1.type == Equip.ARMOR_FEMALE)
         {
            _loc2_ = Equips.FEMALE_ARMOR;
         }
         var _loc3_:Array = [];
         var _loc6_:int = 0;
         if(param1.type != Equip.FLAIR)
         {
            this.equipList.visible = true;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.length)
            {
               if(!Main.hasPremium && _loc2_[_loc4_] && Boolean(_loc2_[_loc4_].premium))
               {
                  _loc6_++;
               }
               else
               {
                  if((_loc4_ - _loc6_) % 7 > 5)
                  {
                     _loc7_ = 14;
                  }
                  else
                  {
                     _loc7_ = 10;
                  }
                  if(Boolean(_loc2_[_loc4_]) && Boolean(_loc2_[_loc4_].owned))
                  {
                     _loc5_ = GUI.createIcon(this.equipList,_loc2_[_loc4_],this.selectEquip2,!_loc2_[_loc4_].equipped(),Icon.EQUIP,0,0,0,9,_loc7_);
                     showPlayerIconOnEquip(_loc5_);
                     _loc3_.push(_loc5_);
                  }
                  else
                  {
                     _loc3_.push(null);
                  }
               }
               _loc4_++;
            }
            GUI.createIconMatrix(_loc3_,7,0,0,1);
         }
         else
         {
            this.equipList2.visible = true;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.length)
            {
               if(!Main.hasPremium && _loc2_[_loc4_] && Boolean(_loc2_[_loc4_].premium))
               {
                  _loc6_++;
               }
               else
               {
                  if((_loc4_ - _loc6_) % 11 > 5)
                  {
                     _loc7_ = 14;
                  }
                  else
                  {
                     _loc7_ = 10;
                  }
                  if(Boolean(_loc2_[_loc4_]) && Boolean(_loc2_[_loc4_].owned))
                  {
                     _loc5_ = GUI.createIcon(this.equipList2,_loc2_[_loc4_],this.selectEquip2,!_loc2_[_loc4_].equipped(),Icon.EQUIP,0,0,0,9,_loc7_);
                     showPlayerIconOnEquip(_loc5_);
                     _loc3_.push(_loc5_);
                  }
                  else
                  {
                     _loc3_.push(null);
                  }
               }
               _loc4_++;
            }
            GUI.createIconMatrix(_loc3_,11,0 - 27,0 - 40,1);
         }
      }
      
      public function showStats(param1:Object) : *
      {
         var _loc2_:String = null;
         for each(_loc2_ in Stats.STATS)
         {
            this.setEquip(param1);
            this.equipsMenu[_loc2_ + "2"].text = Math.floor(this.prevPlayer.getStat(_loc2_) - int(this.equipsMenu[_loc2_].text));
            if(this.equipsMenu[_loc2_ + "2"].text == 0)
            {
               this.equipsMenu[_loc2_ + "2"].text = "";
            }
            if(int(this.equipsMenu[_loc2_ + "2"].text) < 0)
            {
               this.equipsMenu[_loc2_ + "2"].text = "" + this.equipsMenu[_loc2_ + "2"].text;
               this.equipsMenu[_loc2_ + "2"].textColor = 16737894;
            }
            if(int(this.equipsMenu[_loc2_ + "2"].text) > 0)
            {
               this.equipsMenu[_loc2_ + "2"].text = "+" + this.equipsMenu[_loc2_ + "2"].text;
               this.equipsMenu[_loc2_ + "2"].textColor = 11599792;
            }
            this.equipsMenu[_loc2_ + "2"].setTextFormat(GUI.boldText);
            this.unsetEquip();
         }
      }
      
      public function hideStats() : *
      {
         var _loc1_:String = null;
         for each(_loc1_ in Stats.STATS)
         {
            this.equipsMenu[_loc1_ + "2"].text = "";
         }
      }
      
      public function selectEquip2(param1:Object) : *
      {
         this.equipList.visible = false;
         this.equipList2.visible = false;
         this.setEquip(param1);
         Global.pos = 0;
         Maps.playSound("equip");
         this.prevPlayer.setEquipGraphics();
         this.selectPlayer();
         this.prevPlayer.capHPMP();
         Battle.calculateSP();
         this.updatePlayerBars(true);
         this.maps.player.skin();
      }
      
      public function setEquip(param1:*) : *
      {
         if(Global.pos == 1)
         {
            this.oldEquip = this.prevPlayer.weapon;
            this.prevPlayer.weapon = param1;
         }
         if(Global.pos == 2)
         {
            this.oldEquip = this.prevPlayer.hat;
            this.prevPlayer.hat = param1;
         }
         if(Global.pos == 3)
         {
            this.oldEquip = this.prevPlayer.armor;
            this.prevPlayer.armor = param1;
         }
         if(Global.pos == 4)
         {
            this.oldEquip = this.prevPlayer.flair1;
            this.prevPlayer.flair1 = param1;
         }
         if(Global.pos == 5)
         {
            this.oldEquip = this.prevPlayer.flair2;
            this.prevPlayer.flair2 = param1;
         }
         if(Global.pos == 6)
         {
            this.oldEquip = this.prevPlayer.flair3;
            this.prevPlayer.flair3 = param1;
         }
      }
      
      public function quickForge(param1:Equip) : *
      {
         var _loc2_:int = 0;
         if(!param1.upgradable())
         {
            return;
         }
         if(!param1.hasMaterials())
         {
            return;
         }
         this.clearMenus();
         this.openForgeMenu();
         if(param1.type == Equip.SWORD)
         {
            _loc2_ = 1;
         }
         if(param1.type == Equip.STAFF)
         {
            _loc2_ = 2;
         }
         if(param1.type == Equip.GUN)
         {
            _loc2_ = 3;
         }
         if(param1.type == Equip.BOW)
         {
            _loc2_ = 4;
         }
         if(param1.type == Equip.TOYS)
         {
            _loc2_ = 5;
         }
         if(param1.type == Equip.HAT_MALE)
         {
            _loc2_ = 6;
         }
         if(param1.type == Equip.ARMOR_MALE)
         {
            _loc2_ = 7;
         }
         if(param1.type == Equip.HAT_FEMALE)
         {
            _loc2_ = 8;
         }
         if(param1.type == Equip.ARMOR_FEMALE)
         {
            _loc2_ = 9;
         }
         if(param1.type == Equip.FLAIR)
         {
            _loc2_ = 10;
         }
         this.selectForge(_loc2_);
         this.showMenu(this.forgeMenu2);
         this.forgeMenu2.gotoAndStop(2);
         this.forgeMenu2.gotoAndPlay(1);
         this.forgeMenu2.showData(param1);
      }
      
      public function unsetEquip() : *
      {
         this.setEquip(this.oldEquip);
      }
      
      public function cancelEquipSelection() : *
      {
         this.equipList.visible = false;
         this.equipList2.visible = false;
         this.selectPlayer();
      }
      
      public function removeFlair() : *
      {
         Maps.playSound("unequip");
         this.equipList.visible = false;
         this.equipList2.visible = false;
         this.selectPlayer();
         this.setEquip(Equips.empty);
         Global.pos = 0;
         Battle.calculateSP();
         this.updatePlayerBars(true);
         this.prevPlayer.setEquipGraphics();
         this.selectPlayer();
      }
      
      public function selectBooster(param1:Item, param2:Boolean = true) : *
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.cursor && this.cursor.data.icon == param1.icon && param2)
         {
            GUI.clearDragIcon();
            this.selectedItem = null;
            this.initBooster();
         }
         else
         {
            GUI.setDragIcon(param1.icon);
            if(param1.type == Stats.PHYSICAL_BOOST)
            {
               _loc3_ = Stats.ATTACK;
               _loc4_ = Stats.DEFENCE;
            }
            if(param1.type == Stats.MAGIC_BOOST)
            {
               _loc3_ = Stats.MAGIC_ATTACK;
               _loc4_ = Stats.MAGIC_DEFENCE;
            }
            if(param1.type == Stats.DEXTERITY_BOOST)
            {
               _loc3_ = Stats.ACCURACY;
               _loc4_ = Stats.EVADE;
            }
            if(param1.type == Stats.HEALTH_BOOST)
            {
               _loc3_ = Stats.HP;
               _loc4_ = Stats.NONE;
            }
            _loc5_ = 1;
            while(_loc5_ <= 5)
            {
               this.itemMenu["type" + _loc5_].gotoAndStop(_loc3_);
               this.itemMenu["type" + _loc5_ + "2"].gotoAndStop(_loc4_);
               _loc6_ = (Players["player" + _loc5_] as Player).getStat(_loc3_);
               if(_loc6_ < 100)
               {
                  GUI.nf.fractionalDigits = 1;
               }
               else
               {
                  _loc6_ = Math.floor(_loc6_);
               }
               this.itemMenu["stats" + _loc5_].text = "" + GUI.formatNumber(_loc6_);
               if(_loc4_ == Stats.NONE)
               {
                  this.itemMenu["stats" + _loc5_ + "2"].text = "";
               }
               else
               {
                  _loc7_ = (Players["player" + _loc5_] as Player).getStat(_loc4_);
                  if(_loc7_ < 100)
                  {
                     GUI.nf.fractionalDigits = 1;
                  }
                  else
                  {
                     GUI.nf.fractionalDigits = 0;
                     _loc7_ = Math.floor(_loc7_);
                  }
                  this.itemMenu["stats" + _loc5_ + "2"].text = "" + GUI.formatNumber(_loc7_);
               }
               GUI.nf.fractionalDigits = 0;
               this.itemMenu["stats" + _loc5_].setTextFormat(GUI.boldText);
               this.itemMenu["stats" + _loc5_ + "2"].setTextFormat(GUI.boldText);
               this.itemMenu["type" + _loc5_].alpha = 1;
               this.itemMenu["type" + _loc5_ + "2"].alpha = 1;
               this.itemMenu["stats" + _loc5_].alpha = 1;
               this.itemMenu["stats" + _loc5_ + "2"].alpha = 1;
               this.itemMenu["icon" + _loc5_].alpha = 1;
               this.itemMenu["p" + _loc5_].visible = true;
               if(_loc5_ != param1.target)
               {
                  this.itemMenu["type" + _loc5_].alpha = 0.3;
                  this.itemMenu["type" + _loc5_ + "2"].alpha = 0.3;
                  this.itemMenu["stats" + _loc5_].alpha = 0.3;
                  this.itemMenu["stats" + _loc5_ + "2"].alpha = 0.3;
                  this.itemMenu["icon" + _loc5_].alpha = 0.3;
                  this.itemMenu["p" + _loc5_].visible = false;
               }
               if(!Players["player" + _loc5_].inParty())
               {
                  this.itemMenu["type" + _loc5_].gotoAndStop("none");
                  this.itemMenu["type" + _loc5_ + "2"].gotoAndStop("none");
                  this.itemMenu["stats" + _loc5_].text = "";
                  this.itemMenu["stats" + _loc5_ + "2"].text = "";
                  this.itemMenu["p" + _loc5_].visible = false;
               }
               GUI.setTextColor(this.itemMenu["stats" + _loc5_ + "2"]);
               _loc5_++;
            }
            this.selectedItem = param1;
         }
      }
      
      public function selectFood(param1:Item) : *
      {
         if(Boolean(this.cursor) && this.cursor.data.icon == param1.icon)
         {
            GUI.clearDragIcon();
            this.selectedItem = null;
            this.initFood();
         }
         else
         {
            GUI.setDragIcon(param1.icon);
            if(param1.target == Target.ALL_ALLY)
            {
               this.itemMenu.p11.visible = true;
            }
            else
            {
               this.itemMenu.p11.visible = false;
               this.itemMenu.p6.visible = true;
               this.itemMenu.p7.visible = true;
               this.itemMenu.p8.visible = true;
               this.itemMenu.p9.visible = true;
               this.itemMenu.p10.visible = true;
            }
            this.selectedItem = param1;
         }
      }
      
      public function initBooster() : *
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 5)
         {
            this.itemMenu["icon" + _loc1_].update(_loc1_);
            this.itemMenu["icon" + _loc1_].alpha = 0.3;
            this.itemMenu["type" + _loc1_].gotoAndStop("none");
            this.itemMenu["type" + _loc1_ + "2"].gotoAndStop("none");
            this.itemMenu["stats" + _loc1_].text = "";
            this.itemMenu["stats" + _loc1_].alpha = 0.3;
            this.itemMenu["stats" + _loc1_].setTextFormat(GUI.boldText);
            this.itemMenu["stats" + _loc1_ + "2"].text = "";
            GUI.setTextColor(this.itemMenu["stats" + _loc1_ + "2"]);
            GUI.setTextColor(this.itemMenu["stats" + _loc1_]);
            this.itemMenu["p" + _loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function initFood(param1:Boolean = true) : *
      {
         var _loc2_:Player = null;
         if(param1)
         {
            this.itemMenu.p11.visible = false;
         }
         var _loc3_:int = 1;
         while(_loc3_ <= 5)
         {
            _loc2_ = Players["player" + _loc3_];
            this.itemMenu["icon" + _loc3_].update(_loc3_);
            this.itemMenu["hp" + _loc3_].text = _loc2_.getHp();
            this.itemMenu["hpbar" + _loc3_].visible = true;
            this.itemMenu["lpbar" + _loc3_].visible = true;
            this.itemMenu["hpbar" + _loc3_].gotoAndStop(_loc2_.getHpPercent());
            this.itemMenu["lpbar" + _loc3_].gotoAndStop(_loc2_.getLimitPercent());
            this.itemMenu["hp" + _loc3_].setTextFormat(GUI.boldText);
            GUI.setTextColor(this.itemMenu["tf" + _loc3_]);
            this.itemMenu["cd" + _loc3_].text = _loc2_.getMaxCooldown();
            if(_loc2_.getMaxCooldown() == 0)
            {
               this.itemMenu["cd" + _loc3_].visible = false;
               this.itemMenu["tf" + _loc3_].visible = false;
            }
            else
            {
               this.itemMenu["cd" + _loc3_].visible = true;
               this.itemMenu["tf" + _loc3_].visible = true;
            }
            if(!Players["player" + _loc3_].inParty())
            {
               this.itemMenu["hp" + _loc3_].text = "";
               this.itemMenu["hpbar" + _loc3_].visible = false;
               this.itemMenu["lpbar" + _loc3_].visible = false;
               this.itemMenu["tf" + _loc3_].visible = false;
               this.itemMenu["cd" + _loc3_].visible = false;
            }
            _loc3_++;
         }
      }
      
      public function boostPlayer(param1:int) : *
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(Boolean(this.selectedItem) && this.selectedItem.quantity > 0)
         {
            if(this.selectedItem.type == Stats.PHYSICAL_BOOST)
            {
               _loc2_ = Stats.ATTACK;
               _loc3_ = Stats.DEFENCE;
            }
            if(this.selectedItem.type == Stats.MAGIC_BOOST)
            {
               _loc2_ = Stats.MAGIC_ATTACK;
               _loc3_ = Stats.MAGIC_DEFENCE;
            }
            if(this.selectedItem.type == Stats.DEXTERITY_BOOST)
            {
               _loc2_ = Stats.ACCURACY;
               _loc3_ = Stats.EVADE;
            }
            if(this.selectedItem.type == Stats.HEALTH_BOOST)
            {
               _loc2_ = Stats.HP;
               _loc3_ = Stats.NONE;
            }
            if(this.selectedItem.type == Stats.DEXTERITY_BOOST)
            {
               (Players["player" + param1] as Player).bonus[_loc2_] += 1;
               (Players["player" + param1] as Player).bonus[_loc3_] += 1;
            }
            else
            {
               (Players["player" + param1] as Player).bonus[_loc2_] += 2;
               (Players["player" + param1] as Player).bonus[_loc3_] += 2;
            }
            --this.selectedItem.quantity;
            this.selectBooster(this.selectedItem,false);
            this.selectItem(2,false);
            this.splash.gotoAndPlay("statup");
            this.splash.x = this.itemMenu["icon" + param1].x - 190;
            this.splash.y = this.itemMenu["icon" + param1].y - 470;
            if(this.selectedItem.quantity == 0)
            {
               GUI.clearDragIcon();
            }
            this.updatePlayerBars();
            tipCompleteFlag[0] = true;
            Medals.unlock(Medals.roidRage);
         }
      }
      
      public function feedPlayer(param1:int) : *
      {
         var _loc2_:Player = Players["player" + param1];
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         if(Boolean(this.selectedItem) && this.selectedItem.quantity > 0)
         {
            if(param1 != 6)
            {
               this.splash.x = this.itemMenu["icon" + param1].x - 320;
               this.splash.y = this.itemMenu["icon" + param1].y - 410;
               _loc3_ = _loc2_.eatItem(this.selectedItem);
               this.itemMenu["icon" + param1].update(param1);
            }
            else
            {
               this.splash.x = -74;
               this.splash.y = -300;
               for each(_loc2_ in [Players.player1,Players.player2,Players.player3,Players.player4,Players.player5])
               {
                  _loc4_ = _loc2_.eatItem(this.selectedItem);
                  if(!_loc3_)
                  {
                     _loc3_ = _loc4_;
                  }
                  this.itemMenu["icon" + _loc2_.playerNo].update(_loc2_.playerNo);
               }
            }
            if(_loc3_)
            {
               --this.selectedItem.quantity;
               this.splash.gotoAndPlay("eat");
            }
            this.selectItem(1,false);
            this.initFood(false);
            this.updatePlayerBars();
            if(this.selectedItem.quantity == 0)
            {
               GUI.clearDragIcon();
            }
         }
      }
      
      public function selectItem(param1:int, param2:Boolean = true) : *
      {
         var icons:Array;
         var tiptype:int;
         var items:Array = null;
         var a:int = 0;
         var allCompleted:Boolean = false;
         var npc:NPC = null;
         var icon:Icon = null;
         var medal:Object = null;
         var s:int = param1;
         var f:Boolean = param2;
         if(f)
         {
            GUI.clearDragIcon();
         }
         if(f)
         {
            this.selectedItem = null;
         }
         GUI.removeIcons();
         icons = [];
         tiptype = 0;
         if(s == 1)
         {
            items = Items.FOOD_SORTED;
            this.itemMenu.gotoAndStop(4);
            if(f)
            {
               this.showMenu(this.itemMenu);
            }
            a = 0;
            while(a < items.length)
            {
               if(Boolean(items[a]) && items[a].quantity != 0)
               {
                  icons.push(GUI.createIcon(this.itemMenu,items[a],this.selectFood,true,Icon.ITEM,0,0,0,-1,13));
               }
               else
               {
                  icons.push(null);
               }
               if(icons[icons.length - 1] && items[a].type != Item.HP && items[a].type != Item.COOLDOWN && items[a].type != Item.HP_COOLDOWN && items[a] != Items.chili && items[a] != Items.coffee)
               {
                  icons[icons.length - 1].alpha = 0.5;
                  icons[icons.length - 1].onClick = null;
               }
               a++;
            }
            GUI.createIconMatrix(icons,4,15,-18,2);
         }
         if(s == 2)
         {
            items = Items.STAT_LIST;
            this.itemMenu.gotoAndStop(3);
            if(f)
            {
               this.showMenu(this.itemMenu);
            }
            a = 0;
            while(a < items.length)
            {
               if(Boolean(items[a]) && items[a].quantity != 0)
               {
                  icons.push(GUI.createIcon(this.itemMenu,items[a],this.selectBooster,true,Icon.ITEM,0,0,0,-1,13));
               }
               else
               {
                  icons.push(null);
               }
               a++;
            }
            GUI.createIconMatrix(icons,4,15,32,2);
         }
         if(s == 3)
         {
            items = Items.CRAFT_LIST;
            this.itemMenu.gotoAndStop(1);
            this.showMenu(this.itemMenu);
            a = 0;
            while(a < items.length)
            {
               if(Boolean(items[a]) && items[a].quantity != 0)
               {
                  icons.push(GUI.createIcon(this.itemMenu,items[a],null,true,Icon.ITEM,0,0,0,-1,13));
               }
               else
               {
                  icons.push(null);
               }
               a++;
            }
            GUI.createIconMatrix(icons,12,10,35,2);
         }
         if(s == 4)
         {
            items = Items.KEY_LIST;
            this.itemMenu.gotoAndStop(2);
            this.showMenu(this.itemMenu);
            a = 0;
            while(a < items.length)
            {
               if(Boolean(items[a]) && items[a].quantity != 0)
               {
                  icons.push(GUI.createIcon(this.itemMenu,items[a],null,true,Icon.ITEM,0,0,0,-1,13));
               }
               else
               {
                  icons.push(null);
               }
               a++;
            }
            GUI.createIconMatrix(icons,13,10,35,2);
         }
         if(s == 5)
         {
            this.clearGoalMenus();
            this.showMenu(this.questsMenu);
            this.questsMenu.txt3.text = "" + NPCs.countQuests();
            allCompleted = false;
            if(NPCs.countQuests() >= 30 && NPCs.countQuests() == NPCs.countQuests(false))
            {
               allCompleted = true;
            }
            Global.pauseHats = true;
            a = 0;
            while(a < NPCs.questListForDisplay.length)
            {
               npc = NPCs.questListForDisplay[a] as NPC;
               icon = GUI.createIcon(this.questsMenu,npc,this.npcSound,true,Icon.QUEST);
               if(!npc.flag)
               {
                  icon.alpha = 0.5;
               }
               if(!npc.flag2 && !Debug.showAllQuests)
               {
                  icon.alpha = 0;
                  icon.mouseEnabled = false;
                  icon.mouseChildren = false;
               }
               Icon.text = " ";
               icons.push(icon);
               a++;
            }
            Icon.text = "";
            GUI.createIconMatrix(icons,14,-138 - 73,51,14,44);
            Global.pauseHats = false;
         }
         if(s == 6)
         {
            this.initBestiary();
         }
         if(s == 7)
         {
            this.clearGoalMenus();
            this.medalsMenu.gotoAndStop(2);
            this.medalsMenu.gotoAndPlay(1);
            this.showMenu(this.medalsMenu);
            this.medalsMenu.txt3.text = "" + Medals.countMedals();
            SaveData.calculateEndingTheshold();
            a = 0;
            while(a < (Main.hasPremium ? Medals.MEDALS_DISPLAY_PREMIUM.length : Medals.MEDALS_DISPLAY.length))
            {
               Icon.text = " ";
               medal = Main.hasPremium ? Medals.MEDALS_DISPLAY_PREMIUM[a] : Medals.MEDALS_DISPLAY[a];
               if(Options.newgroundsVersion)
               {
                  icons.push(GUI.createIcon(this.medalsMenu,medal,medal.unlocked ? function(param1:Object = null):*
                  {
                     Medals.resendMedal(param1.MID);
                  } : null,true,Icon.MEDAL,0,0,0,-1,a % 19 < 4 ? 13 : 12));
               }
               else
               {
                  icons.push(GUI.createIcon(this.medalsMenu,medal,medal.unlocked ? function(param1:Object = null):*
                  {
                     Main.sendMessage("unlockMedal",param1.SID);
                  } : null,true,Icon.MEDAL,0,0,0,-1,a % 19 < 4 ? 13 : 12));
               }
               a++;
            }
            Icon.text = "";
            GUI.createIconMatrix(icons,19,-310 - 26 - 16,151 - 42,2);
            Medals.resendMedals();
         }
         if(s == 8)
         {
            this.clearGoalMenus();
            this.gamestatsMenu.gotoAndStop(2);
            this.gamestatsMenu.gotoAndStop(1);
            this.showMenu(this.gamestatsMenu);
            this.gamestatsMenu.init();
         }
         if(s == 9)
         {
            this.clearGoalMenus();
            this.cardMenu.gotoAndStop(2);
            this.cardMenu.gotoAndStop(1);
            this.showMenu(this.cardMenu);
            this.initCards();
         }
         if(s == 10)
         {
            this.clearGoalMenus();
            this.cheatsMenu.gotoAndStop(2);
            this.cheatsMenu.gotoAndStop(1);
            this.showMenu(this.cheatsMenu);
            cheatSource = this.cheatsMenu;
            cheatsUpdate();
         }
      }
      
      public function initCards() : *
      {
         var _loc3_:Icon = null;
         var _loc1_:Array = [];
         Cards.calculatePerks();
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            Icon.text = " ";
            if(Cards.ALL_CARDS[_loc2_].quantity)
            {
               _loc3_ = GUI.createIcon(this.cardMenu,Cards.ALL_CARDS[_loc2_],this.showCard,true,Icon.CARD,0,0,0,-1,8,false,_loc2_);
               _loc1_.push(_loc3_);
            }
            else
            {
               _loc1_.push(null);
            }
            _loc2_++;
         }
         Icon.text = "";
         GUI.createIconMatrix(_loc1_,10,-97,-113,3,0);
         this.cardMenu.cardDisplay.visible = false;
         Global.translate(this.cardMenu.txt1,"",10,SetStrings.getString("cards","info"));
         Global.translate(this.cardMenu.txt2,"",10,SetStrings.getString("cards","totals1"));
         this.cardMenu.txt3.text = "" + Cards.cardCount;
         this.cardMenu.txt4.text = "" + Cards.goldBoost + "%";
         this.cardMenu.txt5.text = "" + Cards.powerBoost + "%";
         this.cardMenu.txt6.text = "" + Cards.spBoost;
         this.cardMenu.txt7.text = "" + Cards.catchingBoost + "%";
      }
      
      public function showCard(param1:Card) : *
      {
         this.cardMenu.cardDisplay.gotoAndStop(2);
         this.cardMenu.cardDisplay.gotoAndStop(1);
         this.cardMenu.cardDisplay.visible = true;
         Global.translate(this.cardMenu.cardDisplay.txt1,"",10,SetStrings.getString("cards","lvl" + param1.power));
         Global.translate(this.cardMenu.cardDisplay.txt2,"",10,param1.name.toUpperCase());
         Global.translate(this.cardMenu.cardDisplay.txt3,"",10,SetStrings.getString("cards","bullet") + param1.description);
         Global.translate(this.cardMenu.cardDisplay.txt4,"",10,SetStrings.getString("cards","bullet") + SetStrings.getString("cards","" + param1.effect + param1.power));
         this.cardMenu.cardDisplay.image.image.gotoAndStop(param1.icon - 947);
         this.cardMenu.cardDisplay.image.gotoAndPlay(2);
         this.cardMenu.cardDisplay.elem.gotoAndStop(param1.element);
         this.cardMenu.cardDisplay.back.gotoAndStop(param1.element);
         this.cardMenu.cardDisplay.perk.gotoAndStop(param1.effect);
      }
      
      public function npcSound(param1:NPC) : *
      {
         if(Flags.GLITCHINESS.quantity)
         {
            Maps.playSound("static" + int(1 + Math.random() * 3));
         }
         else
         {
            NPCs.playSound(param1.sound);
            ++soundCount;
            if(soundCount >= 5)
            {
               Medals.unlock(Medals.secretSoundboard);
            }
         }
      }
      
      public function initBestiary(param1:int = 1) : *
      {
         var _loc5_:Icon = null;
         this.bpage = param1;
         this.clearGoalMenus();
         this.showMenu(this.bestiaryMenu);
         this.bestiaryMenu.txt3.text = "" + Foes.scannedFoes.length;
         var _loc2_:Array = [];
         var _loc3_:Array = Foes.FOES;
         if(!Main.hasPremium)
         {
            _loc3_ = Foes.FOES_SANS_PREMIUM;
         }
         var _loc4_:int = (this.bpage - 1) * 50;
         while(_loc4_ < this.bpage * 50)
         {
            Icon.text = " ";
            if(!_loc3_[_loc4_])
            {
               break;
            }
            if(Foes.isScanned2(_loc3_[_loc4_]) || Debug.bestiary)
            {
               _loc5_ = GUI.createIcon(this.bestiaryMenu,_loc3_[_loc4_],this.showFoe,true,Icon.FOE,0,0,0,-1,0,false,_loc4_);
               if((_loc5_.data as Foe).catchRate == Catching.UNCATCHABLE)
               {
                  _loc5_.player.gotoAndStop(10);
               }
               else if(Foes.isCaught(_loc5_.data as Foe))
               {
                  _loc5_.player.gotoAndStop(9);
               }
               _loc2_.push(_loc5_);
            }
            else
            {
               _loc2_.push(null);
            }
            _loc4_++;
         }
         Icon.text = "";
         GUI.createIconMatrix(_loc2_,10,100,-20,5,5);
      }
      
      public function prevFoe() : *
      {
         var _loc2_:Class = null;
         --this.foeIndex;
         var _loc1_:Array = Foes.FOES;
         if(!Main.hasPremium)
         {
            _loc1_ = Foes.FOES_SANS_PREMIUM;
         }
         if(this.foeIndex < 0)
         {
            this.foeIndex = _loc1_.length - 1;
         }
         if(!Foes.isScanned2(_loc1_[this.foeIndex]) && !Debug.bestiary)
         {
            this.prevFoe();
         }
         else
         {
            _loc2_ = _loc1_[this.foeIndex];
            Foe.spawnedFoe = true;
            this.showFoe(new _loc2_(Players.getAverageLevel()));
         }
      }
      
      public function nextFoe() : *
      {
         var _loc2_:Class = null;
         ++this.foeIndex;
         var _loc1_:Array = Foes.FOES;
         if(!Main.hasPremium)
         {
            _loc1_ = Foes.FOES_SANS_PREMIUM;
         }
         if(this.foeIndex > _loc1_.length - 1)
         {
            this.foeIndex = 0;
         }
         if(!Foes.isScanned2(_loc1_[this.foeIndex]) && !Debug.bestiary)
         {
            this.nextFoe();
         }
         else
         {
            _loc2_ = _loc1_[this.foeIndex];
            this.showFoe(new _loc2_(Players.getAverageLevel()));
         }
      }
      
      public function showFoe(param1:Object) : *
      {
         this.foestatsMenu.gotoAndStop(3);
         this.foestatsMenu.gotoAndStop(1);
         this.foestatsMenu.gotoAndStop(2);
         if(param1.temp != -1)
         {
            this.foeIndex = param1.temp;
         }
         this.clearGoalMenus();
         this.foestatsMenu.display(param1);
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < (param1 as Foe).dropList.length)
         {
            Icon.text = "" + (param1 as Foe).dropList[_loc3_][1] + "%";
            _loc2_.push(GUI.createIcon(this.foestatsMenu,(param1 as Foe).dropList[_loc3_][0],null,true,Icon.ITEM));
            _loc3_++;
         }
         Icon.text = "";
         GUI.createIconMatrix(_loc2_,10,-400,155,15);
         this.createFoe(param1,this.foestatsMenu);
      }
      
      public function showPlayerSelect(param1:int) : *
      {
         this.showMenu(this.playerSelect);
         this.playerSelect.x = param1;
         this.playerSelect.gotoAndStop(2);
         this.playerSelect.gotoAndStop(1);
      }
      
      public function updatePlayerBars(param1:Boolean = false) : *
      {
         var _loc2_:Array = Game.party;
         if(param1)
         {
            this.playerBars.spBar.gotoAndStop(Math.floor(Battle.SP / Battle.maxSP * 100));
            this.playerBars.spBox.text = "" + Battle.SP + "/" + Battle.maxSP;
            this.playerBars.money.text = GUI.formatNumber(SaveData.money);
            this.playerBars.money.setTextFormat(GUI.boldText);
         }
         var _loc3_:int = 0;
         while(_loc3_ < 5)
         {
            if(_loc2_[_loc3_])
            {
               this.playerBars["pBars" + _loc3_].hpBar.visible = true;
               this.playerBars["pBars" + _loc3_].limitBar.visible = true;
               _loc2_[_loc3_].maxHP = _loc2_[_loc3_].getStat(Stats.HP);
               this.playerBars["pBars" + _loc3_].hpBar.gotoAndStop(_loc2_[_loc3_].getHpPercent());
               this.playerBars["pBars" + _loc3_].limitBar.gotoAndStop(_loc2_[_loc3_].getLimitPercent());
               this.playerBars["pBars" + _loc3_].icon.update(_loc2_[_loc3_].playerNo);
            }
            else
            {
               this.playerBars["pBars" + _loc3_].hpBar.visible = false;
               this.playerBars["pBars" + _loc3_].limitBar.visible = false;
               this.playerBars["pBars" + _loc3_].icon.gotoAndStop(8);
            }
            _loc3_++;
         }
      }
      
      public function moveCursor() : *
      {
         if(this.draggable)
         {
            this.draggable.x = mouseX - 385;
            this.draggable.y = mouseY + 400;
            this.draggable.parent.setChildIndex(this.draggable,this.draggable.parent.numChildren - 1);
         }
         if(!this.cursor)
         {
            return;
         }
         this.cursor.x = mouseX - 25;
         this.cursor.y = mouseY - 25;
      }
      
      public function showMenu(param1:MovieClip) : *
      {
         param1.visible = true;
         this.back.visible = true;
      }
      
      internal function frame1() : *
      {
         this.init();
         this.errorLog.mouseEnabled = false;
         this.back.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            closeMenus();
         });
      }
   }
}

