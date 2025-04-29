package EpicBattleFantasy5_fla
{
   import flash.accessibility.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   import text.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12890")]
   public dynamic class fullstatsdisplay_5215 extends MovieClip
   {
      public var HP:TextField;
      
      public var HPf:TextField;
      
      public var HPi:MovieClip;
      
      public var MP:TextField;
      
      public var MPf:TextField;
      
      public var MPi:MovieClip;
      
      public var accuracy:TextField;
      
      public var accuracyf:TextField;
      
      public var accuracyi:MovieClip;
      
      public var attack:TextField;
      
      public var attackf:TextField;
      
      public var attacki:MovieClip;
      
      public var bio:TextField;
      
      public var bioi:MovieClip;
      
      public var bomb:TextField;
      
      public var bombi:MovieClip;
      
      public var burn:TextField;
      
      public var burni:MovieClip;
      
      public var cancel:SimpleButton;
      
      public var curse:TextField;
      
      public var cursei:MovieClip;
      
      public var dark:TextField;
      
      public var darki:MovieClip;
      
      public var death:TextField;
      
      public var deathi:MovieClip;
      
      public var defence:TextField;
      
      public var defencef:TextField;
      
      public var defencei:MovieClip;
      
      public var dispel:TextField;
      
      public var dispeli:MovieClip;
      
      public var earth:TextField;
      
      public var earthi:MovieClip;
      
      public var evade:TextField;
      
      public var evadef:TextField;
      
      public var evadei:MovieClip;
      
      public var fader:MovieClip;
      
      public var fire:TextField;
      
      public var firei:MovieClip;
      
      public var formula:TextField;
      
      public var freeze:TextField;
      
      public var freezei:MovieClip;
      
      public var holy:TextField;
      
      public var holyi:MovieClip;
      
      public var ice:TextField;
      
      public var icei:MovieClip;
      
      public var icon:MovieClip;
      
      public var level:TextField;
      
      public var magicAttack:TextField;
      
      public var magicAttackf:TextField;
      
      public var magicAttacki:MovieClip;
      
      public var magicDefence:TextField;
      
      public var magicDefencef:TextField;
      
      public var magicDefencei:MovieClip;
      
      public var player:TextField;
      
      public var poison:TextField;
      
      public var poisoni:MovieClip;
      
      public var stagger:TextField;
      
      public var staggeri:MovieClip;
      
      public var stun:TextField;
      
      public var stuni:MovieClip;
      
      public var syphon:TextField;
      
      public var syphoni:MovieClip;
      
      public var thunder:TextField;
      
      public var thunderi:MovieClip;
      
      public var water:TextField;
      
      public var wateri:MovieClip;
      
      public var weak:TextField;
      
      public var weaki:MovieClip;
      
      public var weight:TextField;
      
      public var weighti:MovieClip;
      
      public var wet:TextField;
      
      public var weti:MovieClip;
      
      public var wind:TextField;
      
      public var windi:MovieClip;
      
      public var window:MovieClip;
      
      public var bigTooltip:int;
      
      public function fullstatsdisplay_5215()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function display(param1:Player) : *
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         gotoAndStop(3);
         gotoAndStop(2);
         this.icon.update(param1.playerNo);
         Global.translate(this.player,"",10,SetStrings.getPlayerName(param1.playerNo - 1));
         Global.translate(this.level,"level",5," " + param1.level);
         this.player.setTextFormat(GUI.boldText);
         this.level.setTextFormat(GUI.boldText);
         GUI.setTextColor(this.level);
         for each(_loc2_ in Stats.STATS)
         {
            this[_loc2_].text = Math.floor(param1.getStat(_loc2_));
            this[_loc2_].setTextFormat(GUI.boldText);
            GUI.setTextColor(this[_loc2_]);
            this[_loc2_ + "f"].text = "" + Math.floor(param1[_loc2_] * (param1.bonus[_loc2_] / 100) * 10 / 10) + " x " + param1.getEquipsStat(_loc2_) + " x " + param1.buffs[_loc2_] / 100;
            this[_loc2_ + "f"].setTextFormat(GUI.boldText);
            GUI.setTextColorDark(this[_loc2_ + "f"]);
         }
         for each(_loc3_ in Element.ELEMENTS)
         {
            if(param1.getResistance("elemental",_loc3_) != 1)
            {
               this[_loc3_ + "i"].alpha = 1;
               this[_loc3_].text = "" + Math.round(100 - param1.getResistance("elemental",_loc3_) * 100) + "%";
               this[_loc3_].setTextFormat(GUI.boldText);
               this[_loc3_].textColor = 16777215;
               if(param1.getResistance("elemental",_loc3_) > 1)
               {
                  this[_loc3_].textColor = 16711680;
               }
               if(param1.getResistance("elemental",_loc3_) < 0)
               {
                  this[_loc3_].textColor = 3407616;
               }
            }
            else
            {
               this[_loc3_ + "i"].alpha = 0.3;
               this[_loc3_].text = "";
            }
            this[_loc3_].mouseEnabled = false;
         }
         for each(_loc3_ in Status.RESISTANCE)
         {
            if(param1.getResistance("status",_loc3_) != 1)
            {
               this[_loc3_ + "i"].alpha = 1;
               this[_loc3_].text = "" + Math.round(100 - param1.getResistance("status",_loc3_) * 100) + "%";
               this[_loc3_].setTextFormat(GUI.boldText);
               this[_loc3_].textColor = 16777215;
               if(param1.getResistance("status",_loc3_) > 1)
               {
                  this[_loc3_].textColor = 16711680;
               }
            }
            else
            {
               this[_loc3_ + "i"].alpha = 0.3;
               this[_loc3_].text = "";
            }
            this[_loc3_].mouseEnabled = false;
         }
      }
      
      public function init() : *
      {
         var m:MovieClip = null;
         for each(s in Stats.STATS)
         {
            m = this[s + "i"];
            m.buttonMode = true;
            m.useHandCursor = true;
            m.onRollOutHandler = function(param1:MouseEvent):*
            {
               GUI.removeTooltip();
            };
            m.addEventListener(MouseEvent.ROLL_OVER,m.onRollOverHandler);
            m.addEventListener(MouseEvent.ROLL_OUT,m.onRollOutHandler);
            m.mouseEnabled = true;
         }
         for each(e in Element.ELEMENTS)
         {
            m = this[e + "i"];
            m.buttonMode = true;
            m.useHandCursor = true;
            m.onRollOutHandler = function(param1:MouseEvent):*
            {
               GUI.removeTooltip();
            };
            m.addEventListener(MouseEvent.ROLL_OVER,m.onRollOverHandler);
            m.addEventListener(MouseEvent.ROLL_OUT,m.onRollOutHandler);
            m.mouseEnabled = true;
         }
         for each(e in Status.RESISTANCE)
         {
            m = this[e + "i"];
            m.buttonMode = true;
            m.useHandCursor = true;
            m.onRollOutHandler = function(param1:MouseEvent):*
            {
               GUI.removeTooltip();
            };
            m.addEventListener(MouseEvent.ROLL_OVER,m.onRollOverHandler);
            m.addEventListener(MouseEvent.ROLL_OUT,m.onRollOutHandler);
            m.mouseEnabled = true;
         }
      }
      
      internal function frame1() : *
      {
         this.cancel.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):*
         {
            visible = false;
         });
         visible = false;
         Global.translate(this.formula,"statFormula",20);
         this.HPi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,HPi.x,HPi.y + 100,{"name":Stats.getString(Stats.HP)},6);
         };
         this.MPi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,MPi.x,MPi.y + 100,{"name":Stats.getString(Stats.MP)},6);
         };
         this.attacki.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,attacki.x,attacki.y + 100,{"name":Stats.getString(Stats.ATTACK)},6);
         };
         this.magicAttacki.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,magicAttacki.x,magicAttacki.y + 100,{"name":Stats.getString(Stats.MAGIC_ATTACK)},6);
         };
         this.defencei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,defencei.x,defencei.y + 100,{"name":Stats.getString(Stats.DEFENCE)},6);
         };
         this.magicDefencei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,magicDefencei.x,magicDefencei.y + 100,{"name":Stats.getString(Stats.MAGIC_DEFENCE)},6);
         };
         this.accuracyi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,accuracyi.x,accuracyi.y + 100,{"name":Stats.getString(Stats.ACCURACY)},6);
         };
         this.evadei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,evadei.x,evadei.y + 100,{"name":Stats.getString(Stats.EVADE)},6);
         };
         this.firei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,firei.x + 15,firei.y + 120,{"name":Element.getString(Element.FIRE)},6);
         };
         this.thunderi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,thunderi.x + 15,thunderi.y + 120,{"name":Element.getString(Element.THUNDER)},6);
         };
         this.icei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,icei.x + 15,icei.y + 120,{"name":Element.getString(Element.ICE)},6);
         };
         this.earthi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,earthi.x + 15,earthi.y + 120,{"name":Element.getString(Element.EARTH)},6);
         };
         this.bioi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,bioi.x + 15,bioi.y + 120,{"name":Element.getString(Element.BIO)},6);
         };
         this.bombi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,bombi.x + 15,bombi.y + 120,{"name":Element.getString(Element.BOMB)},6);
         };
         this.windi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,windi.x + 15,windi.y + 120,{"name":Element.getString(Element.WIND)},6);
         };
         this.wateri.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,wateri.x + 15,wateri.y + 120,{"name":Element.getString(Element.WATER)},6);
         };
         this.holyi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,holyi.x + 15,holyi.y + 120,{"name":Element.getString(Element.HOLY)},6);
         };
         this.darki.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,darki.x + 15,darki.y + 120,{"name":Element.getString(Element.DARK)},6);
         };
         this.bigTooltip = 6;
         if(Options.language != Options.ENGLISH)
         {
            this.bigTooltip = 36;
         }
         this.burni.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,burni.x + 15,burni.y + 120,{"name":Status.resistanceNames[0]},bigTooltip);
         };
         this.stuni.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,stuni.x + 15,stuni.y + 120,{"name":Status.resistanceNames[1]},bigTooltip);
         };
         this.freezei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,freezei.x + 15,freezei.y + 120,{"name":Status.resistanceNames[2]},bigTooltip);
         };
         this.poisoni.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,poisoni.x + 15,poisoni.y + 120,{"name":Status.resistanceNames[3]},bigTooltip);
         };
         this.syphoni.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,syphoni.x + 15,syphoni.y + 120,{"name":Status.resistanceNames[4]},bigTooltip);
         };
         this.cursei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,cursei.x + 15,cursei.y + 120,{"name":Status.resistanceNames[5]},bigTooltip);
         };
         this.staggeri.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,staggeri.x + 15,staggeri.y + 120,{"name":Status.resistanceNames[6]},bigTooltip);
         };
         this.weti.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,weti.x + 15,weti.y + 120,{"name":Status.resistanceNames[7]},bigTooltip);
         };
         this.weighti.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,weighti.x + 15,weighti.y + 120,{"name":Status.resistanceNames[8]},bigTooltip);
         };
         this.weaki.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,weaki.x + 15,weaki.y + 120,{"name":Status.resistanceNames[9]},bigTooltip);
         };
         this.dispeli.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,dispeli.x + 15,dispeli.y + 120,{"name":Status.resistanceNames[10]},bigTooltip);
         };
         this.deathi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,deathi.x + 15,deathi.y + 120,{"name":Status.resistanceNames[11]},bigTooltip);
         };
      }
      
      internal function frame2() : *
      {
         stop();
         this.init();
      }
   }
}

