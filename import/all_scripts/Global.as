package
{
   import flash.display.MovieClip;
   import flash.text.*;
   import text.*;
   
   public class Global
   {
      public static var tempMC:MovieClip;
      
      public static var root:MovieClip;
      
      public static var circle:int = 1;
      
      public static var arrow:int = 1;
      
      public static var itemIcon:int = 1;
      
      public static var pos:int = 0;
      
      public static var monster:int = 1;
      
      public static var slime:Boolean = false;
      
      public static var drainFlag:Boolean = false;
      
      public static var pushedPlayer:int = 0;
      
      public static var counterEnabled:Boolean = true;
      
      public static var pauseHats:Boolean = false;
      
      public static var mazeCount:int = 0;
      
      public static var catchTip:Boolean = false;
      
      public static var bounce:int = 0;
      
      public static var textLength:int = 0;
      
      public static var oblivion:Boolean = false;
      
      public static var pumpkus:Boolean = false;
      
      public static var stealcount:int = 0;
      
      public static var resetBG1:Boolean = false;
      
      public static var resetBG2:Boolean = false;
      
      public static var bowwhack:Boolean = false;
      
      public static var tankSpawn:Boolean = false;
      
      public static var cyclopsSisDown:Boolean = false;
      
      public static var healmore:Boolean = false;
      
      public static var endlessBattleWave:int = 0;
      
      public static var endlessBattle:Boolean = false;
      
      public static var battleMode:Boolean = true;
      
      public static var hydras:int = 0;
      
      public static var skelCatDown:Boolean = false;
      
      public static var counter:Boolean = false;
      
      public static var battleEvent:int = 0;
      
      public static var noEXPmode:Boolean = false;
      
      public static var dirt:int = 1;
      
      public static var element:String = "none";
      
      public function Global()
      {
         super();
      }
      
      public static function translate(param1:TextField, param2:String, param3:int = 0, param4:String = "", param5:Boolean = false, param6:String = "", param7:Boolean = false, param8:Boolean = false) : *
      {
         textLength = SetStrings.translate(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function smartShrink(param1:*) : *
      {
         var _loc2_:TextFormat = new TextFormat();
         var _loc3_:int = int(param1.getTextFormat().size);
         while(param1.numLines > 1)
         {
            _loc3_--;
            _loc2_.size = _loc3_;
            param1.setTextFormat(_loc2_);
         }
      }
      
      public static function resize(param1:TextField, param2:int = 0) : *
      {
         SetStrings.resize(param1,param2);
      }
      
      public static function getSwordElement() : *
      {
         element = Players.player1.equips[0].element;
      }
      
      public static function getStaffElement() : *
      {
         element = Players.player2.equips[0].element;
      }
      
      public static function getGunElement() : *
      {
         element = Players.player3.equips[0].element;
      }
      
      public static function getBowElement() : *
      {
         element = Players.player4.equips[0].element;
      }
      
      public static function getCatElement() : *
      {
         element = Players.player5.equips[0].element;
      }
      
      public static function setRandomElement() : *
      {
         element = ["fire","ice","thunder","bio","water","wind","earth","bomb","holy","dark"][int(Math.random() * 10)];
      }
      
      public static function nestedAnimation(param1:MovieClip, param2:Boolean = false) : *
      {
         var _loc3_:MovieClip = null;
         if(!Options.idlePlayers)
         {
            param1.stop();
            return;
         }
         try
         {
            if(param2)
            {
               return;
            }
            if(!param1.parent)
            {
               return;
            }
            _loc3_ = param1.parent;
            while(!(_loc3_ is TargetMC) && Boolean(_loc3_.parent))
            {
               _loc3_ = _loc3_.parent;
            }
            if(_loc3_ is TargetMC && _loc3_.pauseNestedAnimations || _loc3_ is Emoticon)
            {
               param1.stop();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function playSound(param1:String) : *
      {
         SFX.playSound(param1);
      }
      
      public static function getWeaponColor() : *
      {
         if(Players.P1equips[0] == 1)
         {
            return 16777215;
         }
         if(Players.P1equips[0] == 2)
         {
            return 16764784;
         }
         if(Players.P1equips[0] == 3)
         {
            return 14408667;
         }
         if(Players.P1equips[0] == 4)
         {
            return 7786999;
         }
         if(Players.P1equips[0] == 5)
         {
            return 14408667;
         }
         if(Players.P1equips[0] == 6)
         {
            return 12375807;
         }
         if(Players.P1equips[0] == 7)
         {
            return 14408667;
         }
         if(Players.P1equips[0] == 8)
         {
            return 52509;
         }
         if(Players.P1equips[0] == 9)
         {
            return 16749891;
         }
         if(Players.P1equips[0] == 10)
         {
            return 14408667;
         }
         if(Players.P1equips[0] == 11)
         {
            return 13369344;
         }
         if(Players.P1equips[0] == 12)
         {
            return 6852520;
         }
         if(Players.P1equips[0] == 13)
         {
            return 13369344;
         }
         if(Players.P1equips[0] == 14)
         {
            return 6118749;
         }
         if(Players.P1equips[0] == 15)
         {
            return 16763392;
         }
         if(Players.P1equips[0] == 16)
         {
            return 13369344;
         }
         if(Players.P1equips[0] == 17)
         {
            return 16733184;
         }
         if(Players.P1equips[0] == 18)
         {
            return 16707252;
         }
         if(Players.P1equips[0] == 19)
         {
            return 11493729;
         }
         if(Players.P1equips[0] == 20)
         {
            return 16767975;
         }
         if(Players.P1equips[0] == 21)
         {
            return 15327683;
         }
      }
      
      public static function getElementColor() : *
      {
         if(element == "none")
         {
            return 14737632;
         }
         if(element == "fire")
         {
            return 16750848;
         }
         if(element == "ice")
         {
            return 14280959;
         }
         if(element == "thunder")
         {
            return 16774051;
         }
         if(element == "wind")
         {
            return 14286826;
         }
         if(element == "earth")
         {
            return 10454355;
         }
         if(element == "water")
         {
            return 5669375;
         }
         if(element == "bio")
         {
            return 5230653;
         }
         if(element == "bomb")
         {
            return 16769368;
         }
         if(element == "dark")
         {
            return 0;
         }
         if(element == "holy")
         {
            return 16777215;
         }
      }
   }
}

