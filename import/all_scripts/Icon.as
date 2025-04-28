package
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.TextField;
   import flash.utils.*;
   import text.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2263")]
   public class Icon extends MovieClip
   {
      public static var NONE:String = "none";
      
      public static var EQUIP:String = "equip";
      
      public static var ITEM:String = "item";
      
      public static var DROP:String = "drop";
      
      public static var TACTIC:String = "tactic";
      
      public static var SKILL:String = "skill";
      
      public static var SUMMON:String = "summon";
      
      public static var TREASURE:String = "treasure";
      
      public static var BUBBLE:String = "bubble";
      
      public static var CURSOR:String = "cursor";
      
      public static var FOE:String = "foe";
      
      public static var MEDAL:String = "medal";
      
      public static var QUEST:String = "quest";
      
      public static var CARD:String = "card";
      
      public static var text:String = "";
      
      public static var maxed:Boolean = false;
      
      public var icon:MovieClip;
      
      public var box:TextField;
      
      public var player:MovieClip;
      
      public var disabled:Boolean = false;
      
      public var data:Object;
      
      public var param:int;
      
      public var param2:int;
      
      public var tooltip:int = 0;
      
      public var number:String;
      
      public var mode:String = "skill";
      
      public var onClick:Function;
      
      public var tooltipLayer:Boolean = false;
      
      public var max:Boolean = false;
      
      public var foe:Class;
      
      public function Icon(param1:Object, param2:Boolean, param3:Function, param4:String, param5:int = 0, param6:int = -1, param7:int = 0, param8:Boolean = false, param9:int = -1)
      {
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:MovieClip = null;
         super();
         addFrameScript(1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6,6,this.frame7);
         this.data = param1;
         try
         {
            if(param1.cooldown)
            {
               param2 = true;
            }
         }
         catch(e:Error)
         {
         }
         if(param4 == FOE)
         {
            this.foe = param1;
            _loc10_ = Players.getAverageLevel();
            if(Global.battleMode)
            {
               _loc10_ = 0;
            }
            this.data = new param1(_loc10_);
            this.icon.gotoAndStop(2);
         }
         if(param4 != BUBBLE)
         {
            if(param4 == MEDAL)
            {
               if(!param1.unlocked)
               {
                  this.newIconHolder(26,120 - 2);
               }
               else
               {
                  this.newIconHolder(26,this.data.icon - 2);
               }
            }
            else if(param4 == QUEST)
            {
               this.icon.gotoAndStop(2);
               this.skinNPC();
            }
            else
            {
               _loc11_ = 1;
               if(Boolean(this.data) && Boolean(this.data.icon))
               {
                  _loc11_ = int(this.data.icon);
               }
               if(param4 != BUBBLE && param4 != CURSOR && param4 != FOE && param4 != QUEST)
               {
                  if(Weather.isGlitchy2() || Flags.GLITCHINESS_3.quantity && Game.mode != Game.BATTLE)
                  {
                     _loc11_ = 730;
                  }
               }
               if(_loc11_ == 6666)
               {
                  _loc12_ = this.newIconHolder(20,61 - 2);
               }
               else if(_loc11_ < 35)
               {
                  _loc12_ = this.newIconHolder(1,_loc11_ - 3);
               }
               else if(_loc11_ < 65)
               {
                  _loc12_ = this.newIconHolder(2,_loc11_ - 35);
               }
               else if(_loc11_ < 95)
               {
                  _loc12_ = this.newIconHolder(3,_loc11_ - 65);
               }
               else if(_loc11_ < 125)
               {
                  _loc12_ = this.newIconHolder(4,_loc11_ - 95);
               }
               else if(_loc11_ < 155)
               {
                  _loc12_ = this.newIconHolder(5,_loc11_ - 125);
               }
               else if(_loc11_ < 220)
               {
                  _loc12_ = this.newIconHolder(6,_loc11_ - 155);
               }
               else if(_loc11_ < 245)
               {
                  _loc12_ = this.newIconHolder(7,_loc11_ - 220);
               }
               else if(_loc11_ < 270)
               {
                  _loc12_ = this.newIconHolder(8,_loc11_ - 245);
               }
               else if(_loc11_ < 295)
               {
                  _loc12_ = this.newIconHolder(9,_loc11_ - 270);
               }
               else if(_loc11_ < 320)
               {
                  _loc12_ = this.newIconHolder(10,_loc11_ - 295);
               }
               else if(_loc11_ < 345)
               {
                  _loc12_ = this.newIconHolder(11,_loc11_ - 320);
               }
               else if(_loc11_ < 370)
               {
                  _loc12_ = this.newIconHolder(12,_loc11_ - 345);
               }
               else if(_loc11_ < 395)
               {
                  _loc12_ = this.newIconHolder(13,_loc11_ - 370);
               }
               else if(_loc11_ < 420)
               {
                  _loc12_ = this.newIconHolder(14,_loc11_ - 395);
               }
               else if(_loc11_ < 445)
               {
                  _loc12_ = this.newIconHolder(15,_loc11_ - 420);
               }
               else if(_loc11_ < 515)
               {
                  _loc12_ = this.newIconHolder(16,_loc11_ - 445);
               }
               else if(_loc11_ < 520)
               {
                  _loc12_ = this.newIconHolder(17,_loc11_ - 515);
               }
               else if(_loc11_ < 580)
               {
                  _loc12_ = this.newIconHolder(18,_loc11_ - 520);
               }
               else if(_loc11_ < 645)
               {
                  _loc12_ = this.newIconHolder(19,_loc11_ - 580);
               }
               else if(_loc11_ < 730)
               {
                  _loc12_ = this.newIconHolder(20,_loc11_ - 645);
               }
               else if(_loc11_ < 770)
               {
                  _loc12_ = this.newIconHolder(21,_loc11_ - 730);
               }
               else if(_loc11_ < 1000)
               {
                  _loc12_ = this.newIconHolder(27,_loc11_ - 949);
               }
               else if(_loc11_ < 1050)
               {
                  _loc12_ = this.newIconHolder(22,_loc11_ - 1000);
               }
               else if(_loc11_ < 1100)
               {
                  _loc12_ = this.newIconHolder(23,_loc11_ - 1050);
               }
               else if(_loc11_ < 1150)
               {
                  _loc12_ = this.newIconHolder(24,_loc11_ - 1100);
               }
               else if(_loc11_ < 1200)
               {
                  _loc12_ = this.newIconHolder(25,_loc11_ - 1150);
               }
               else if(_loc11_ < 1250)
               {
                  _loc12_ = this.newIconHolder(28,_loc11_ - 1200);
               }
            }
         }
         this.mode = param4;
         this.onClick = param3;
         this.param = param6;
         this.param2 = param9;
         this.tooltip = param7;
         this.tooltipLayer = param8;
         if(param4 == ITEM && param1.quantity != 1)
         {
            this.number = "" + param1.quantity;
         }
         if(param4 == SUMMON && param1.SP != 0)
         {
            this.number = "" + param1.SP;
         }
         if(param4 == EQUIP && param1 != Equips.empty)
         {
            this.number = SetStrings.getString("menus","lvl") + param1.level;
         }
         if(Boolean(param5) && param5 != 1)
         {
            this.number = param5;
         }
         if(text != "")
         {
            this.number = text;
         }
         if(param4 != NONE)
         {
            addEventListener(MouseEvent.ROLL_OVER,this.onRollOverHandler);
            addEventListener(MouseEvent.ROLL_OUT,this.onRollOutHandler);
            if(Boolean(param3))
            {
               addEventListener(MouseEvent.CLICK,this.onClickHandler);
            }
            if(Boolean(param3))
            {
               addEventListener(MouseEvent.MOUSE_DOWN,this.onPressHandler);
            }
            if(Boolean(param3))
            {
               addEventListener(MouseEvent.MOUSE_UP,this.onReleaseHandler);
            }
         }
         if(maxed)
         {
            this.max = true;
            maxed = false;
         }
         gotoAndStop(2);
         if(param4 != BUBBLE)
         {
            this.icon.stop();
         }
         this.disabled = param2;
         if(this.disabled)
         {
            gotoAndStop(5);
            try
            {
               if(param1.cooldown)
               {
                  this.number = param1.cooldown;
                  gotoAndStop(7);
               }
            }
            catch(e:Error)
            {
            }
         }
         if((!this.disabled && (param6 != 7 && param1 != Equips.empty) || param4 == EQUIP || param4 == SKILL && param6 == 1) && param4 != CURSOR)
         {
            buttonMode = true;
            useHandCursor = true;
         }
         if(param4 == CURSOR)
         {
            mouseEnabled = false;
            mouseChildren = false;
         }
         if(param4 != BUBBLE)
         {
            this.player.gotoAndStop(8);
         }
         if(param4 == NONE)
         {
            buttonMode = false;
         }
         if(param4 == MEDAL && Boolean(param1.aced))
         {
            this.player.gotoAndStop(13);
         }
      }
      
      public function skinNPC() : *
      {
         var _loc1_:MovieClip = null;
         _loc1_ = new NPCbody();
         this.icon.addChild(_loc1_);
         _loc1_.x -= 23;
         _loc1_.y -= 8;
         _loc1_.skin(this.data.skin,Maps.LEFT);
         _loc1_.stop();
      }
      
      public function newIconHolder(param1:int, param2:int) : MovieClip
      {
         var _loc3_:Class = getDefinitionByName("Icons" + param1) as Class;
         var _loc4_:MovieClip = new _loc3_();
         this.icon.addChild(_loc4_);
         _loc4_.gotoAndStop(param2 + 2);
      }
      
      internal function onRollOverHandler(param1:MouseEvent) : *
      {
         if(!this.disabled && (this.param != 7 && this.data != Equips.empty))
         {
            gotoAndStop(3);
         }
         if(this.mode == EQUIP && this.param == 9 && this.data != Equips.empty && Game.mode == Game.MAP)
         {
            parent.parent.showStats(this.data);
         }
         if(this.tooltip != 0 && this.data != Equips.empty)
         {
            GUI.showTooltip(parent,x + 25,y + 25,this.data,this.tooltip,this.tooltipLayer);
         }
         else if(this.mode == ITEM || this.mode == TACTIC || this.mode == CARD)
         {
            GUI.showTooltip(parent,x + 25,y + 25,this.data,7,this.tooltipLayer);
         }
         else if(this.mode == DROP)
         {
            GUI.showTooltip(parent,x + 25,y + 25,this.data,8,this.tooltipLayer);
         }
         else if(this.mode == SUMMON)
         {
            GUI.showTooltip(parent,x + 25,y + 25,this.data,47,this.tooltipLayer);
         }
         else if(this.data == Equips.empty)
         {
            GUI.showTooltip(parent,x + 25,y + 25,this.data,6,this.tooltipLayer);
         }
         else if(this.mode == SKILL && this.param == 7)
         {
            GUI.showTooltip(parent,x + 25,y + 25,this.data,15,this.tooltipLayer);
         }
         else if(this.mode == EQUIP)
         {
            GUI.showTooltip(parent,x + 25,y + 25,this.data,10,this.tooltipLayer);
         }
         else if(this.mode == FOE)
         {
            GUI.showTooltip(parent,x + 25,y + 30,this.data,18,this.tooltipLayer);
         }
         else if(this.mode == MEDAL && this.x < 400)
         {
            GUI.showTooltip(parent,x + 25,y + 30,this.data,13,this.tooltipLayer);
         }
         else if(this.mode == MEDAL)
         {
            GUI.showTooltip(parent,x + 25,y + 30,this.data,12,this.tooltipLayer);
         }
         else if(this.mode == QUEST)
         {
            if(x < 50)
            {
               GUI.showTooltip(parent,x + 25,y + 30,this.data,20,this.tooltipLayer);
            }
            else
            {
               GUI.showTooltip(parent,x + 25,y + 30,this.data,19,this.tooltipLayer);
            }
         }
         else if(this.mode == BUBBLE)
         {
            this.onClick(this.data);
         }
         else if(!(this.mode == SKILL && this.param == 1))
         {
            if(this.mode != CURSOR)
            {
               GUI.showTooltip(parent,x + 25,y + 25,this.data,21,this.tooltipLayer);
            }
         }
      }
      
      internal function onRollOutHandler(param1:MouseEvent) : *
      {
         if(!this.disabled)
         {
            gotoAndStop(2);
         }
         if(this.disabled)
         {
            gotoAndStop(5);
         }
         try
         {
            if(this.data.cooldown)
            {
               gotoAndStop(7);
            }
         }
         catch(e:Error)
         {
         }
         if(this.mode == EQUIP && this.param == 9 && parent && Game.mode == Game.MAP)
         {
            parent.parent.hideStats();
         }
         if(this.mode != BUBBLE)
         {
            GUI.removeTooltip();
         }
         else
         {
            Battle.menu.hideFoeStats();
         }
      }
      
      internal function onClickHandler(param1:MouseEvent) : *
      {
      }
      
      internal function onPressHandler(param1:MouseEvent) : *
      {
         if(!this.disabled && (this.param != 7 && this.data != Equips.empty))
         {
            gotoAndStop(4);
         }
         if(this.disabled && this.mode == EQUIP && this.param != 9)
         {
            gotoAndStop(6);
         }
         if(this.disabled && this.mode == SKILL && this.param == 1)
         {
            gotoAndStop(6);
         }
         if((!this.disabled || this.mode == EQUIP && (this.param != 9 && this.param != 22 && Game.mode == Game.MAP) || this.mode == SKILL && this.param == 1) && !(this.mode == SKILL && this.param == 7))
         {
            if(this.mode == EQUIP && this.param != -1 && Boolean(Battle.menu))
            {
               Battle.menu.equipPos = this.param;
            }
            else if(this.mode == EQUIP && this.param != -1 && this.param < 8)
            {
               Global.pos = this.param;
            }
            if(this.mode != BUBBLE && Boolean(this.onClick))
            {
               if(this.data is Equip || this.data is Summon || this.data is Foe || this.data is Spell)
               {
                  this.data.temp = this.param2;
               }
               this.onClick(this.data);
            }
         }
         try
         {
            if(this.data.cooldown)
            {
               gotoAndStop(7);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function onReleaseHandler(param1:MouseEvent) : *
      {
         if(!this.disabled && (this.param != 7 && this.data != Equips.empty))
         {
            gotoAndStop(3);
         }
         if(this.disabled)
         {
            gotoAndStop(5);
         }
         try
         {
            if(this.data.cooldown)
            {
               gotoAndStop(7);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame2() : *
      {
         if(Boolean(this.number) && (this.mode == EQUIP || this.mode == SKILL || this.mode == CARD))
         {
            Global.translate(this.box,"",0,this.number,false,"",false,true);
         }
         else if(this.number)
         {
            this.box.text = "" + this.number;
            Global.smartShrink(this.box);
         }
         if(this.box)
         {
            this.box.setTextFormat(GUI.boldText);
         }
         mouseChildren = false;
      }
      
      internal function frame3() : *
      {
         if(Boolean(this.number) && (this.mode == EQUIP || this.mode == SKILL || this.mode == CARD))
         {
            Global.translate(this.box,"",0,this.number,false,"",false,true);
         }
         else if(this.number)
         {
            this.box.text = "" + this.number;
            Global.smartShrink(this.box);
         }
         if(this.box)
         {
            this.box.setTextFormat(GUI.boldText);
         }
         mouseChildren = false;
      }
      
      internal function frame4() : *
      {
         if(Boolean(this.number) && (this.mode == EQUIP || this.mode == SKILL || this.mode == CARD))
         {
            Global.translate(this.box,"",0,this.number,false,"",false,true);
         }
         else if(this.number)
         {
            this.box.text = "" + this.number;
            Global.smartShrink(this.box);
         }
         if(this.box)
         {
            this.box.setTextFormat(GUI.boldText);
         }
         mouseChildren = false;
      }
      
      internal function frame5() : *
      {
         if(Boolean(this.number) && (this.mode == EQUIP || this.mode == SKILL || this.mode == CARD))
         {
            Global.translate(this.box,"",0,this.number,false,"",false,true);
         }
         else if(this.number)
         {
            this.box.text = "" + this.number;
            Global.smartShrink(this.box);
         }
         if(this.box)
         {
            this.box.setTextFormat(GUI.boldText);
         }
         mouseChildren = false;
      }
      
      internal function frame6() : *
      {
         if(Boolean(this.number) && (this.mode == EQUIP || this.mode == SKILL || this.mode == CARD))
         {
            Global.translate(this.box,"",0,this.number,false,"",false,true);
         }
         else if(this.number)
         {
            this.box.text = "" + this.number;
            Global.smartShrink(this.box);
         }
         if(this.box)
         {
            this.box.setTextFormat(GUI.boldText);
         }
         mouseChildren = false;
      }
      
      internal function frame7() : *
      {
         if(Boolean(this.number) && (this.mode == EQUIP || this.mode == SKILL || this.mode == CARD))
         {
            Global.translate(this.box,"",0,this.number,false,"",false,true);
         }
         else if(this.number)
         {
            this.box.text = "" + this.number;
            Global.smartShrink(this.box);
         }
         if(this.box)
         {
            this.box.setTextFormat(GUI.boldText);
         }
         mouseChildren = false;
      }
   }
}

