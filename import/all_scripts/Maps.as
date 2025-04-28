package
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.*;
   import flash.system.*;
   
   public class Maps extends MovieClip
   {
      public static var puzzleTemp:MovieClip;
      
      public static var sounds:MovieClip;
      
      public static var keyData:Array = [];
      
      public static var switchData:Array = [];
      
      public static var chestData:Array = [];
      
      public static var torchData:Array = [];
      
      public static var minimapCoords:Array = [0,0];
      
      public static var blockData:Array = [];
      
      public static var blockDataLoad:Array = [];
      
      public static var puzzleData:Array = [];
      
      public static var ladderData:Array = [];
      
      public static var bushData:Array = [];
      
      public static var rockData:Array = [];
      
      public static var crystalData:Array = [];
      
      public static var snowData:Array = [];
      
      public static var dirtData:Array = [];
      
      public static var foeData:Array = [];
      
      public static var foeJumps:Array = [];
      
      public static var warpData:Array = [true];
      
      public static var sceneData:Array = [];
      
      public static var touchedPlainTile:Boolean = true;
      
      public static var inCave:Boolean = false;
      
      public static const LEFT:String = "left";
      
      public static const RIGHT:String = "right";
      
      public static const UP:String = "up";
      
      public static const DOWN:String = "down";
      
      public static const CHEST:String = "chest";
      
      public static const PUSH_BLOCK:String = "push block";
      
      public static const ICE_BLOCK:String = "ice block";
      
      public static const KEY_BLOCK:String = "key block";
      
      public static const SECRET:String = "secret";
      
      public static const NOTE:String = "note";
      
      public static const SWITCH:String = "switch";
      
      public static const TELEPORTER:String = "teleporter";
      
      public static const DESTINATION:String = "destination";
      
      public static const BUNNY:String = "bunny";
      
      public static const SIGN:String = "sign";
      
      public static const SIGN2:String = "sign2";
      
      public static const TORCH:String = "torch";
      
      public static const ROCK:String = "rock";
      
      public static const TREE:String = "tree";
      
      public static const CRYSTAL:String = "crystal";
      
      public static const DIRT:String = "dirt";
      
      public static const SNOW:String = "snow";
      
      public static const PED:String = "pedestal";
      
      public static const LADDER:String = "ladder";
      
      public static const FOE:String = "foe";
      
      public static const FOE2:String = "foe2";
      
      public static const SHOP:String = "shop";
      
      public static const NPCMC:String = "npc";
      
      public static const WARP:String = "warp";
      
      public static const ANIMAL:String = "animal";
      
      public static const GLOW_TILE:String = "glow tile";
      
      public static const DOOR:String = "door";
      
      public static const SCENE:String = "cutscene";
      
      public static const PAINTING:String = "painting";
      
      public static const SUPER_TELEPORTER:String = "super teleporter";
      
      public static var keyIsDown:Array = [];
      
      public static var mapX:int = Constants.MAP_X;
      
      public static var mapY:int = Constants.MAP_Y;
      
      public static var instance:Maps = null;
      
      public static var treasures:int = 0;
      
      public static var treasuresCounted:Array = [];
      
      public static var treasureSoundPlayed:Boolean = false;
      
      public static var putOnRaft:Boolean = false;
      
      public static var tempWarpData:Array = [3,4,2];
      
      public static var doorDetails:Array = null;
      
      public static var mapMatrix:Array = [[40,41,42,87,88,72,73,74,75,70,71,151,150,152,153,154,155,17],[37,38,39,86,76,77,78,79,80,68,69,156,157,158,207,208,209,210],[33,34,35,36,81,82,83,84,85,66,67,-1,-1,206,undefined,undefined,191,195],[29,30,31,32,44,51,52,53,54,64,65,-1,203,204,205,198,192,193,194],[25,26,27,28,45,55,56,57,58,62,63,-1,200,201,202,197,190,196],[21,22,23,24,46,47,48,49,50,60,61,18,19,20,140,141,142],[89,90,91,92,93,94,95,96,97,98,99,143,144,145,146,147,148],[100,101,102,109,110,111,118,119,120,121,122,139,137,212,215,216,217,218,219],[103,104,105,112,113,114,123,124,125,126,127,138,undefined,213,214,337,338,339],[106,107,108,115,116,117,128,129,130,131,132,324,166],[undefined,undefined,undefined,300,undefined,undefined,undefined,undefined,undefined,undefined,undefined],[315,undefined,304,302,301,undefined,undefined,undefined,undefined,undefined,undefined],[316,undefined,306,303,305,undefined,undefined,undefined,undefined,undefined,undefined],[317,undefined,undefined,308,307,undefined,undefined,undefined,undefined,undefined,undefined],[313,undefined,undefined,309,undefined,undefined,undefined,undefined,undefined,undefined,undefined],[314,undefined,312,310,311,undefined,undefined,undefined,undefined,undefined,undefined]];
      
      public static var mapNames:Array = [["GRAND_GALLERY","GRAND_GALLERY","GRAND_GALLERY","FORGOTTEN_RUINS","FORGOTTEN_TEMPLE","MYSTIC_WOODS","MYSTIC_WOODS","WITCHES_HOUSE","MYSTIC_WOODS","MYSTIC_WOODS","BAMBOO"],["GRAND_GALLERY","GRAND_GALLERY","GRAND_GALLERY","FORGOTTEN_RUINS","FORGOTTEN_RUINS","MYSTIC_WOODS","MYSTIC_WOODS","MYSTIC_WOODS","MYSTIC_WOODS","ANNAS_HOUSE","BAMBOO"],["FARMERS_MARKET","HOPE_HARBOR","EQUIP_SHOP","DUNGEON_IN","RAFT_MAKER","MYSTIC_WOODS","MYSTIC_WOODS","MYSTIC_WOODS","MYSTIC_WOODS","GREENWOOD_VILLAGE","ITEM_FOOD_SHOPS"],["WILD_TROPICS","WILD_TROPICS","WILD_TROPICS","CAMPSITE","ICE_CAVE_OUT","IRON_FORTRESS","IRON_FORTRESS","PRISON","IRON_FORTRESS","LIBRARY","EQUIP_SHOP"],["WILD_TROPICS","WILD_TROPICS","ITEM_FOOD_SHOPS","HOPE_HARBOR","THE_WASTELANDS","IRON_FORTRESS","IRON_FORTRESS","IRON_FORTRESS","IRON_FORTRESS","GREENWOOD_VILLAGE","GREENWOOD_VILLAGE"],["JERRYS_HOUSE","MATTS_HOUSE","HOPE_HARBOR","ICE_CAVE_IN","THE_WASTELANDS","THE_WASTELANDS","THE_WASTELANDS","THE_WASTELANDS","DUNGEON_IN","RAINBOW_RIVER","RAINBOW_RIVER"],["FROZEN_VALLEY","RIVER","RAINBOW_GATE","RIVER","RIVER","RIVER","RIVER","RIVER","RIVER","RAINBOW_RIVER","RAINBOW_RIVER"],["FROZEN_VALLEY","FROZEN_VALLEY","FROZEN_VALLEY","FOOD_SHOP","GRAVEYARD","ITEM_SHOP","THE_RAPTURE","THE_RAPTURE","THE_RAPTURE","THE_RAPTURE","TEMPLE_OF_TRIALS"],["FROZEN_VALLEY","FROZEN_VALLEY","CAMPSITE","EQUIP_SHOP","GRAVEYARD","REDPINE_TOWN","THE_RAPTURE","THE_RAPTURE","FINAL_DESTINATION","CAMPSITE","LAVA_LAKE"],["FROZEN_VALLEY","FROZEN_VALLEY","FROZEN_VALLEY","REDPINE_TOWN","REDPINE_TOWN","DUNGEON_IN","THE_RAPTURE","THE_RAPTURE","THE_RAPTURE","LAVA_LAKE","LAVA_LAKE"]];
      
      public static var mapVisits:Array = [];
      
      public var busy:int = 0;
      
      public var flyType:String = "dragon";
      
      public var player:MapPlayer;
      
      public var cursor:MovieClip;
      
      public var cursor2:MovieClip;
      
      public var fader:MovieClip;
      
      public var areaLabel:MovieClip;
      
      public var moveMap:String = "";
      
      public var interact:String = "";
      
      public var objectData:Array = [];
      
      public var blockPuzzle:Array = [];
      
      public var ikNode_1:MovieClip;
      
      public var ikNode_2:MovieClip;
      
      public var ikNode_3:MovieClip;
      
      public var ikNode_4:MovieClip;
      
      public var darkness:MovieClip;
      
      public var darkLevel:int = 0;
      
      public var roof:MovieClip;
      
      public var special0:MovieClip;
      
      public var special1:MovieClip;
      
      public var special2:MovieClip;
      
      public var special3:MovieClip;
      
      public var special4:MovieClip;
      
      public var special5:MovieClip;
      
      public var special6:MovieClip;
      
      public var special7:MovieClip;
      
      public var special8:MovieClip;
      
      public var special9:MovieClip;
      
      public var special10:MovieClip;
      
      public var special11:MovieClip;
      
      public var special12:MovieClip;
      
      public var special13:MovieClip;
      
      public var special14:MovieClip;
      
      public var special15:MovieClip;
      
      public var special16:MovieClip;
      
      public var special17:MovieClip;
      
      public var painting0:MovieClip;
      
      public var painting1:MovieClip;
      
      public var painting2:MovieClip;
      
      public var painting3:MovieClip;
      
      public var painting4:MovieClip;
      
      public var painting5:MovieClip;
      
      public var painting6:MovieClip;
      
      public var painting7:MovieClip;
      
      public var painting8:MovieClip;
      
      public var painting9:MovieClip;
      
      public var painting10:MovieClip;
      
      public var animal0:MovieClip;
      
      public var animal1:MovieClip;
      
      public var animal2:MovieClip;
      
      public var animal3:MovieClip;
      
      public var animal4:MovieClip;
      
      public var scene0:MovieClip;
      
      public var scene1:MovieClip;
      
      public var scene2:MovieClip;
      
      public var scene3:MovieClip;
      
      public var scene4:MovieClip;
      
      public var scene5:MovieClip;
      
      public var scene6:MovieClip;
      
      public var scene7:MovieClip;
      
      public var scene8:MovieClip;
      
      public var scene9:MovieClip;
      
      public var scene10:MovieClip;
      
      public var scene11:MovieClip;
      
      public var cat0:MovieClip;
      
      public var cat1:MovieClip;
      
      public var cat2:MovieClip;
      
      public var cat3:MovieClip;
      
      public var cat4:MovieClip;
      
      public var cat5:MovieClip;
      
      public var cat6:MovieClip;
      
      public var cat7:MovieClip;
      
      public var cat8:MovieClip;
      
      public var cat9:MovieClip;
      
      public var cat10:MovieClip;
      
      public var cat11:MovieClip;
      
      public var cat12:MovieClip;
      
      public var npc0:MovieClip;
      
      public var npc1:MovieClip;
      
      public var npc2:MovieClip;
      
      public var npc3:MovieClip;
      
      public var npc4:MovieClip;
      
      public var npc5:MovieClip;
      
      public var npc6:MovieClip;
      
      public var npc7:MovieClip;
      
      public var shop0:MovieClip;
      
      public var shop1:MovieClip;
      
      public var shop2:MovieClip;
      
      public var shop3:MovieClip;
      
      public var foe0:MovieClip;
      
      public var foe1:MovieClip;
      
      public var foe2:MovieClip;
      
      public var foe3:MovieClip;
      
      public var foe4:MovieClip;
      
      public var foe5:MovieClip;
      
      public var foe6:MovieClip;
      
      public var foe7:MovieClip;
      
      public var foe8:MovieClip;
      
      public var foe9:MovieClip;
      
      public var ladder0:MovieClip;
      
      public var ladder1:MovieClip;
      
      public var ladder2:MovieClip;
      
      public var ladder3:MovieClip;
      
      public var ped0:MovieClip;
      
      public var ped1:MovieClip;
      
      public var ped2:MovieClip;
      
      public var ped3:MovieClip;
      
      public var ped4:MovieClip;
      
      public var ped5:MovieClip;
      
      public var ped6:MovieClip;
      
      public var ped7:MovieClip;
      
      public var ped8:MovieClip;
      
      public var tree0:MovieClip;
      
      public var tree1:MovieClip;
      
      public var tree2:MovieClip;
      
      public var tree3:MovieClip;
      
      public var tree4:MovieClip;
      
      public var tree5:MovieClip;
      
      public var tree6:MovieClip;
      
      public var tree7:MovieClip;
      
      public var tree8:MovieClip;
      
      public var tree9:MovieClip;
      
      public var rock0:MovieClip;
      
      public var rock1:MovieClip;
      
      public var rock2:MovieClip;
      
      public var rock3:MovieClip;
      
      public var rock4:MovieClip;
      
      public var rock5:MovieClip;
      
      public var rock6:MovieClip;
      
      public var rock7:MovieClip;
      
      public var rock8:MovieClip;
      
      public var rock9:MovieClip;
      
      public var torch0:MovieClip;
      
      public var torch1:MovieClip;
      
      public var torch2:MovieClip;
      
      public var torch3:MovieClip;
      
      public var torch4:MovieClip;
      
      public var torch5:MovieClip;
      
      public var torch6:MovieClip;
      
      public var torch7:MovieClip;
      
      public var door0:MovieClip;
      
      public var door1:MovieClip;
      
      public var door2:MovieClip;
      
      public var door3:MovieClip;
      
      public var door4:MovieClip;
      
      public var door5:MovieClip;
      
      public var door6:MovieClip;
      
      public var key0:MovieClip;
      
      public var key1:MovieClip;
      
      public var key2:MovieClip;
      
      public var key3:MovieClip;
      
      public var key4:MovieClip;
      
      public var key5:MovieClip;
      
      public var key6:MovieClip;
      
      public var key7:MovieClip;
      
      public var switch0:MovieClip;
      
      public var switch1:MovieClip;
      
      public var switch2:MovieClip;
      
      public var switch3:MovieClip;
      
      public var switch4:MovieClip;
      
      public var switch5:MovieClip;
      
      public var switch6:MovieClip;
      
      public var switch7:MovieClip;
      
      public var switch8:MovieClip;
      
      public var spikes5:MovieClip;
      
      public var spikes6:MovieClip;
      
      public var spikes7:MovieClip;
      
      public var spikes8:MovieClip;
      
      public var spikes9:MovieClip;
      
      public var spikes0:MovieClip;
      
      public var spikes1:MovieClip;
      
      public var spikes2:MovieClip;
      
      public var spikes3:MovieClip;
      
      public var spikes4:MovieClip;
      
      public var spikes10:MovieClip;
      
      public var spikes11:MovieClip;
      
      public var spikes12:MovieClip;
      
      public var spikes13:MovieClip;
      
      public var spikes14:MovieClip;
      
      public var spikes15:MovieClip;
      
      public var spikes16:MovieClip;
      
      public var spikes17:MovieClip;
      
      public var spikes18:MovieClip;
      
      public var spikes19:MovieClip;
      
      public var spikes20:MovieClip;
      
      public var push0:MovieClip;
      
      public var push1:MovieClip;
      
      public var push2:MovieClip;
      
      public var push3:MovieClip;
      
      public var push4:MovieClip;
      
      public var push5:MovieClip;
      
      public var push6:MovieClip;
      
      public var push7:MovieClip;
      
      public var push8:MovieClip;
      
      public var push9:MovieClip;
      
      public var push10:MovieClip;
      
      public var push11:MovieClip;
      
      public var push12:MovieClip;
      
      public var push13:MovieClip;
      
      public var push14:MovieClip;
      
      public var bunny0:MovieClip;
      
      public var bunny1:MovieClip;
      
      public var bunny2:MovieClip;
      
      public var bunny3:MovieClip;
      
      public var sign0:MovieClip;
      
      public var sign1:MovieClip;
      
      public var sign2:MovieClip;
      
      public var sign3:MovieClip;
      
      public var sign4:MovieClip;
      
      public var sign5:MovieClip;
      
      public var sign6:MovieClip;
      
      public var sign7:MovieClip;
      
      public var sign8:MovieClip;
      
      public var sign9:MovieClip;
      
      public var sign10:MovieClip;
      
      public var sign11:MovieClip;
      
      public var sign12:MovieClip;
      
      public var sign13:MovieClip;
      
      public var sign14:MovieClip;
      
      public var sign15:MovieClip;
      
      public var sign16:MovieClip;
      
      public var sign17:MovieClip;
      
      public var sign18:MovieClip;
      
      public var sign19:MovieClip;
      
      public var sign20:MovieClip;
      
      public var sign21:MovieClip;
      
      public var sign22:MovieClip;
      
      public var chest0:MovieClip;
      
      public var chest1:MovieClip;
      
      public var chest2:MovieClip;
      
      public var chest3:MovieClip;
      
      public var chest4:MovieClip;
      
      public var chest5:MovieClip;
      
      public var chest6:MovieClip;
      
      public var chest7:MovieClip;
      
      public var chest8:MovieClip;
      
      public var chest9:MovieClip;
      
      public var layer0:MovieClip;
      
      public var layer1:MovieClip;
      
      public var layer2:MovieClip;
      
      public var layer3:MovieClip;
      
      public var layer4:MovieClip;
      
      public var layer5:MovieClip;
      
      public var layer6:MovieClip;
      
      public var layer7:MovieClip;
      
      public var layer8:MovieClip;
      
      public var layer9:MovieClip;
      
      public var layer10:MovieClip;
      
      public var layer11:MovieClip;
      
      public var layer12:MovieClip;
      
      public var layer13:MovieClip;
      
      public var teleporter0:MovieClip;
      
      public var teleporter1:MovieClip;
      
      public var teleporter2:MovieClip;
      
      public var teleporter3:MovieClip;
      
      public var teleporter4:MovieClip;
      
      public var teleporter5:MovieClip;
      
      public var teleporter6:MovieClip;
      
      public var teleporter7:MovieClip;
      
      public var teleporter8:MovieClip;
      
      public var teleporter9:MovieClip;
      
      public var teleporter10:MovieClip;
      
      public var teleporter11:MovieClip;
      
      public var destination0:MovieClip;
      
      public var destination1:MovieClip;
      
      public var destination2:MovieClip;
      
      public var destination3:MovieClip;
      
      public var destination4:MovieClip;
      
      public var destination5:MovieClip;
      
      public var destination6:MovieClip;
      
      public var destination7:MovieClip;
      
      public var destination8:MovieClip;
      
      public var destination9:MovieClip;
      
      public var destination10:MovieClip;
      
      public var destination11:MovieClip;
      
      public var crystal0:MovieClip;
      
      public var crystal1:MovieClip;
      
      public var crystal2:MovieClip;
      
      public var crystal3:MovieClip;
      
      public var crystal4:MovieClip;
      
      public var crystal5:MovieClip;
      
      public var crystal6:MovieClip;
      
      public var crystal7:MovieClip;
      
      public var crystal8:MovieClip;
      
      public var crystal9:MovieClip;
      
      public var dirt0:MovieClip;
      
      public var dirt1:MovieClip;
      
      public var dirt2:MovieClip;
      
      public var dirt3:MovieClip;
      
      public var dirt4:MovieClip;
      
      public var dirt5:MovieClip;
      
      public var dirt6:MovieClip;
      
      public var dirt7:MovieClip;
      
      public var dirt8:MovieClip;
      
      public var dirt9:MovieClip;
      
      public var snow0:MovieClip;
      
      public var snow1:MovieClip;
      
      public var snow2:MovieClip;
      
      public var snow3:MovieClip;
      
      public var snow4:MovieClip;
      
      public var snow5:MovieClip;
      
      public var snow6:MovieClip;
      
      public var snow7:MovieClip;
      
      public var snow8:MovieClip;
      
      public var snow9:MovieClip;
      
      public var ox:int;
      
      public var oy:int;
      
      public var mousecatch:SimpleButton;
      
      public var pX:int = -1;
      
      public var pY:int = -1;
      
      public var updater:MovieClip;
      
      public var warpID:int = -1;
      
      private var keyDelay:int = 0;
      
      private var space:Boolean = false;
      
      private var secondTimer:int = 0;
      
      private var hatNo:int = -1;
      
      public var glitch:Boolean = false;
      
      public var lost:Boolean = false;
      
      public var sea:Boolean = false;
      
      public var lostn:int = 0;
      
      private var X:int;
      
      private var Y:int;
      
      public var path:Array = [];
      
      public var switchEvent:Function;
      
      public var lightness:int = 0;
      
      public var success:Function;
      
      public var nodes:Array = [];
      
      public var isPath:Boolean = false;
      
      private var tryi:int;
      
      private var nodeO:Object;
      
      private var neatest:Object;
      
      private var distance:int;
      
      public var grid:Array;
      
      public function Maps()
      {
         super();
      }
      
      public static function playSound(param1:String) : *
      {
         MapMenu.sounds.gotoAndStop(param1);
         MapMenu.sounds.gotoAndStop(1);
      }
      
      public static function playTreasureSound(param1:int) : *
      {
         if(treasuresCounted[param1])
         {
            return;
         }
         treasuresCounted[param1] = true;
         ++treasures;
         if(treasureSoundPlayed || !Options.treasureFinder)
         {
            return;
         }
         playSound("treasure");
         treasureSoundPlayed = true;
      }
      
      public static function autosave() : *
      {
         if(Game.skipAutosave)
         {
            Game.skipAutosave = false;
         }
         else
         {
            SaveData.saveGame();
         }
      }
      
      public static function outOfGrid(param1:*, param2:*) : Boolean
      {
         if(param1 > Constants.gridWidth - 1 || param1 < 0 || param2 > Constants.gridHeight - 1 || param2 < 0)
         {
            return true;
         }
         return false;
      }
      
      public static function getTile(param1:int, param2:int) : int
      {
         if(param1 < 0 || param1 > Constants.gridWidth - 1 || param2 < 0 || param2 > Constants.gridHeight - 1)
         {
            return 281;
         }
         return param2 * Constants.gridWidth + param1;
      }
      
      public function removeAllObjects() : *
      {
         var _loc1_:int = 0;
         while(_loc1_ <= 17)
         {
            this["special" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 7)
         {
            this["painting" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 4)
         {
            this["animal" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 11)
         {
            this["scene" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 11)
         {
            this["cat" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 7)
         {
            this["npc" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 3)
         {
            this["shop" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 9)
         {
            this["foe" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 3)
         {
            this["ladder" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 8)
         {
            this["ped" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 9)
         {
            this["tree" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 9)
         {
            this["rock" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 7)
         {
            this["torch" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 6)
         {
            this["door" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 7)
         {
            this["key" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 8)
         {
            this["switch" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 20)
         {
            this["spikes" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 14)
         {
            this["push" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 3)
         {
            this["bunny" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 11)
         {
            this["sign" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 9)
         {
            this["chest" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 11)
         {
            this["teleporter" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 11)
         {
            this["destination" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 9)
         {
            this["crystal" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 9)
         {
            this["dirt" + _loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 9)
         {
            this["snow" + _loc1_] = null;
            _loc1_++;
         }
         (Game.root as Main).stopAllChildren(Game.root);
         if(this.player.currentFrame == 202)
         {
            this.player.play();
         }
         this.fader.play();
         if(!doorDetails)
         {
            this.player.play();
         }
      }
      
      public function init() : *
      {
         treasuresCounted = [];
         treasures = 0;
         if(Main.newGamePlusFlag)
         {
            Main.newGamePlus();
         }
         if(Game.tempSave.length == 0 && !MapMenu.tempMapVars || Main.newGamePlusFlag)
         {
            keyData = [];
            switchData = [];
            chestData = [];
            torchData = [];
            touchedPlainTile = true;
            puzzleTemp = null;
            blockData = [];
            blockDataLoad = [];
            puzzleData = [];
            ladderData = [];
            bushData = [];
            rockData = [];
            snowData = [];
            crystalData = [];
            dirtData = [];
            foeData = [];
            Maps.warpData = [true];
            sceneData = [];
            mapX = Constants.MAP_X;
            mapY = Constants.MAP_Y;
            inCave = false;
            MapData.initMapVars();
            mapVisits = [[false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false]];
         }
         this.clearGrid();
         Game.mode = Game.MAP;
         putOnRaft = false;
         MapPlayer.watered = false;
         (Game.root as Main).stopAllChildren(Game.root);
         if(Game.tempSave.length != 0 && !Main.newGamePlusFlag)
         {
            this.pX = Game.tempSave[2];
            this.pY = Game.tempSave[3];
            gotoAndStop(2);
            this.setMapXY(Game.tempSave[4]);
            if(Game.tempSave[5])
            {
               putOnRaft = true;
               MapPlayer.watered = true;
            }
            Game.tempSave = [];
         }
         else
         {
            gotoAndStop(2);
         }
         this.ox = x;
         this.oy = y;
         try
         {
            stage.focus = this;
         }
         catch(e:Error)
         {
         }
         Options.setVolume(MapMenu.sounds);
         Options.setVolume(this);
         this.player = new MapPlayer(this.pX,this.pY);
         this.addChild(this.player);
         setChildIndex(this.player,0);
         this.player.scaleX = 0.9;
         this.player.scaleY = 0.9;
         if(!Options.keyboard)
         {
            buttonMode = true;
         }
         this.cursor.mouseEnabled = false;
         this.cursor2.mouseEnabled = false;
         this.addEventListener(MouseEvent.MOUSE_MOVE,this.highlight);
         this.addEventListener(MouseEvent.MOUSE_DOWN,this.select);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         stage.addEventListener(Event.ENTER_FRAME,this.handleKeys);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         Maps.instance = this;
         this.player.init();
         MapMenu.tempMapVars = null;
         Main.newGamePlusFlag = false;
         this.updater = new Updater();
         this.updater.x = 50;
         this.updater.y = 50;
         addChild(this.updater);
         setChildIndex(this.updater,0);
      }
      
      public function teardown() : *
      {
         this.removeEventListener(MouseEvent.MOUSE_MOVE,this.highlight);
         this.removeEventListener(MouseEvent.MOUSE_DOWN,this.select);
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         stage.removeEventListener(Event.ENTER_FRAME,this.handleKeys);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.keyUp);
      }
      
      public function respawnFoes() : *
      {
         var _loc2_:int = 0;
         this.respawnFoesInSpecialAreas();
         if(Options.noGrinding)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < foeData.length)
         {
            if(foeData[_loc1_])
            {
               _loc2_ = 0;
               while(_loc2_ < foeData[_loc1_].length)
               {
                  if(foeData[_loc1_][_loc2_] == 3)
                  {
                     foeData[_loc1_][_loc2_] = null;
                  }
                  _loc2_++;
               }
            }
            _loc1_++;
         }
      }
      
      public function respawnFoesInSpecialAreas() : *
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         for each(_loc1_ in [314,198,152,317])
         {
            if(foeData[_loc1_])
            {
               _loc2_ = 0;
               while(_loc2_ < foeData[_loc1_].length)
               {
                  if(foeData[_loc1_][_loc2_] == 3)
                  {
                     foeData[_loc1_][_loc2_] = null;
                  }
                  _loc2_++;
               }
            }
         }
      }
      
      public function allFoesDefeated(param1:int, param2:int) : Boolean
      {
         var _loc3_:int = 0;
         if(!foeData[param1])
         {
            return false;
         }
         var _loc4_:int = 0;
         while(_loc4_ < foeData[param1].length)
         {
            if(foeData[param1][_loc4_] == 3)
            {
               _loc3_++;
            }
            _loc4_++;
         }
         return _loc3_ == param2;
      }
      
      public function countFoesDefeated(param1:int) : int
      {
         var _loc2_:int = 0;
         if(!foeData[param1])
         {
            return 0;
         }
         var _loc3_:int = 0;
         while(_loc3_ < foeData[param1].length)
         {
            if(foeData[param1][_loc3_] == 3)
            {
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function warp() : *
      {
         if(MapData.mapNo == 17)
         {
            if(this.warpID == 0)
            {
               tempWarpData = [38,12,5];
            }
            if(this.warpID == 1)
            {
               tempWarpData = [22,7,8];
            }
            if(this.warpID == 2)
            {
               tempWarpData = [32,15,9];
            }
            if(this.warpID == 3)
            {
               tempWarpData = [47,7,7];
            }
            if(this.warpID == 4)
            {
               tempWarpData = [83,10,3];
            }
            if(this.warpID == 5)
            {
               tempWarpData = [104,3,4];
            }
            if(this.warpID == 6)
            {
               tempWarpData = [113,9,6];
            }
            if(this.warpID == 7)
            {
               tempWarpData = [66,15,7];
            }
            if(this.warpID == 8)
            {
               tempWarpData = [60,2,7];
            }
            if(this.warpID == 9)
            {
               tempWarpData = [125,5,6];
            }
            if(this.warpID == 10)
            {
               tempWarpData = [197,9,8];
            }
            if(this.warpID == 11)
            {
               tempWarpData = [310,4,9];
            }
         }
         else
         {
            if(this.warpID == 0)
            {
               tempWarpData = [17,4,5];
            }
            if(this.warpID == 1)
            {
               tempWarpData = [17,6,5];
            }
            if(this.warpID == 2)
            {
               tempWarpData = [17,5,6];
            }
            if(this.warpID == 3)
            {
               tempWarpData = [17,7,6];
            }
            if(this.warpID == 4)
            {
               tempWarpData = [17,10,5];
            }
            if(this.warpID == 5)
            {
               tempWarpData = [17,11,6];
            }
            if(this.warpID == 6)
            {
               tempWarpData = [17,12,5];
            }
            if(this.warpID == 7)
            {
               tempWarpData = [17,9,6];
            }
            if(this.warpID == 8)
            {
               tempWarpData = [17,8,5];
            }
            if(this.warpID == 9)
            {
               tempWarpData = [17,13,6];
            }
            if(this.warpID == 10)
            {
               tempWarpData = [17,17,6];
            }
            if(this.warpID == 11)
            {
               tempWarpData = [17,14,5];
            }
         }
      }
      
      private function delay() : *
      {
         if(this.keyDelay >= 10)
         {
            this.keyDelay = 0;
            return true;
         }
         return false;
      }
      
      public function handleKeys(param1:Event = null) : *
      {
         ++this.secondTimer;
         if(this.secondTimer == 30)
         {
            this.secondTimer = 0;
            if(Boolean(this.player) && Boolean(this.player.parent))
            {
               this.player.passiveHeal();
            }
         }
         if(parent && (parent as MapMenu).summonsMenu && Boolean((parent as MapMenu).summonsMenu.renameMenu.visible))
         {
            return;
         }
         ++this.keyDelay;
         try
         {
            if(!this.busy && !(parent as MapMenu).textbox.visible)
            {
               if(this.escKey())
               {
                  parent.closeMenus();
               }
            }
            if(!keyIsDown[32] && !keyIsDown[13])
            {
               this.space = true;
            }
            if((keyIsDown[32] || keyIsDown[13]) && this.space && ((parent as MapMenu).gallery || (parent as MapMenu).treasurebox.visible || (parent as MapMenu).textbox.visible))
            {
               this.space = false;
               this.clearText();
            }
            if((this.upKey() || this.downKey() || this.rightKey() || this.leftKey() || keyIsDown[32] || keyIsDown[13]) && !Options.keyboard && this.moveMap == "")
            {
               Options.keyboard = true;
               buttonMode = false;
               this.path = [];
            }
            if(!Options.keyboard)
            {
               buttonMode = true;
            }
            else
            {
               buttonMode = false;
            }
            if(Options.keyboard && this.player && !outOfGrid(this.player.X,this.player.Y) && !this.player.busy && !this.busy)
            {
               if((keyIsDown[32] || keyIsDown[13]) && this.space && (!(parent as MapMenu).treasurebox.visible && !(parent as MapMenu).textbox.visible))
               {
                  this.space = false;
                  (parent as MapMenu).clearMenus();
                  (parent as MapMenu).currentMenu = "";
                  this.interact = this.player.facing;
                  this.player.interact();
               }
               else if(this.upKey())
               {
                  if(this.tryNode(this.grid[getTile(this.player.X,this.player.Y - 1)],this.grid[getTile(this.player.X,this.player.Y)],UP))
                  {
                     this.player.moveUp();
                     this.clearText(true);
                     (parent as MapMenu).closeMenus();
                  }
                  else if(this.player.face(UP))
                  {
                     (parent as MapMenu).closeMenus();
                  }
               }
               else if(this.leftKey())
               {
                  if(this.tryNode(this.grid[getTile(this.player.X - 1,this.player.Y)],this.grid[getTile(this.player.X,this.player.Y)],LEFT))
                  {
                     this.player.moveLeft();
                     this.clearText(true);
                     (parent as MapMenu).closeMenus();
                  }
                  else if(this.player.face(LEFT))
                  {
                     (parent as MapMenu).closeMenus();
                  }
               }
               else if(this.rightKey())
               {
                  if(this.tryNode(this.grid[getTile(this.player.X + 1,this.player.Y)],this.grid[getTile(this.player.X,this.player.Y)],RIGHT))
                  {
                     this.player.moveRight();
                     this.clearText(true);
                     (parent as MapMenu).closeMenus();
                  }
                  else if(this.player.face(RIGHT))
                  {
                     (parent as MapMenu).closeMenus();
                  }
               }
               else if(this.downKey())
               {
                  if(this.tryNode(this.grid[getTile(this.player.X,this.player.Y + 1)],this.grid[getTile(this.player.X,this.player.Y)],DOWN))
                  {
                     this.player.moveDown();
                     this.clearText(true);
                     (parent as MapMenu).closeMenus();
                  }
                  else if(this.player.face(DOWN))
                  {
                     (parent as MapMenu).closeMenus();
                  }
               }
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public function tileUnderPlayer() : int
      {
         return this.grid[getTile(this.player.X,this.player.Y)];
      }
      
      public function clearText(param1:Boolean = false) : *
      {
         if((parent as MapMenu).gallery)
         {
            (parent as MapMenu).removeChild((parent as MapMenu).gallery);
            (parent as MapMenu).gallery = null;
         }
         if((parent as MapMenu).treasurebox.visible)
         {
            (parent as MapMenu).treasurebox.visible = false;
         }
         if((parent as MapMenu).textbox.visible)
         {
            if(param1)
            {
               (parent as MapMenu).textbox.more = false;
            }
            (parent as MapMenu).textbox.moreText();
         }
      }
      
      public function leftKey() : *
      {
         return keyIsDown[37] || keyIsDown[65];
      }
      
      public function rightKey() : *
      {
         return keyIsDown[39] || keyIsDown[68];
      }
      
      public function upKey() : *
      {
         return keyIsDown[38] || keyIsDown[87];
      }
      
      public function downKey() : *
      {
         return keyIsDown[40] || keyIsDown[83];
      }
      
      public function escKey() : *
      {
         return keyIsDown[27];
      }
      
      public function keyDown(param1:KeyboardEvent) : *
      {
         keyIsDown[param1.keyCode] = true;
         this.handleKeys();
      }
      
      public function keyUp(param1:KeyboardEvent) : *
      {
         keyIsDown[param1.keyCode] = false;
      }
      
      public function nextMap(param1:Boolean = false) : *
      {
         var i:int;
         var refresh:Boolean = param1;
         this.fader.stop();
         blockDataLoad = null;
         treasures = 0;
         treasureSoundPlayed = false;
         i = 0;
         while(i < this.objectData.length)
         {
            if(this.objectData[i].ref)
            {
               removeChild(this.objectData[i].ref);
            }
            else if(Boolean(getChildByName(this.objectData[i].mc)) && Boolean(getChildByName(this.objectData[i].mc).parent))
            {
               removeChild(getChildByName(this.objectData[i].mc));
            }
            i++;
         }
         i = 0;
         while(i < 15)
         {
            if(getChildByName("spikes" + i))
            {
               removeChild(getChildByName("spikes" + i));
            }
            i++;
         }
         this.removeAllObjects();
         this.clearGrid();
         this.lightness = 0;
         this.blockPuzzle = [];
         this.success = null;
         this.switchEvent = null;
         if(mapX == 14 && mapY == 1)
         {
            this.lost = true;
         }
         if(mapY == 6 && mapX >= 11 && mapX <= 16)
         {
            this.glitch = true;
         }
         if(mapY > 9 && mapY != 15)
         {
            this.sea = true;
         }
         if(!refresh)
         {
            if(!this.lost && !this.glitch && !this.sea)
            {
               if(this.moveMap == LEFT)
               {
                  --mapX;
               }
               if(this.moveMap == RIGHT)
               {
                  ++mapX;
               }
               if(this.moveMap == UP)
               {
                  --mapY;
               }
               if(this.moveMap == DOWN)
               {
                  ++mapY;
               }
            }
            else if(this.sea)
            {
               if(mapX == 3 && mapY == 10)
               {
                  if(this.moveMap == LEFT)
                  {
                  }
                  if(this.moveMap == RIGHT)
                  {
                  }
                  if(this.moveMap == UP)
                  {
                     --mapY;
                  }
                  if(this.moveMap == DOWN)
                  {
                     ++mapY;
                  }
               }
               else if(mapX == 3 && mapY == 11)
               {
                  if(this.moveMap == LEFT)
                  {
                     --mapX;
                  }
                  if(this.moveMap == RIGHT)
                  {
                  }
                  if(this.moveMap == UP)
                  {
                     --mapY;
                  }
                  if(this.moveMap == DOWN)
                  {
                  }
               }
               else if(mapX == 2 && mapY == 11)
               {
                  if(this.moveMap == LEFT)
                  {
                     ++mapX;
                  }
                  if(this.moveMap == RIGHT)
                  {
                     ++mapX;
                  }
                  if(this.moveMap == UP)
                  {
                     --mapY;
                     ++mapX;
                  }
                  if(this.moveMap == DOWN)
                  {
                     ++mapY;
                  }
               }
               else if(mapX == 2 && mapY == 12)
               {
                  if(this.moveMap == LEFT)
                  {
                     --mapY;
                  }
                  if(this.moveMap == RIGHT)
                  {
                     ++mapX;
                  }
                  if(this.moveMap == UP)
                  {
                     --mapY;
                  }
                  if(this.moveMap == DOWN)
                  {
                     --mapY;
                  }
               }
               else if(mapX == 3 && mapY == 12)
               {
                  if(this.moveMap == LEFT)
                  {
                     --mapX;
                  }
                  if(this.moveMap == RIGHT)
                  {
                     ++mapX;
                  }
                  if(this.moveMap == UP)
                  {
                     --mapY;
                     --mapY;
                  }
                  if(this.moveMap == DOWN)
                  {
                     --mapY;
                  }
               }
               else if(mapX == 4 && mapY == 12)
               {
                  if(this.moveMap == LEFT)
                  {
                     --mapX;
                  }
                  if(this.moveMap == RIGHT)
                  {
                     --mapX;
                  }
                  if(this.moveMap == UP)
                  {
                     --mapY;
                  }
                  if(this.moveMap == DOWN)
                  {
                     ++mapY;
                  }
               }
               else if(mapX == 4 && mapY == 11)
               {
                  if(this.moveMap == LEFT)
                  {
                     --mapX;
                     ++mapY;
                  }
                  if(this.moveMap == RIGHT)
                  {
                     ++mapY;
                  }
                  if(this.moveMap == UP)
                  {
                     --mapY;
                     --mapX;
                  }
                  if(this.moveMap == DOWN)
                  {
                     ++mapY;
                  }
               }
               else if(mapX == 4 && mapY == 13)
               {
                  if(this.moveMap == LEFT)
                  {
                     --mapX;
                  }
                  if(this.moveMap == RIGHT)
                  {
                     --mapX;
                     --mapY;
                  }
                  if(this.moveMap == UP)
                  {
                     --mapY;
                  }
                  if(this.moveMap == DOWN)
                  {
                     --mapX;
                     --mapY;
                  }
               }
               else if(mapX == 3 && mapY == 13)
               {
                  if(this.moveMap == LEFT)
                  {
                     --mapX;
                     --mapY;
                  }
                  if(this.moveMap == RIGHT)
                  {
                     ++mapX;
                  }
                  if(this.moveMap == UP)
                  {
                     --mapY;
                     --mapY;
                  }
                  if(this.moveMap == DOWN)
                  {
                     ++mapY;
                  }
               }
               else if(mapX == 3 && mapY == 14)
               {
                  if(this.moveMap == LEFT)
                  {
                     --mapY;
                  }
                  if(this.moveMap == RIGHT)
                  {
                     ++mapX;
                     --mapY;
                  }
                  if(this.moveMap == UP)
                  {
                     --mapY;
                  }
                  if(this.moveMap == DOWN)
                  {
                     ++mapY;
                  }
               }
            }
            else if(this.glitch)
            {
               if(mapX == 15 && this.moveMap == UP)
               {
                  ++mapX;
               }
               if(mapX == 16 && this.moveMap == DOWN)
               {
                  --mapX;
               }
            }
            else if(this.warpID == -1)
            {
               if(this.moveMap == LEFT)
               {
                  --MapData.MX;
               }
               if(this.moveMap == RIGHT)
               {
                  ++MapData.MX;
               }
               if(this.moveMap == UP)
               {
                  --MapData.MY;
               }
               if(this.moveMap == DOWN)
               {
                  ++MapData.MY;
               }
               if(MapData.MY < 0)
               {
                  MapData.MY = 8;
               }
               if(MapData.MY > 8)
               {
                  MapData.MY = 0;
               }
               if(MapData.MX < 0)
               {
                  MapData.MX = 8;
               }
               if(MapData.MX > 8)
               {
                  MapData.MX = 0;
               }
            }
         }
         if(this.warpID == -1)
         {
            if(mapY < 10)
            {
               mapVisits[mapY][mapX] = true;
            }
         }
         else
         {
            this.player.X = tempWarpData[1];
            this.player.Y = tempWarpData[2];
            (parent as MapMenu).makeMap(true);
            this.setMapXY();
         }
         this.moveMap = "";
         this.cursor.x = 5000;
         this.cursor2.x = 5000;
         Flags.setFlagsOnMapChange();
         if(this.warpID == -1)
         {
            if(this.player.X <= -1)
            {
               this.player.X = Constants.gridWidth - 1;
            }
            if(this.player.X >= Constants.gridWidth)
            {
               this.player.X = 0;
            }
            if(this.player.Y <= -1)
            {
               this.player.Y = Constants.gridHeight - 1;
            }
            if(this.player.Y >= Constants.gridHeight)
            {
               this.player.Y = 0;
            }
         }
         this.player.updatePosition();
         this.lost = false;
         this.glitch = false;
         this.sea = false;
         if(this.warpID != -1)
         {
            this.fader.gotoAndPlay("fadeIn");
         }
         if(this.warpID == -1)
         {
            if(doorDetails)
            {
               this.player.X = doorDetails[1];
               this.player.Y = doorDetails[2];
               if(doorDetails[3] == 3 || doorDetails[3] == 4)
               {
                  this.player.face(DOWN);
               }
               this.player.updatePosition();
               this.player.busy = false;
               (parent as MapMenu).makeMap(false,true);
               doorDetails = null;
               this.setMapXY();
               minimapCoords = [mapX,mapY];
               if(mapY < 10)
               {
                  mapVisits[mapY][mapX] = true;
               }
               this.fader.play();
            }
            else
            {
               (parent as MapMenu).makeMap();
               minimapCoords = [mapX,mapY];
            }
         }
         this.warpID = -1;
         try
         {
            System.pauseForGCIfCollectionImminent(0.5);
         }
         catch(e:Error)
         {
         }
      }
      
      public function setMapXY(param1:int = -1) : *
      {
         var _loc3_:int = 0;
         if(param1 == -1)
         {
            param1 = MapData.mapNo;
         }
         var _loc2_:int = 0;
         while(_loc2_ < mapMatrix.length)
         {
            _loc3_ = 0;
            while(_loc3_ < mapMatrix[_loc2_].length)
            {
               if(mapMatrix[_loc2_][_loc3_] == param1)
               {
                  mapX = _loc3_;
                  mapY = _loc2_;
               }
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function highlight(param1:Event = null) : *
      {
         this.X = mouseX / 50;
         this.Y = mouseY / 40;
         if(!Options.keyboard)
         {
            buttonMode = true;
         }
         else
         {
            buttonMode = false;
         }
         if(outOfGrid(this.X,this.Y) || Options.keyboard)
         {
            this.cursor2.x = -500;
            this.cursor.x = -500;
            return;
         }
         this.cursor.x = mouseX - 25;
         this.cursor.y = mouseY - 20;
         this.cursor2.x = this.X * 50;
         this.cursor2.y = this.Y * 40;
         if(this.tileAtCursor() == 0 || this.tileAtCursor() == 20 || this.tileAtCursor() == 36 || this.tileAtCursor() == 16 || this.tileAtCursor() == 17 || this.tileAtCursor() == 2 || this.tileAtCursor() == 4 || this.tileAtCursor() == 18 || this.tileAtCursor() == 19 || this.tileAtCursor() == 37 || this.tileAtCursor() == 38 || this.tileAtCursor() == 39 || this.tileAtCursor() == 40 || this.tileAtCursor() == 41 || this.tileAtCursor() == 6 || this.tileAtCursor() == 50 || this.tileAtCursor() == 51 || this.tileAtCursor() == 52 || this.tileAtCursor() == 53 || this.tileAtCursor() == 42 || this.tileAtCursor() == 44 || this.tileAtCursor() == 61 || Items.raft.quantity && this.tileAtCursor() == 60 || this.tileAtCursor() == 10 && Items.leafyboots.quantity > 0 || this.tileAtCursor() == 11 && Items.thermalboots.quantity > 0 || this.tileAtCursor() == 57 && Items.rubberboots.quantity > 0 || this.tileAtCursor() == 12 && Items.wingedboots.quantity > 0)
         {
            this.cursor.gotoAndStop(2);
            this.cursor2.gotoAndStop(2);
            if(getTile(this.X,this.Y) % Constants.gridWidth == 0 && this.isEdge(this.X,this.Y,LEFT))
            {
               this.cursor.gotoAndStop(6);
            }
            if(getTile(this.X,this.Y) % Constants.gridWidth == Constants.gridWidth - 1 && this.isEdge(this.X,this.Y,RIGHT))
            {
               this.cursor.gotoAndStop(7);
            }
            if(getTile(this.X,this.Y) < Constants.gridWidth - 1 && this.isEdge(this.X,this.Y,UP))
            {
               this.cursor.gotoAndStop(8);
            }
            if(getTile(this.X,this.Y) > Constants.gridSquares - Constants.gridWidth && this.isEdge(this.X,this.Y,DOWN))
            {
               this.cursor.gotoAndStop(9);
            }
         }
         if(this.tileAtCursor() == 1 || this.tileAtCursor() == 14 || Items.raft.quantity == 0 && (this.tileAtCursor() == 60 || this.tileAtCursor() == 62 || this.tileAtCursor() == 63 || this.tileAtCursor() == 64 || this.tileAtCursor() == 65) || this.tileAtCursor() == 10 && Items.leafyboots.quantity == 0 || this.tileAtCursor() == 11 && Items.thermalboots.quantity == 0 || this.tileAtCursor() == 57 && Items.rubberboots.quantity == 0 || this.tileAtCursor() == 12 && Items.wingedboots.quantity == 0)
         {
            this.cursor.gotoAndStop(3);
            this.cursor2.gotoAndStop(3);
         }
         if(this.tileAtCursor() == 3 || this.tileAtCursor() == 30 || this.tileAtCursor() == 32 || this.tileAtCursor() == 59 || this.tileAtCursor() == 68 || this.tileAtCursor() == 31)
         {
            this.cursor.gotoAndStop(4);
            this.cursor2.gotoAndStop(2);
         }
         if(this.tileAtCursor() == 58 || this.tileAtCursor() == 45)
         {
            this.cursor.gotoAndStop(10);
            this.cursor2.gotoAndStop(2);
         }
         if(this.tileAtCursor() == 5 || this.tileAtCursor() == 25 || this.tileAtCursor() == 7 || this.tileAtCursor() == 21 || this.tileAtCursor() == 69 || this.tileAtCursor() == 22 || this.tileAtCursor() == 54 || this.tileAtCursor() == 55 || this.tileAtCursor() == 43 || this.tileAtCursor() == 56 || this.tileAtCursor() == 8 || this.tileAtCursor() == 9 || this.tileAtCursor() == 15 || this.tileAtCursor() == 23 || this.tileAtCursor() == 26 || this.tileAtCursor() == 50 || this.tileAtCursor() == 51 || this.tileAtCursor() == 52 || this.tileAtCursor() == 53 || Items.raft.quantity && (this.tileAtCursor() == 62 || this.tileAtCursor() == 63 || this.tileAtCursor() == 64 || this.tileAtCursor() == 65) || this.tileAtCursor() == 13 || this.tileAtCursor() == 33 || this.tileAtCursor() == 34 || this.tileAtCursor() == 35)
         {
            this.cursor.gotoAndStop(5);
            this.cursor2.gotoAndStop(2);
         }
      }
      
      public function tileAtCursor() : int
      {
         return this.grid[this.Y * Constants.gridWidth + this.X];
      }
      
      public function isEdge(param1:int, param2:int, param3:String) : *
      {
         if(this.grid[getTile(param1,param2)] == 0 || this.grid[getTile(param1,param2)] == 60)
         {
            return true;
         }
         if(this.grid[getTile(param1,param2)] == 10 && Items.leafyboots.quantity > 0)
         {
            return true;
         }
         if(this.grid[getTile(param1,param2)] == 11 && Items.thermalboots.quantity > 0)
         {
            return true;
         }
         if(this.grid[getTile(param1,param2)] == 57 && Items.rubberboots.quantity > 0)
         {
            return true;
         }
         if(this.grid[getTile(param1,param2)] == 12 && Items.wingedboots.quantity > 0)
         {
            return true;
         }
         if((this.grid[getTile(param1,param2)] == 2 || this.grid[getTile(param1,param2)] == 17) && param3 == LEFT)
         {
            return true;
         }
         if((this.grid[getTile(param1,param2)] == 2 || this.grid[getTile(param1,param2)] == 17) && param3 == RIGHT)
         {
            return true;
         }
         if((this.grid[getTile(param1,param2)] == 20 || this.grid[getTile(param1,param2)] == 16) && param3 == UP)
         {
            return true;
         }
         if((this.grid[getTile(param1,param2)] == 20 || this.grid[getTile(param1,param2)] == 16) && param3 == DOWN)
         {
            return true;
         }
         return false;
      }
      
      public function select(param1:Event) : *
      {
         var _loc5_:Array = null;
         if(this.player.boosting)
         {
            return;
         }
         keyIsDown = [];
         if(Options.keyboard && this.player.busy)
         {
            return;
         }
         Options.keyboard = false;
         buttonMode = true;
         if(this.busy || this.player.busy && this.path == [] || outOfGrid(this.player.X,this.player.Y) || Options.keyboard)
         {
            return;
         }
         var _loc2_:int = mouseX / 50;
         var _loc3_:int = mouseY / 40;
         if(this.grid[getTile(_loc2_,_loc3_)] == 68 || this.grid[getTile(_loc2_,_loc3_)] == 69)
         {
            _loc3_ += 1;
         }
         var _loc4_:Boolean = false;
         if(outOfGrid(_loc2_,_loc3_))
         {
            return;
         }
         this.moveMap = "";
         if(this.grid[getTile(_loc2_,_loc3_)] == 3 || this.grid[getTile(_loc2_,_loc3_)] == 59)
         {
            _loc3_ += 1;
            _loc4_ = true;
         }
         if(getTile(_loc2_,_loc3_) % Constants.gridWidth == 0 && this.isEdge(_loc2_,_loc3_,RIGHT))
         {
            this.moveMap = LEFT;
         }
         if(getTile(_loc2_,_loc3_) % Constants.gridWidth == Constants.gridWidth - 1 && this.isEdge(_loc2_,_loc3_,RIGHT))
         {
            this.moveMap = RIGHT;
         }
         if(getTile(_loc2_,_loc3_) < Constants.gridWidth - 1 && this.isEdge(_loc2_,_loc3_,UP))
         {
            this.moveMap = UP;
         }
         if(getTile(_loc2_,_loc3_) > Constants.gridSquares - Constants.gridWidth && this.isEdge(_loc2_,_loc3_,DOWN))
         {
            this.moveMap = DOWN;
         }
         (parent as MapMenu).clearMenus();
         this.interact = "";
         if(this.grid[getTile(_loc2_,_loc3_)] == 5 || this.grid[getTile(_loc2_,_loc3_)] == 25 || this.grid[getTile(_loc2_,_loc3_)] == 7 || this.grid[getTile(_loc2_,_loc3_)] == 8 || this.grid[getTile(_loc2_,_loc3_)] == 21 || this.grid[getTile(_loc2_,_loc3_)] == 22 || this.grid[getTile(_loc2_,_loc3_)] == 54 || this.grid[getTile(_loc2_,_loc3_)] == 55 || this.grid[getTile(_loc2_,_loc3_)] == 56 || this.grid[getTile(_loc2_,_loc3_)] == 9 || this.grid[getTile(_loc2_,_loc3_)] == 13 || this.grid[getTile(_loc2_,_loc3_)] == 33 || this.grid[getTile(_loc2_,_loc3_)] == 34 || this.grid[getTile(_loc2_,_loc3_)] == 35 || this.grid[getTile(_loc2_,_loc3_)] == 32 || this.grid[getTile(_loc2_,_loc3_)] == 31 || this.grid[getTile(_loc2_,_loc3_)] == 15 || this.grid[getTile(_loc2_,_loc3_)] == 23 || this.grid[getTile(_loc2_,_loc3_)] == 26 || this.grid[getTile(_loc2_,_loc3_)] == 30)
         {
            this.findPath(_loc2_ + 1,_loc3_,false,true);
            if(this.isPath)
            {
               _loc5_ = this.path;
               this.interact = LEFT;
            }
            this.findPath(_loc2_ - 1,_loc3_,true,true);
            if((!_loc5_ || this.path.length <= _loc5_.length) && this.isPath)
            {
               _loc5_ = this.path;
               this.interact = RIGHT;
            }
            this.findPath(_loc2_,_loc3_ + 1,true,true);
            if((!_loc5_ || this.path.length <= _loc5_.length) && this.isPath)
            {
               _loc5_ = this.path;
               this.interact = UP;
            }
            this.findPath(_loc2_,_loc3_ - 1,true,true);
            if((!_loc5_ || this.path.length < _loc5_.length) && this.isPath)
            {
               _loc5_ = this.path;
               this.interact = DOWN;
            }
            if(!_loc5_)
            {
               _loc5_ = [];
            }
            this.path = _loc5_;
         }
         else if(_loc4_)
         {
            this.findPath(_loc2_,_loc3_);
            this.interact = UP;
         }
         else
         {
            this.findPath(_loc2_,_loc3_);
         }
         if(this.path.length == 999)
         {
            this.interact = "";
            this.path = [];
         }
         if(this.path.length == 0 && (_loc2_ != this.player.X || _loc3_ != this.player.Y))
         {
            this.moveMap = "";
         }
         if(this.path.length != 0 || this.interact != "" || this.moveMap != "")
         {
         }
         if(this.path.length != 0 || this.interact != "" || this.moveMap != "")
         {
            this.player.move();
         }
      }
      
      public function startBattle(param1:Boolean = false) : *
      {
         if(!param1)
         {
            this.fader.gotoAndPlay("fadeOut2");
         }
         else if(param1)
         {
            Game.startBattle();
         }
      }
      
      public function updateNPCs() : *
      {
         var _loc1_:int = 0;
         try
         {
            _loc1_ = 0;
            while(_loc1_ < 5)
            {
               getChildByName("npc" + 0).Npc.bubble.init();
               _loc1_++;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public function checkBlocks(param1:Boolean = true) : *
      {
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc2_:Boolean = true;
         for each(_loc3_ in this.blockPuzzle)
         {
            if(this.grid[getTile(_loc3_[0],_loc3_[1])] != 8 && this.grid[getTile(_loc3_[0],_loc3_[1])] != 25)
            {
               _loc2_ = false;
            }
         }
         if(_loc2_ && this.success && this.blockPuzzle.length != 0)
         {
            blockData[MapData.mapNo] = [[],[],[],[],[],[],[],[],[],[]];
            _loc4_ = int(this.blockPuzzle.length);
            for each(_loc3_ in this.blockPuzzle)
            {
               for each(_loc5_ in this.objectData)
               {
                  if(_loc4_ == 0)
                  {
                     break;
                  }
                  if(_loc5_.type == PUSH_BLOCK || _loc5_.type == ICE_BLOCK)
                  {
                     if(this[_loc5_.mc].X == _loc3_[0] && this[_loc5_.mc].Y == _loc3_[1])
                     {
                        blockData[MapData.mapNo][_loc5_.mc.substring(4)] = [_loc3_[0],_loc3_[1]];
                        _loc4_--;
                     }
                  }
               }
            }
            this.success();
         }
         if(param1)
         {
            --this.busy;
         }
      }
      
      public function checkSwitches() : *
      {
         if(Boolean(this.switchEvent))
         {
            this.switchEvent();
         }
      }
      
      public function addLight() : *
      {
         ++this.lightness;
         if(this.lightness == this.darkLevel && Boolean(this.success))
         {
            this.success();
         }
         if(this.darkness)
         {
            this.darkness.alpha = 1 - this.lightness / this.darkLevel;
         }
      }
      
      public function findPath(param1:int, param2:int, param3:Boolean = false, param4:Boolean = false) : Boolean
      {
         var _loc9_:int = 0;
         var _loc10_:Object = null;
         var _loc11_:Object = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc5_:int = getTile(param1,param2);
         var _loc6_:int = getTile(this.player.X,this.player.Y);
         var _loc7_:Boolean = false;
         if(this.grid[getTile(this.player.X,this.player.Y)] == 41)
         {
            _loc7_ = true;
         }
         if(!param3)
         {
            _loc9_ = 0;
            while(_loc9_ < Constants.gridSquares)
            {
               this.nodes[_loc9_] = {
                  "tile":_loc9_,
                  "distance":999,
                  "previous":null,
                  "value":this.grid[_loc9_],
                  "links":[],
                  "done":false
               };
               _loc9_++;
            }
            _loc9_ = 0;
            while(_loc9_ < Constants.gridSquares)
            {
               if(this.nodes[_loc9_].value != 1)
               {
                  if(_loc9_ % Constants.gridWidth != 0 && this.tryNode(this.nodes[_loc9_ - 1].value,this.nodes[_loc9_].value,LEFT))
                  {
                     this.nodes[_loc9_].links.push(this.nodes[_loc9_ - 1]);
                  }
                  if(_loc9_ % Constants.gridWidth != Constants.gridWidth - 1 && this.tryNode(this.nodes[_loc9_ + 1].value,this.nodes[_loc9_].value,RIGHT))
                  {
                     this.nodes[_loc9_].links.push(this.nodes[_loc9_ + 1]);
                  }
                  if(_loc9_ > Constants.gridWidth - 1 && this.tryNode(this.nodes[_loc9_ - Constants.gridWidth].value,this.nodes[_loc9_].value,UP))
                  {
                     this.nodes[_loc9_].links.push(this.nodes[_loc9_ - Constants.gridWidth]);
                  }
                  if(_loc9_ < Constants.gridSquares - Constants.gridWidth && this.tryNode(this.nodes[_loc9_ + Constants.gridWidth].value,this.nodes[_loc9_].value,DOWN))
                  {
                     this.nodes[_loc9_].links.push(this.nodes[_loc9_ + Constants.gridWidth]);
                  }
               }
               _loc9_++;
            }
            this.nodes[_loc6_].distance = 0;
            while(this.uncheckedNodes())
            {
               _loc10_ = this.nearestNode();
               _loc10_.done = true;
               if(_loc10_.distance == 999)
               {
                  break;
               }
               for each(_loc11_ in _loc10_.links)
               {
                  if(!_loc11_.done)
                  {
                     _loc12_ = 1;
                     if(_loc11_.value == 43)
                     {
                        _loc12_ = 50;
                     }
                     if(_loc11_.value == 45)
                     {
                        _loc12_ = 50;
                     }
                     if(_loc11_.value == 58)
                     {
                        _loc12_ = 50;
                     }
                     if(_loc11_.value == 61)
                     {
                        _loc12_ = 20;
                     }
                     if(_loc11_.value == 60)
                     {
                        _loc12_ = 2;
                     }
                     if(_loc11_.value == 62 || _loc11_.value == 63 || _loc11_.value == 64 || _loc11_.value == 65)
                     {
                        _loc12_ = 50;
                     }
                     if(_loc11_.value == 11)
                     {
                        _loc12_ = 5;
                     }
                     if(_loc11_.value == 57)
                     {
                        _loc12_ = 5;
                     }
                     if(!_loc7_ && _loc11_.value == 41 && Items.spikedboots.quantity == 0)
                     {
                        _loc12_ = 50;
                     }
                     if(_loc11_.value >= 50 && _loc11_.value <= 53)
                     {
                        _loc12_ = 50;
                     }
                     if(_loc11_.distance > _loc10_.distance + _loc12_)
                     {
                        _loc11_.distance = _loc10_.distance + _loc12_;
                        _loc11_.previous = _loc10_;
                     }
                  }
               }
            }
         }
         if(param4 && this.grid[getTile(param1,param2)] == 60)
         {
            this.isPath = false;
            return false;
         }
         var _loc8_:Object = this.nodes[_loc5_];
         if(!_loc8_)
         {
            this.path = [];
            _loc13_ = 0;
            while(_loc13_ < 999)
            {
               this.path.push(null);
               _loc13_++;
            }
            return false;
         }
         this.path = [];
         this.path.push(_loc8_.tile);
         if(Boolean(_loc8_.previous) || _loc5_ == _loc6_)
         {
            this.isPath = true;
         }
         else
         {
            this.isPath = false;
         }
         while(_loc8_.previous)
         {
            this.path.push(_loc8_.previous.tile);
            _loc8_ = _loc8_.previous;
         }
         this.path.pop();
         return false;
      }
      
      public function tryNode(param1:int, param2:int, param3:String) : *
      {
         if(Options.walkThroughWalls)
         {
            return true;
         }
         for each(this.tryi in [1,3,5,7,8,9,13,14,15,21,22,23,25,26,30,31,32,33,34,35,54,55,56,59,68,69])
         {
            if(param1 == this.tryi)
            {
               return false;
            }
         }
         if(param1 == 10 && !Items.leafyboots.quantity)
         {
            return false;
         }
         if(param1 == 11 && !Items.thermalboots.quantity)
         {
            return false;
         }
         if(param1 == 57 && !Items.rubberboots.quantity)
         {
            return false;
         }
         if(param1 == 12 && !Items.wingedboots.quantity)
         {
            return false;
         }
         if(param1 == 99 && param2 == 60)
         {
            return true;
         }
         if(param1 == 60 && param2 != 60 && param2 != 61 && param2 != 62 && param2 != 63 && param2 != 64 && param2 != 65)
         {
            return false;
         }
         if(param1 == 62 && param2 != 60 && param2 != 61 && param2 != 62 && param2 != 63 && param2 != 64 && param2 != 65)
         {
            return false;
         }
         if(param1 == 63 && param2 != 60 && param2 != 61 && param2 != 62 && param2 != 63 && param2 != 64 && param2 != 65)
         {
            return false;
         }
         if(param1 == 64 && param2 != 60 && param2 != 61 && param2 != 62 && param2 != 63 && param2 != 64 && param2 != 65)
         {
            return false;
         }
         if(param1 == 65 && param2 != 60 && param2 != 61 && param2 != 62 && param2 != 63 && param2 != 64 && param2 != 65)
         {
            return false;
         }
         if(param1 == 60 && !Items.raft.quantity)
         {
            return false;
         }
         if(param2 == 60 && (param1 == 0 || param1 == 4 || param1 == 43 || param1 == 42 || param1 == 45 || param1 == 36))
         {
            return false;
         }
         if(param1 == 38 && (param2 != 38 && param2 != 39 && param2 != 40))
         {
            return false;
         }
         if(param1 == 39 && (param2 != 38 && param2 != 39 && param2 != 40))
         {
            return false;
         }
         if((param2 == 38 || param2 == 39) && param2 != 38 && param2 != 39 && param2 != 40)
         {
            return false;
         }
         if(param1 == 2 && param3 == UP)
         {
            return false;
         }
         if(param2 == 2 && param3 == DOWN)
         {
            return false;
         }
         if(param1 == 20 && param3 == LEFT)
         {
            return false;
         }
         if(param2 == 20 && param3 == RIGHT)
         {
            return false;
         }
         if(param2 == 17 && param3 == UP)
         {
            return false;
         }
         if(param1 == 17 && param3 == DOWN)
         {
            return false;
         }
         if(param2 == 16 && param3 == LEFT)
         {
            return false;
         }
         if(param1 == 16 && param3 == RIGHT)
         {
            return false;
         }
         return true;
      }
      
      public function uncheckedNodes() : Boolean
      {
         for each(this.nodeO in this.nodes)
         {
            if(!this.nodeO.done)
            {
               return true;
            }
         }
         return false;
      }
      
      public function nearestNode() : Object
      {
         this.distance = 999;
         for each(this.nodeO in this.nodes)
         {
            if(!this.nodeO.done && this.nodeO.distance <= this.distance)
            {
               nearest = this.nodeO;
               this.distance = this.nodeO.distance;
            }
         }
         return nearest;
      }
      
      public function clearGrid() : *
      {
         this.grid = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,99,99];
      }
      
      public function addTile(param1:int, param2:int, param3:int, param4:Boolean = true) : *
      {
         if(param4)
         {
            param2 /= 50;
            param3 /= 40;
         }
         this.grid[param3 * Constants.gridWidth + param2] = param1;
         if(param1 == 44 && param2 == this.player.X && param3 == this.player.Y)
         {
            touchedPlainTile = false;
         }
      }
      
      public function addObject(param1:Object) : *
      {
         this.objectData.push(param1);
      }
   }
}

