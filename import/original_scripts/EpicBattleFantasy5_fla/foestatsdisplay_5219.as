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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12928")]
   public dynamic class foestatsdisplay_5219 extends MovieClip
   {
      public var HP:TextField;
      
      public var HPi:MovieClip;
      
      public var accuracy2:TextField;
      
      public var accuracy2i:MovieClip;
      
      public var attack2:TextField;
      
      public var attack2i:MovieClip;
      
      public var bio:TextField;
      
      public var bioi:MovieClip;
      
      public var body:TextField;
      
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
      
      public var defence2:TextField;
      
      public var defence2i:MovieClip;
      
      public var defencei:MovieClip;
      
      public var dispel:TextField;
      
      public var dispeli:MovieClip;
      
      public var earth:TextField;
      
      public var earthi:MovieClip;
      
      public var evade:TextField;
      
      public var evade2:TextField;
      
      public var evade2i:MovieClip;
      
      public var evadei:MovieClip;
      
      public var fader:MovieClip;
      
      public var fire:TextField;
      
      public var firei:MovieClip;
      
      public var foe:TextField;
      
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
      
      public function foestatsdisplay_5219()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function display(param1:Foe) : *
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         Global.translate(this.foe,"",10,param1.fname,false,"",false,true);
         Global.translate(this.level,"level",5," " + param1.level);
         this.foe.setTextFormat(GUI.boldText);
         this.level.setTextFormat(GUI.boldText);
         Global.translate(this.body,"",28,param1.description);
         GUI.setTextColor(this.level);
         for each(_loc2_ in Stats.STATS_SHORT)
         {
            this[_loc2_].text = Math.round(param1.getStat(_loc2_));
            this[_loc2_].setTextFormat(GUI.boldText);
            GUI.setTextColor(this[_loc2_]);
         }
         if(Options.noFoeHPbars)
         {
            this.HP.text = "" + param1.maxHP;
         }
         else
         {
            this.HP.text = "" + param1.realHP + "/" + param1.maxHP;
         }
         this.HP.setTextFormat(GUI.boldText);
         GUI.setTextColor(this.HP);
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
               this[_loc3_ + "2"].text = "" + Math.round(param1.getResistance("buff",_loc3_) * 100 - 100) + "%";
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
      }
      
      internal function frame1() : *
      {
         visible = false;
         stop();
      }
   }
}

