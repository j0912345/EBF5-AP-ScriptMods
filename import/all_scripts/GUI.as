package
{
   import fl.motion.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.geom.*;
   import flash.globalization.*;
   import flash.text.*;
   import text.*;
   
   public class GUI
   {
      public static var tooltip:MovieClip;
      
      public static var boldText:TextFormat;
      
      public static var nf:NumberFormatter;
      
      public static var globalTextFormat:TextFormat;
      
      public static var verdanaBold:TextFormat;
      
      public static var activeIcons:Array = [];
      
      public static var textFont:String = "Verdana";
      
      public static var textColor:int = 16777215;
      
      public static const RED_TINT:int = 16711680;
      
      public static const GREEN_TINT:int = 11599792;
      
      public static var textAnimation:String = "none";
      
      public static var NORMAL_FONT:String = "Verdana";
      
      public static var ROBOT_FONT:String = "standard 07_57";
      
      public static var STRONG_FONT:String = "Tahoma Bold";
      
      public static var SLIME_FONT:String = "Hobo Std Medium";
      
      public function GUI()
      {
         super();
      }
      
      public static function setDragIcon(param1:int) : *
      {
         clearDragIcon();
         Game.mapMenu.cursor = createIcon(Game.mapMenu,{"icon":param1},null,true,Icon.CURSOR);
         Game.mapMenu.setChildIndex(Game.mapMenu.cursor,Game.mapMenu.getChildIndex(Game.mapMenu.splash));
         Game.mapMenu.moveCursor();
      }
      
      public static function clearDragIcon() : *
      {
         if(!Game.mapMenu.cursor)
         {
            return;
         }
         Game.mapMenu.cursor.icon.gotoAndStop(1);
         Game.mapMenu.removeChild(Game.mapMenu.cursor);
         Game.mapMenu.cursor = null;
      }
      
      public static function redTint(param1:MovieClip, param2:Boolean = false) : *
      {
         var _loc3_:Color = null;
         var _loc4_:uint = 0;
         if(param2)
         {
            param1.transform.colorTransform = new ColorTransform();
         }
         else
         {
            if(Options.GUIskin != 4)
            {
               return;
            }
            param1.visible = true;
            _loc3_ = new Color();
            _loc4_ = 16711680;
            _loc3_.setTint(_loc4_,1);
            param1.transform.colorTransform = _loc3_;
         }
      }
      
      public static function setFilters(param1:DisplayObject) : *
      {
         var sprite:DisplayObject = param1;
         try
         {
            if(!Options.effects)
            {
               sprite.filters = [];
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function init() : *
      {
         boldText = new TextFormat();
         if(Options.language != Options.CHIN_SIMP && Options.language != Options.CHIN_TRAD && Options.language != Options.KOREAN && Options.language != Options.JAPANESE)
         {
            with(boldText)
            {
               
               bold = true;
            }
         }
         if(Options.language == Options.ENGLISH)
         {
            nf = new NumberFormatter("en-GB");
         }
         else
         {
            nf = new NumberFormatter(LocaleID.DEFAULT);
         }
         nf.fractionalDigits = 0;
      }
      
      public static function setTextEffects(param1:String = "Verdana", param2:int = 16777215, param3:String = "none") : *
      {
         textFont = param1;
         textColor = param2;
         textAnimation = param3;
      }
      
      public static function prepareTextFormat() : *
      {
         globalTextFormat = new TextFormat();
         verdanaBold = new TextFormat();
         verdanaBold.font = "Verdana Bold";
         verdanaBold.bold = true;
         boldText = new TextFormat();
         if(Options.language != Options.CHIN_SIMP && Options.language != Options.CHIN_TRAD && Options.language != Options.KOREAN && Options.language != Options.JAPANESE)
         {
            with(boldText)
            {
               
               bold = true;
            }
         }
         if(Options.language == Options.CHIN_SIMP || Options.language == Options.CHIN_TRAD)
         {
            globalTextFormat.font = "微软雅黑 Bold";
         }
         else if(Options.language == Options.KOREAN)
         {
            globalTextFormat.font = "맑은 고딕";
         }
         else if(Options.language == Options.JAPANESE)
         {
            globalTextFormat.font = "Meiryo UI Bold";
         }
      }
      
      public static function setFont(param1:TextField) : *
      {
         param1.setTextFormat(globalTextFormat);
      }
      
      public static function forceVerdana(param1:*) : *
      {
         if(Options.language != Options.VIETNAMESE && Options.language != Options.RUSSIAN || param1.getTextFormat() && param1.getTextFormat().font && param1.getTextFormat().font.substr(0,1) == "V")
         {
            return;
         }
         param1.setTextFormat(verdanaBold);
      }
      
      public static function setTextColor(param1:TextField, param2:int = -1) : *
      {
         var _loc3_:TextFormat = new TextFormat();
         if(param2 == -1)
         {
            _loc3_.color = [14018303,13350302,13350302,16777215][Options.GUIskin - 1];
         }
         else
         {
            _loc3_.color = param2;
         }
         param1.setTextFormat(_loc3_);
      }
      
      public static function setTextColorDark(param1:TextField) : *
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.color = [10799359,10718066,10718066,16777215][Options.GUIskin - 1];
         param1.setTextFormat(_loc2_);
      }
      
      public static function initText(param1:MovieClip, param2:String = "cancel", param3:int = 0) : *
      {
         SetStrings.translate(param1.t,param2,param3);
         setTextColor(param1.t);
      }
      
      public static function formatTime(param1:int = -1) : String
      {
         if(param1 == -1)
         {
            param1 = SaveData.playTime;
         }
         param1 /= 60;
         var _loc2_:int = param1 / 60;
         var _loc3_:int = param1 % 60;
         var _loc4_:String = "";
         var _loc5_:String = "";
         if(_loc2_ < 10)
         {
            _loc4_ = "0";
         }
         if(_loc3_ < 10)
         {
            _loc5_ = "0";
         }
         return "" + _loc4_ + _loc2_ + ":" + _loc5_ + _loc3_;
      }
      
      public static function createIcon(param1:MovieClip, param2:Object, param3:Function, param4:Boolean = true, param5:String = "skill", param6:int = 0, param7:int = 0, param8:int = 0, param9:int = -1, param10:int = 0, param11:Boolean = false, param12:int = -1) : Icon
      {
         var _loc13_:MovieClip = null;
         _loc13_ = new Icon(param2,!param4,param3,param5,param8,param9,param10,param11,param12);
         param1.addChild(_loc13_);
         _loc13_.x = param6;
         _loc13_.y = param7;
         return _loc13_;
      }
      
      public static function showTooltip(param1:MovieClip, param2:int, param3:int, param4:Object, param5:int = 1, param6:* = false) : *
      {
         removeTooltip();
         var _loc7_:MovieClip = new Tooltip();
         if(param6)
         {
            param1.parent.addChild(_loc7_);
         }
         else
         {
            param1.addChild(_loc7_);
         }
         _loc7_.mouseEnabled = false;
         _loc7_.mouseChildren = false;
         tooltip = _loc7_;
         _loc7_.x = param2;
         if(param6)
         {
            _loc7_.x += param1.x;
         }
         _loc7_.y = param3;
         if(param6)
         {
            _loc7_.y += param1.y;
         }
         _loc7_.goFrame = param5;
         _loc7_.data = param4;
      }
      
      public static function removeTooltip() : *
      {
         if(Boolean(tooltip) && Boolean(tooltip.parent))
         {
            tooltip.parent.removeChild(tooltip);
         }
      }
      
      public static function createIconMatrix(param1:Array, param2:int = 3, param3:int = 0, param4:int = 0, param5:int = 1, param6:int = 0) : void
      {
         activeIcons = activeIcons.concat(param1);
         var _loc7_:int = 0;
         while(_loc7_ < param1.length)
         {
            if(param1[_loc7_])
            {
               param1[_loc7_].x = param3 + (50 + param5) * (_loc7_ % param2);
               param1[_loc7_].y = param4 + (50 + param5 + param6) * Math.floor(_loc7_ / param2);
            }
            _loc7_++;
         }
      }
      
      public static function removeIcons(param1:int = 0) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < activeIcons.length)
         {
            if(Boolean(activeIcons[_loc2_]) && Boolean(activeIcons[_loc2_].parent) && (param1 == 0 || param1 == activeIcons[_loc2_].param))
            {
               activeIcons[_loc2_].parent.removeChild(activeIcons[_loc2_]);
            }
            _loc2_++;
         }
         if(param1 == 0)
         {
            activeIcons = [];
         }
      }
      
      public static function formatNumber(param1:Number) : String
      {
         return nf.formatNumber(param1);
      }
   }
}

