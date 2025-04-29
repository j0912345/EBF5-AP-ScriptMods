package
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4856")]
   public dynamic class statsMenu extends MovieClip
   {
      public var HP:TextField;
      
      public var HPf:TextField;
      
      public var HPi:MovieClip;
      
      public var accuracy:TextField;
      
      public var accuracyf:TextField;
      
      public var accuracyi:MovieClip;
      
      public var ap:TextField;
      
      public var apt:TextField;
      
      public var attack:TextField;
      
      public var attackf:TextField;
      
      public var attacki:MovieClip;
      
      public var bast:TextField;
      
      public var bio:TextField;
      
      public var bioi:MovieClip;
      
      public var bomb:TextField;
      
      public var bombi:MovieClip;
      
      public var burn:TextField;
      
      public var burni:MovieClip;
      
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
      
      public var elres:TextField;
      
      public var evade:TextField;
      
      public var evadef:TextField;
      
      public var evadei:MovieClip;
      
      public var expBar:MovieClip;
      
      public var expt:TextField;
      
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
      
      public var pointer:MovieClip;
      
      public var poison:TextField;
      
      public var poisoni:MovieClip;
      
      public var stagger:TextField;
      
      public var staggeri:MovieClip;
      
      public var stres:TextField;
      
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
      
      public var bigTooltip:int;
      
      public function statsMenu()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function display(param1:Player) : *
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         GUI.setTextColor(this.bast);
         GUI.setTextColor(this.elres);
         GUI.setTextColor(this.stres);
         GUI.setTextColorDark(this.formula);
         this.icon.gotoAndStop(param1.playerNo + 1);
         Global.translate(this.player,"",10,SetStrings.getPlayerName(param1.playerNo - 1));
         Global.translate(this.level,"level",5," " + param1.level);
         this.player.setTextFormat(GUI.boldText);
         this.ap.text = GUI.formatNumber(param1.AP);
         this.expBar.gotoAndStop(param1.getExpPercent());
         for each(_loc2_ in Stats.STATS)
         {
            this[_loc2_].text = GUI.formatNumber(Math.floor(param1.getStat(_loc2_)));
            this[_loc2_].setTextFormat(GUI.boldText);
            this[_loc2_ + "f"].text = "" + Math.floor(param1[_loc2_] * (param1.bonus[_loc2_] / 100) * 10) / 10 + " x " + param1.getEquipsStat(_loc2_);
            this[_loc2_ + "f"].setTextFormat(GUI.boldText);
            GUI.setTextColor(this[_loc2_]);
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
               this[_loc3_ + "i"].alpha = 0.2;
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
               this[_loc3_ + "i"].alpha = 0.2;
               this[_loc3_].text = "";
            }
            this[_loc3_].mouseEnabled = false;
         }
         GUI.setTextColor(this.level);
         GUI.setTextColor(this.ap);
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
         Global.translate(this.bast,"stats1",40);
         Global.translate(this.elres,"elementalResistance",20);
         Global.translate(this.stres,"statusResistance",20);
         Global.translate(this.formula,"statFormulaShort",50);
         Global.translate(this.apt,"AP",0,":");
         Global.translate(this.expt,"EXP",25,":");
         this.HPi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,HPi.x + 285,HPi.y - 315,{"name":Stats.getString(Stats.HP)},6);
         };
         this.attacki.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,attacki.x + 285,attacki.y - 315,{"name":Stats.getString(Stats.ATTACK)},6);
         };
         this.magicAttacki.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,magicAttacki.x + 285,magicAttacki.y - 315,{"name":Stats.getString(Stats.MAGIC_ATTACK)},6);
         };
         this.defencei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,defencei.x + 285,defencei.y - 315,{"name":Stats.getString(Stats.DEFENCE)},6);
         };
         this.magicDefencei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,magicDefencei.x + 285,magicDefencei.y - 315,{"name":Stats.getString(Stats.MAGIC_DEFENCE)},6);
         };
         this.accuracyi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,accuracyi.x + 285,accuracyi.y - 315,{"name":Stats.getString(Stats.ACCURACY)},6);
         };
         this.evadei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,evadei.x + 285,evadei.y - 315,{"name":Stats.getString(Stats.EVADE)},6);
         };
         this.firei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,firei.x + 300,firei.y - 300,{"name":Element.getString(Element.FIRE)},6);
         };
         this.thunderi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,thunderi.x + 300,thunderi.y - 300,{"name":Element.getString(Element.THUNDER)},6);
         };
         this.icei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,icei.x + 300,icei.y - 300,{"name":Element.getString(Element.ICE)},6);
         };
         this.earthi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,earthi.x + 300,earthi.y - 300,{"name":Element.getString(Element.EARTH)},6);
         };
         this.bioi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,bioi.x + 300,bioi.y - 300,{"name":Element.getString(Element.BIO)},6);
         };
         this.bombi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,bombi.x + 300,bombi.y - 300,{"name":Element.getString(Element.BOMB)},6);
         };
         this.windi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,windi.x + 300,windi.y - 300,{"name":Element.getString(Element.WIND)},6);
         };
         this.wateri.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,wateri.x + 300,wateri.y - 300,{"name":Element.getString(Element.WATER)},6);
         };
         this.holyi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,holyi.x + 300,holyi.y - 300,{"name":Element.getString(Element.HOLY)},6);
         };
         this.darki.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,darki.x + 300,darki.y - 300,{"name":Element.getString(Element.DARK)},6);
         };
         this.bigTooltip = 6;
         if(Options.language != Options.ENGLISH)
         {
            this.bigTooltip = 36;
         }
         this.burni.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,burni.x + 300,burni.y - 300,{"name":Status.resistanceNames[0]},bigTooltip);
         };
         this.stuni.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,stuni.x + 300,stuni.y - 300,{"name":Status.resistanceNames[1]},bigTooltip);
         };
         this.freezei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,freezei.x + 300,freezei.y - 300,{"name":Status.resistanceNames[2]},bigTooltip);
         };
         this.poisoni.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,poisoni.x + 300,poisoni.y - 300,{"name":Status.resistanceNames[3]},bigTooltip);
         };
         this.syphoni.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,syphoni.x + 300,syphoni.y - 300,{"name":Status.resistanceNames[4]},bigTooltip);
         };
         this.cursei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,cursei.x + 300,cursei.y - 300,{"name":Status.resistanceNames[5]},bigTooltip);
         };
         this.staggeri.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,staggeri.x + 300,staggeri.y - 300,{"name":Status.resistanceNames[6]},bigTooltip);
         };
         this.weti.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,weti.x + 300,weti.y - 300,{"name":Status.resistanceNames[7]},bigTooltip);
         };
         this.weighti.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,weighti.x + 300,weighti.y - 300,{"name":Status.resistanceNames[8]},bigTooltip);
         };
         this.weaki.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,weaki.x + 300,weaki.y - 300,{"name":Status.resistanceNames[9]},bigTooltip);
         };
         this.dispeli.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,dispeli.x + 300,dispeli.y - 300,{"name":Status.resistanceNames[10]},bigTooltip);
         };
         this.deathi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,deathi.x + 300,deathi.y - 300,{"name":Status.resistanceNames[11]},bigTooltip);
         };
      }
      
      internal function frame2() : *
      {
         this.init();
         stop();
      }
   }
}

