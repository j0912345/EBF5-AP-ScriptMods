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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5106")]
   public dynamic class Sgfhymbol15_3140 extends MovieClip
   {
      public var brows:MovieClip;
      
      public var glasses:MovieClip;
      
      public var eq:int;
      
      public function Sgfhymbol15_3140()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,12,this.frame13,17,this.frame18,20,this.frame21,21,this.frame22);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(Boolean(parent.zombieMode) && Boolean(parent.zombieLance))
            {
               gotoAndStop(20);
            }
            else if(Boolean(parent.zombieMode) && Boolean(parent.zombieMatt))
            {
               gotoAndStop(2);
            }
            else
            {
               gotoAndStop(Players.equips[parent.playerNo][1]);
            }
         }
         catch(errObject:Error)
         {
         }
         this.brows.visible = false;
         if(Players.hasItem(34,1))
         {
            this.brows.visible = true;
         }
         this.glasses.visible = false;
         if(Players.hasItem(49,1))
         {
            this.glasses.visible = true;
         }
      }
      
      internal function frame10() : *
      {
         try
         {
            this.eq = Players.P1equips[0];
            if(this.eq == 3 || this.eq == 8)
            {
               gotoAndStop(32);
            }
            if(this.eq == 7 || this.eq == 10 || this.eq == 17)
            {
               gotoAndStop(33);
            }
            if(this.eq == 11 || this.eq == 13 || this.eq == 14 || this.eq == 16)
            {
               gotoAndStop(31);
            }
            if(this.eq == 4 || this.eq == 6 || this.eq == 12)
            {
               gotoAndStop(30);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame13() : *
      {
         try
         {
            if(Players.P1equips[2] == 3)
            {
               gotoAndStop(36);
            }
            if(Players.P1equips[2] == 7)
            {
               gotoAndStop(35);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame18() : *
      {
         try
         {
            if(Players.P1equips[2] == 3)
            {
               gotoAndStop(37);
            }
            if(Players.P1equips[2] == 7)
            {
               gotoAndStop(38);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame21() : *
      {
         try
         {
            if(Players.P1equips[2] == 3)
            {
               gotoAndStop(39);
            }
            if(Players.P1equips[2] == 12)
            {
               gotoAndStop(40);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame22() : *
      {
         if(Players.P1equips[0] == 19 || Players.P1equips[0] == 21)
         {
            gotoAndStop(34);
         }
      }
   }
}

