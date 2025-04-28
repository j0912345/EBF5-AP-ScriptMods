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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4913")]
   public dynamic class equipsMenu extends MovieClip
   {
      public var HP:TextField;
      
      public var HP2:TextField;
      
      public var HPi:MovieClip;
      
      public var accuracy:TextField;
      
      public var accuracy2:TextField;
      
      public var accuracyi:MovieClip;
      
      public var attack:TextField;
      
      public var attack2:TextField;
      
      public var attacki:MovieClip;
      
      public var bio:TextField;
      
      public var bioi:MovieClip;
      
      public var bomb:TextField;
      
      public var bombi:MovieClip;
      
      public var burn:TextField;
      
      public var burni:MovieClip;
      
      public var curr:TextField;
      
      public var curr2:TextField;
      
      public var curse:TextField;
      
      public var cursei:MovieClip;
      
      public var dark:TextField;
      
      public var darki:MovieClip;
      
      public var death:TextField;
      
      public var deathi:MovieClip;
      
      public var defence:TextField;
      
      public var defence2:TextField;
      
      public var defencei:MovieClip;
      
      public var dispel:TextField;
      
      public var dispeli:MovieClip;
      
      public var earth:TextField;
      
      public var earthi:MovieClip;
      
      public var elres:TextField;
      
      public var evade:TextField;
      
      public var evade2:TextField;
      
      public var evadei:MovieClip;
      
      public var f1:SimpleButton;
      
      public var f2:SimpleButton;
      
      public var f3:SimpleButton;
      
      public var f4:SimpleButton;
      
      public var f5:SimpleButton;
      
      public var f6:SimpleButton;
      
      public var fire:TextField;
      
      public var firei:MovieClip;
      
      public var freeze:TextField;
      
      public var freezei:MovieClip;
      
      public var holy:TextField;
      
      public var holyi:MovieClip;
      
      public var ice:TextField;
      
      public var icei:MovieClip;
      
      public var icon:MovieClip;
      
      public var level:TextField;
      
      public var loadb:SimpleButton;
      
      public var loadt:TextField;
      
      public var magicAttack:TextField;
      
      public var magicAttack2:TextField;
      
      public var magicAttacki:MovieClip;
      
      public var magicDefence:TextField;
      
      public var magicDefence2:TextField;
      
      public var magicDefencei:MovieClip;
      
      public var news:TextField;
      
      public var player:TextField;
      
      public var pointer:MovieClip;
      
      public var poison:TextField;
      
      public var poisoni:MovieClip;
      
      public var saveb:SimpleButton;
      
      public var savet:TextField;
      
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
      
      public var selectedPlayer:Player;
      
      public var offset:int;
      
      public var l:int;
      
      public var bigTooltip:int;
      
      public var m:MovieClip;
      
      public function equipsMenu()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function comparison() : *
      {
         var _loc1_:String = null;
         for each(_loc1_ in Stats.STATS)
         {
            this[_loc1_ + "2"].text = "+20";
            this[_loc1_ + "2"].setTextFormat(GUI.boldText);
         }
      }
      
      public function display(param1:Player) : *
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         this.selectedPlayer = param1;
         GUI.setTextColor(this.elres);
         GUI.setTextColor(this.stres);
         GUI.setTextColor(this.curr);
         this.icon.gotoAndStop(param1.playerNo + 1);
         Global.translate(this.player,"",10,SetStrings.getPlayerName(param1.playerNo - 1));
         Global.translate(this.level,"level",5," " + param1.level);
         this.player.setTextFormat(GUI.boldText);
         this.level.setTextFormat(GUI.boldText);
         for each(_loc2_ in Stats.STATS)
         {
            this[_loc2_].text = Math.floor(param1.getStat(_loc2_));
            this[_loc2_].setTextFormat(GUI.boldText);
            GUI.setTextColor(this[_loc2_]);
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
         GUI.setTextColor(this.level);
      }
      
      public function init() : *
      {
      }
      
      internal function frame1() : *
      {
         this.f1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.quickForge(selectedPlayer.weapon);
         });
         this.f2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.quickForge(selectedPlayer.hat);
         });
         this.f3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.quickForge(selectedPlayer.armor);
         });
         this.f4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.quickForge(selectedPlayer.flair1);
         });
         this.f5.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.quickForge(selectedPlayer.flair2);
         });
         this.f6.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.quickForge(selectedPlayer.flair3);
         });
         this.saveb.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openSetsMenu("save",selectedPlayer.playerNo);
         });
         this.loadb.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openSetsMenu("load",selectedPlayer.playerNo);
         });
         Global.translate(this.curr,"equips1",44);
         Global.translate(this.news,"equips2",44);
         Global.translate(this.curr2,"equips3",10);
         Global.translate(this.elres,"elementalResistance",25);
         Global.translate(this.stres,"statusResistance",25);
         Global.translate(this.loadt,"sets6",30);
         Global.translate(this.savet,"sets5",30);
         this.offset = 153;
         this.l = Options.language;
         this.HPi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,HPi.x + 285 + offset,HPi.y - 315,{"name":Stats.getString(Stats.HP)},6);
         };
         this.attacki.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,attacki.x + 285 + offset,attacki.y - 315,{"name":Stats.getString(Stats.ATTACK)},6);
         };
         this.magicAttacki.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,magicAttacki.x + 285 + offset,magicAttacki.y - 315,{"name":Stats.getString(Stats.MAGIC_ATTACK)},6);
         };
         this.defencei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,defencei.x + 285 + offset,defencei.y - 315,{"name":Stats.getString(Stats.DEFENCE)},6);
         };
         this.magicDefencei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,magicDefencei.x + 285 + offset,magicDefencei.y - 315,{"name":Stats.getString(Stats.MAGIC_DEFENCE)},6);
         };
         this.accuracyi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,accuracyi.x + 285 + offset,accuracyi.y - 315,{"name":Stats.getString(Stats.ACCURACY)},6);
         };
         this.evadei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,evadei.x + 285 + offset,evadei.y - 315,{"name":Stats.getString(Stats.EVADE)},6);
         };
         this.firei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,firei.x + 300 + offset,firei.y - 300,{"name":Element.getString(Element.FIRE)},6);
         };
         this.thunderi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,thunderi.x + 300 + offset,thunderi.y - 300,{"name":Element.getString(Element.THUNDER)},6);
         };
         this.icei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,icei.x + 300 + offset,icei.y - 300,{"name":Element.getString(Element.ICE)},6);
         };
         this.earthi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,earthi.x + 300 + offset,earthi.y - 300,{"name":Element.getString(Element.EARTH)},6);
         };
         this.bioi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,bioi.x + 300 + offset,bioi.y - 300,{"name":Element.getString(Element.BIO)},6);
         };
         this.bombi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,bombi.x + 300 + offset,bombi.y - 300,{"name":Element.getString(Element.BOMB)},6);
         };
         this.windi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,windi.x + 300 + offset,windi.y - 300,{"name":Element.getString(Element.WIND)},6);
         };
         this.wateri.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,wateri.x + 300 + offset,wateri.y - 300,{"name":Element.getString(Element.WATER)},6);
         };
         this.holyi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,holyi.x + 300 + offset,holyi.y - 300,{"name":Element.getString(Element.HOLY)},6);
         };
         this.darki.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,darki.x + 300 + offset,darki.y - 300,{"name":Element.getString(Element.DARK)},6);
         };
         this.bigTooltip = 6;
         if(Options.language != Options.ENGLISH)
         {
            this.bigTooltip = 36;
         }
         this.burni.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,burni.x + 300 + offset,burni.y - 300,{"name":Status.resistanceNames[0]},bigTooltip);
         };
         this.stuni.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,stuni.x + 300 + offset,stuni.y - 300,{"name":Status.resistanceNames[1]},bigTooltip);
         };
         this.freezei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,freezei.x + 300 + offset,freezei.y - 300,{"name":Status.resistanceNames[2]},bigTooltip);
         };
         this.poisoni.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,poisoni.x + 300 + offset,poisoni.y - 300,{"name":Status.resistanceNames[3]},bigTooltip);
         };
         this.syphoni.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,syphoni.x + 300 + offset,syphoni.y - 300,{"name":Status.resistanceNames[4]},bigTooltip);
         };
         this.cursei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,cursei.x + 300 + offset,cursei.y - 300,{"name":Status.resistanceNames[5]},bigTooltip);
         };
         this.staggeri.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,staggeri.x + 300 + offset,staggeri.y - 300,{"name":Status.resistanceNames[6]},bigTooltip);
         };
         this.weti.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,weti.x + 300 + offset,weti.y - 300,{"name":Status.resistanceNames[7]},bigTooltip);
         };
         this.weighti.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,weighti.x + 300 + offset,weighti.y - 300,{"name":Status.resistanceNames[8]},bigTooltip);
         };
         this.weaki.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,weaki.x + 300 + offset,weaki.y - 300,{"name":Status.resistanceNames[9]},bigTooltip);
         };
         this.dispeli.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,dispeli.x + 300 + offset,dispeli.y - 300,{"name":Status.resistanceNames[10]},bigTooltip);
         };
         this.deathi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,deathi.x + 300 + offset,deathi.y - 300,{"name":Status.resistanceNames[11]},bigTooltip);
         };
         for each(s in Stats.STATS)
         {
            this.m = this[s + "i"];
            this.m.buttonMode = true;
            this.m.useHandCursor = true;
            this.m.onRollOutHandler = function(param1:MouseEvent):*
            {
               GUI.removeTooltip();
            };
            this.m.addEventListener(MouseEvent.ROLL_OVER,this.m.onRollOverHandler);
            this.m.addEventListener(MouseEvent.ROLL_OUT,this.m.onRollOutHandler);
            this.m.mouseEnabled = true;
         }
         for each(e in Element.ELEMENTS)
         {
            this.m = this[e + "i"];
            this.m.buttonMode = true;
            this.m.useHandCursor = true;
            this.m.onRollOutHandler = function(param1:MouseEvent):*
            {
               GUI.removeTooltip();
            };
            this.m.addEventListener(MouseEvent.ROLL_OVER,this.m.onRollOverHandler);
            this.m.addEventListener(MouseEvent.ROLL_OUT,this.m.onRollOutHandler);
            this.m.mouseEnabled = true;
         }
         for each(e in Status.RESISTANCE)
         {
            this.m = this[e + "i"];
            this.m.buttonMode = true;
            this.m.useHandCursor = true;
            this.m.onRollOutHandler = function(param1:MouseEvent):*
            {
               GUI.removeTooltip();
            };
            this.m.addEventListener(MouseEvent.ROLL_OVER,this.m.onRollOverHandler);
            this.m.addEventListener(MouseEvent.ROLL_OUT,this.m.onRollOutHandler);
            this.m.mouseEnabled = true;
         }
      }
      
      internal function frame2() : *
      {
         stop();
         this.init();
      }
   }
}

