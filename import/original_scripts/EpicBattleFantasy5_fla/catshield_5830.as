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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3503")]
   public dynamic class catshield_5830 extends MovieClip
   {
      public var eq:int;
      
      public function catshield_5830()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,13,this.frame14);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent.zombieMode)
            {
               gotoAndStop(20);
            }
            else
            {
               gotoAndStop(Players.equips[5][0]);
            }
         }
         catch(errObject:Error)
         {
         }
      }
      
      internal function frame10() : *
      {
         try
         {
            this.eq = Players.equips[5][2];
            if(this.eq == 9 || this.eq == 20 || this.eq == 5)
            {
               gotoAndStop(24);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame14() : *
      {
         try
         {
            this.eq = Players.equips[5][2];
            if(this.eq == 2 || this.eq == 3 || this.eq == 4 || this.eq == 6 || this.eq == 7 || this.eq == 14 || this.eq == 17 || this.eq == 19)
            {
               gotoAndStop(22);
            }
            if(this.eq == 22 || this.eq == 15)
            {
               gotoAndStop(23);
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}

