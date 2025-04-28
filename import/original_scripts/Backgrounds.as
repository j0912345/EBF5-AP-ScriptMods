package
{
   import flash.display.MovieClip;
   import flash.utils.*;
   
   public class Backgrounds
   {
      public static var theBackground:MovieClip;
      
      public static var defaultBackground:int = 1;
      
      public static var dirt:int = 1;
      
      public static var tempBackground:int = 1;
      
      public static const JUNGLE:int = 1;
      
      public static const JUNGLE_ROAD:int = 2;
      
      public static const JUNGLE_PIER:int = 3;
      
      public static const DESERT:int = 4;
      
      public static const DESERT_BOSS:int = 5;
      
      public static const DESERT_CAVE:int = 6;
      
      public static const GALLERY_GARDEN:int = 7;
      
      public static const GALLERY:int = 8;
      
      public static const GALLERY_BASEMENT:int = 9;
      
      public static const GALLERY_GOLD:int = 10;
      
      public static const ICE_CAVE:int = 11;
      
      public static const FIRE_CAVE:int = 12;
      
      public static const LAVA_LAKE:int = 13;
      
      public static const WASTELAND:int = 14;
      
      public static const FORTRESS_WALL:int = 15;
      
      public static const FORTRESS_:int = 16;
      
      public static const FORTRESS_HALL:int = 17;
      
      public static const FORTRESS_PRISONS:int = 18;
      
      public static const MINESHAFT:int = 19;
      
      public static const MINESHAFT_BOSS:int = 20;
      
      public static const GREENWOOD_VILLAGE:int = 21;
      
      public static const GREEN_WOODS:int = 22;
      
      public static const GREEN_WOODS_BOSS:int = 23;
      
      public static const BAMBOO:int = 24;
      
      public static const GREEN_CANOPY:int = 25;
      
      public static const ORANGE_CANOPY:int = 26;
      
      public static const SWAMP:int = 27;
      
      public static const ORANGE_WOODS:int = 28;
      
      public static const TREE_INTERIOR:int = 29;
      
      public static const ZOMBIE_CAVE:int = 30;
      
      public static const ZOMBIE_PIER:int = 31;
      
      public static const ZOMBIE_BOSS:int = 32;
      
      public static const PINK_ISLAND:int = 33;
      
      public static const PINE_PIER:int = 34;
      
      public static const ICE_PIER:int = 35;
      
      public static const JUNGLE_HEIGHTS:int = 36;
      
      public static const JUNGLE_CLIFFS:int = 37;
      
      public static const VALLEY:int = 38;
      
      public static const VALLEY_BOSS:int = 39;
      
      public static const SNOW:int = 40;
      
      public static const SNOW_TEMPLE:int = 41;
      
      public static const REDPINE_TOWN:int = 42;
      
      public static const GRAVEYARD:int = 43;
      
      public static const CRYSTAL_CAVERNS:int = 44;
      
      public static const LAVA_CRYSTALS:int = 45;
      
      public static const ICE_TEMPLE:int = 46;
      
      public static const RAPTURE:int = 47;
      
      public static const RAPTURE_BONES:int = 48;
      
      public static const RAPTURE_CAVE:int = 49;
      
      public static const RAPTURE_FIRE:int = 50;
      
      public static const RAPTURE_WATER:int = 51;
      
      public static const RAPTURE_SPACE:int = 52;
      
      public static const FINAL_BOSS:int = 53;
      
      public static const FINAL_BOSS_2:int = 54;
      
      public static const DARK_BASEMENT_1:int = 55;
      
      public static const DARK_BASEMENT_2:int = 56;
      
      public static const DARK_BASEMENT_3A:int = 57;
      
      public static const DARK_BASEMENT_3B:int = 58;
      
      public static const UNDERTALE:int = 59;
      
      public static const GLITCH_REDPINE:int = 60;
      
      public static const GLITCH_WOODS:int = 61;
      
      public static const GLITCH_BRIDGE:int = 62;
      
      public static const GLITCH_ISLAND:int = 63;
      
      public static const GLITCH_BOSS:int = 64;
      
      public static const TEMPLE_OF_RUIN:int = 65;
      
      public static const SUPER_NOLEGS:int = 66;
      
      public static const BATTLE_ARENA:int = 67;
      
      public static const NEW_ISLANDS:int = 68;
      
      public static const LIBRARY:int = 69;
      
      public static const EBF1_SLIMES:int = 70;
      
      public static const EBF1_BEHOLDER:int = 71;
      
      public static const EBF2_GOLEM:int = 72;
      
      public static const EBF2_SANDWORM:int = 73;
      
      public static const EBF3_JACK:int = 74;
      
      public static const EBF3_PROTECTOR:int = 75;
      
      public static const EBF4_RAFFLESIA:int = 76;
      
      public static const EBF4_PRAETORIAN:int = 77;
      
      public static const BOSH:int = 78;
      
      public static const SNEK:int = 79;
      
      public static const GLOB:int = 80;
      
      public static const ROBO:int = 81;
      
      public static const CHAIR:int = 82;
      
      public static const TREAGURE:int = 83;
      
      public static const GUOYE:int = 84;
      
      public static const MAW:int = 85;
      
      public static const PUMPKUS:int = 86;
      
      public static const PHOENIX:int = 87;
      
      public static const TOTOM:int = 88;
      
      public static const MERMAID:int = 89;
      
      public static const PAPER:int = 90;
      
      public function Backgrounds()
      {
         super();
      }
      
      public static function createBackground(param1:int, param2:Boolean = false) : *
      {
         var _loc3_:Class = getDefinitionByName("BG" + param1);
         var _loc4_:MovieClip = new _loc3_();
         _loc4_.x = 500;
         _loc4_.y = 280;
         theBackground = _loc4_;
         defaultBackground = param1;
         if(!param2)
         {
            tempBackground = param1;
         }
         Battle.stage.addChild(_loc4_);
         Battle.stage.background = _loc4_;
         Battle.stage.setChildIndex(Battle.stage.background,0);
         dirt = 1;
         if(param1 == 76 || param1 == 70 || param1 == 71 || param1 == 1 || param1 == 2 || param1 == 6 || param1 == 14 || param1 == 15 || param1 == 21 || param1 == 22 || param1 == 23 || param1 == 24 || param1 == 28 || param1 == 30 || param1 == 33 || param1 == 37 || param1 == 42 || param1 == 43 || param1 == 44 || param1 == 49 || param1 == 60 || param1 == 61 || param1 == 62 || param1 == 68)
         {
            dirt = 1;
         }
         if(param1 == 4 || param1 == 74 || param1 == 75 || param1 == 5 || param1 == 36)
         {
            dirt = 2;
         }
         if(param1 == 7 || param1 == 73 || param1 == 17 || param1 == 18 || param1 == 19 || param1 == 20 || param1 == 32 || param1 == 38 || param1 == 39 || param1 == 63)
         {
            dirt = 3;
         }
         if(param1 == 13 || param1 == 45)
         {
            dirt = 4;
         }
         if(param1 == 77 || param1 == 12 || param1 == 47 || param1 == 48 || param1 == 51 || param1 == 52 || param1 == 53 || param1 == 65 || param1 == 66 || param1 == 50)
         {
            dirt = 5;
         }
         if(param1 == 40 || param1 == 41)
         {
            dirt = 6;
         }
         if(param1 == 9 || param1 == 16)
         {
            dirt = 7;
         }
         if(param1 == 11 || param1 == 46 || param1 == 72)
         {
            dirt = 8;
         }
         if(param1 == 3 || param1 == 8 || param1 == 25 || param1 == 29 || param1 == 34 || param1 == 35 || param1 == 10 || param1 == 67 || param1 == 69)
         {
            dirt = 9;
         }
         if(param1 == 26 || param1 == 27 || param1 == 31 || param1 == 55 || param1 == 56)
         {
            dirt = 10;
         }
         if(param1 == 54 || param1 == 59 || param1 == 64 || param1 >= 78)
         {
            dirt = 11;
         }
         if(param1 == 90)
         {
            dirt = 12;
         }
      }
      
      public static function changeBackground(param1:int, param2:Boolean = false) : *
      {
         if(tempBackground == param1)
         {
            return;
         }
         if(tempBackground == PAPER)
         {
            return;
         }
         Battle.stage.removeChild(Battle.stage.background);
         Battle.stage.background = null;
         createBackground(param1,true);
         if(param2)
         {
            tempBackground = param1;
         }
         if(param1 == 54)
         {
            tempBackground = param1;
         }
      }
      
      public static function resetBackground() : *
      {
         if(tempBackground == PAPER)
         {
            return;
         }
         Battle.stage.removeChild(Battle.stage.background);
         Battle.stage.background = null;
         createBackground(tempBackground);
      }
   }
}

