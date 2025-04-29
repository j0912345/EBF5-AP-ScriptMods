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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4579")]
   public dynamic class foestatdisplay2bestiary_6820 extends MovieClip
   {
      public var HP:TextField;
      
      public var HPi:MovieClip;
      
      public var accuracy2:TextField;
      
      public var accuracy2i:MovieClip;
      
      public var attack2:TextField;
      
      public var attack2i:MovieClip;
      
      public var bast:TextField;
      
      public var bio:TextField;
      
      public var bioi:MovieClip;
      
      public var body:TextField;
      
      public var bomb:TextField;
      
      public var bombi:MovieClip;
      
      public var burn:TextField;
      
      public var burni:MovieClip;
      
      public var button1:SimpleButton;
      
      public var button2:SimpleButton;
      
      public var button3:SimpleButton;
      
      public var chance:TextField;
      
      public var curse:TextField;
      
      public var cursei:MovieClip;
      
      public var dark:TextField;
      
      public var darki:MovieClip;
      
      public var death:TextField;
      
      public var deathi:MovieClip;
      
      public var defence:TextField;
      
      public var defence2:TextField;
      
      public var defence2i:MovieClip;
      
      public var defencei:MovieClip;
      
      public var deres:TextField;
      
      public var dispel:TextField;
      
      public var dispeli:MovieClip;
      
      public var earth:TextField;
      
      public var earthi:MovieClip;
      
      public var elres:TextField;
      
      public var evade:TextField;
      
      public var evade2:TextField;
      
      public var evade2i:MovieClip;
      
      public var evadei:MovieClip;
      
      public var fire:TextField;
      
      public var firei:MovieClip;
      
      public var foe:TextField;
      
      public var foeMask:MovieClip;
      
      public var freeze:TextField;
      
      public var freezei:MovieClip;
      
      public var holy:TextField;
      
      public var holyi:MovieClip;
      
      public var ice:TextField;
      
      public var icei:MovieClip;
      
      public var level:TextField;
      
      public var magicAttack2:TextField;
      
      public var magicAttack2i:MovieClip;
      
      public var magicDefence:TextField;
      
      public var magicDefence2:TextField;
      
      public var magicDefence2i:MovieClip;
      
      public var magicDefencei:MovieClip;
      
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
      
      public var txt1:TextField;
      
      public var txt2:TextField;
      
      public var txt3:TextField;
      
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
      
      public function foestatdisplay2bestiary_6820()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function display(param1:Foe) : *
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         visible = true;
         Global.translate(this.foe,"",25,param1.fname);
         Global.translate(this.level,"level",5," " + param1.level);
         this.foe.setTextFormat(GUI.boldText);
         this.level.setTextFormat(GUI.boldText);
         Global.translate(this.body,"",20,param1.description);
         for each(_loc2_ in Stats.STATS_SHORT)
         {
            if(_loc2_ == Stats.HP)
            {
               this[_loc2_].text = GUI.formatNumber(Math.round(param1.getStat(_loc2_)));
            }
            else
            {
               this[_loc2_].text = Math.round(param1.getStat(_loc2_));
            }
            this[_loc2_].setTextFormat(GUI.boldText);
         }
         this.HP.text = "" + GUI.formatNumber(param1.maxHP);
         this.HP.setTextFormat(GUI.boldText);
         for each(_loc3_ in Element.ELEMENTS)
         {
            if(param1.getResistance("elemental",_loc3_) != 1)
            {
               this[_loc3_ + "i"].alpha = 1;
               this[_loc3_].text = "" + (100 - param1.getResistance("elemental",_loc3_) * 100) + "%";
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
               this[_loc3_].text = "" + (100 - Math.round(param1.getResistance("status",_loc3_) * 100)) + "%";
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
         for each(_loc3_ in Buff.BUFFS_SHORT)
         {
            if(param1.getResistance("buff",_loc3_) != 1)
            {
               this[_loc3_ + "2i"].alpha = 1;
               this[_loc3_ + "2"].text = "" + (Math.round(param1.getResistance("buff",_loc3_) * 100) - 100) + "%";
               this[_loc3_ + "2"].setTextFormat(GUI.boldText);
               this[_loc3_ + "2"].textColor = 16777215;
               if(param1.getResistance("buff",_loc3_) < 1)
               {
                  this[_loc3_ + "2"].textColor = 16711680;
               }
            }
            else
            {
               this[_loc3_ + "2i"].alpha = 0.3;
               this[_loc3_ + "2"].text = "";
            }
            this[_loc3_ + "2"].mouseEnabled = false;
         }
         GUI.setTextColor(this.bast);
         GUI.setTextColor(this.elres);
         GUI.setTextColor(this.stres);
         GUI.setTextColor(this.deres);
         GUI.setTextColor(this.level);
      }
      
      public function init() : *
      {
         var X:int = 0;
         var Y:int = 0;
         var m:MovieClip = null;
         X = 852;
         Y = -240;
         this.HPi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,HPi.x + X - 22,HPi.y + Y - 19,{"name":Stats.getString(Stats.HP)},3);
         };
         this.defencei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,defencei.x + X - 22,defencei.y + Y - 19,{"name":Stats.getString(Stats.DEFENCE)},3);
         };
         this.magicDefencei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,magicDefencei.x + X - 22,magicDefencei.y + Y - 19,{"name":Stats.getString(Stats.MAGIC_DEFENCE)},3);
         };
         this.evadei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,evadei.x + X - 22,evadei.y + Y - 19,{"name":Stats.getString(Stats.EVADE)},3);
         };
         this.magicAttack2i.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,magicAttack2i.x + X - 22,magicAttack2i.y + Y - 19,{"name":Stats.getString(Stats.MAGIC_ATTACK)},3);
         };
         this.attack2i.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,attack2i.x + X - 22,attack2i.y + Y - 19,{"name":Stats.getString(Stats.ATTACK)},3);
         };
         this.accuracy2i.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,accuracy2i.x + X - 22,accuracy2i.y + Y - 19,{"name":Stats.getString(Stats.ACCURACY)},3);
         };
         this.defence2i.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,defence2i.x + X - 22,defence2i.y + Y - 19,{"name":Stats.getString(Stats.DEFENCE)},3);
         };
         this.magicDefence2i.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,magicDefence2i.x + X - 22,magicDefence2i.y + Y - 19,{"name":Stats.getString(Stats.MAGIC_DEFENCE)},3);
         };
         this.evade2i.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,evade2i.x + X - 22,evade2i.y + Y - 19,{"name":Stats.getString(Stats.EVADE)},3);
         };
         this.firei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,firei.x + X,firei.y + Y,{"name":Element.getString(Element.FIRE)},3);
         };
         this.thunderi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,thunderi.x + X,thunderi.y + Y,{"name":Element.getString(Element.THUNDER)},3);
         };
         this.icei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,icei.x + X,icei.y + Y,{"name":Element.getString(Element.ICE)},3);
         };
         this.earthi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,earthi.x + X,earthi.y + Y,{"name":Element.getString(Element.EARTH)},3);
         };
         this.bioi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,bioi.x + X,bioi.y + Y,{"name":Element.getString(Element.BIO)},3);
         };
         this.bombi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,bombi.x + X,bombi.y + Y,{"name":Element.getString(Element.BOMB)},3);
         };
         this.windi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,windi.x + X,windi.y + Y,{"name":Element.getString(Element.WIND)},3);
         };
         this.wateri.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,wateri.x + X,wateri.y + Y,{"name":Element.getString(Element.WATER)},3);
         };
         this.holyi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,holyi.x + X,holyi.y + Y,{"name":Element.getString(Element.HOLY)},3);
         };
         this.darki.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,darki.x + X,darki.y + Y,{"name":Element.getString(Element.DARK)},3);
         };
         this.burni.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,burni.x + X,burni.y + Y,{"name":Status.resistanceNames[0]},3);
         };
         this.stuni.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,stuni.x + X,stuni.y + Y,{"name":Status.resistanceNames[1]},3);
         };
         this.freezei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,freezei.x + X,freezei.y + Y,{"name":Status.resistanceNames[2]},3);
         };
         this.poisoni.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,poisoni.x + X,poisoni.y + Y,{"name":Status.resistanceNames[3]},3);
         };
         this.syphoni.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,syphoni.x + X,syphoni.y + Y,{"name":Status.resistanceNames[4]},3);
         };
         this.cursei.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,cursei.x + X,cursei.y + Y,{"name":Status.resistanceNames[5]},3);
         };
         this.staggeri.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,staggeri.x + X,staggeri.y + Y,{"name":Status.resistanceNames[6]},3);
         };
         this.weti.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,weti.x + X,weti.y + Y,{"name":Status.resistanceNames[7]},3);
         };
         this.weighti.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,weighti.x + X,weighti.y + Y,{"name":Status.resistanceNames[8]},3);
         };
         this.weaki.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,weaki.x + X,weaki.y + Y,{"name":Status.resistanceNames[9]},3);
         };
         this.dispeli.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,dispeli.x + X,dispeli.y + Y,{"name":Status.resistanceNames[10]},3);
         };
         this.deathi.onRollOverHandler = function(param1:MouseEvent):*
         {
            GUI.showTooltip(parent,deathi.x + X,deathi.y + Y,{"name":Status.resistanceNames[11]},3);
         };
         for each(s in Stats.STATS)
         {
            m = this[s + "2i"];
            if(m)
            {
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
         for each(s in Stats.STATS)
         {
            m = this[s + "i"];
            if(m)
            {
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
         visible = false;
         this.button1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.prevFoe();
         });
         this.button2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.nextFoe();
         });
         this.button3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.foestatsMenu.visible = false;
            parent.removePlayer();
            parent.initBestiary(parent.bpage);
         });
         Global.translate(this.bast,"bestiary3",15);
         Global.translate(this.chance,"bestiary4",15);
         Global.translate(this.deres,"debuffResistance",15);
         Global.translate(this.elres,"elementalResistance",15);
         Global.translate(this.stres,"statusResistance",15);
         Global.translate(this.txt1,"previous",10);
         Global.translate(this.txt2,"next",10);
         Global.translate(this.txt3,"back",10);
      }
      
      internal function frame2() : *
      {
         this.init();
         stop();
      }
   }
}

