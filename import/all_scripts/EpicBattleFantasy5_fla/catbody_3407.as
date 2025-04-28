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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3164")]
   public dynamic class catbody_3407 extends MovieClip
   {
      public var tentacle:MovieClip;
      
      public var playerNo:int;
      
      public var eq:int;
      
      public function catbody_3407()
      {
         super();
         addFrameScript(0,this.frame1,12,this.frame13);
      }
      
      internal function frame1() : *
      {
         this.playerNo = 5;
         try
         {
            if(parent.zombieMode)
            {
               gotoAndStop(23);
            }
            else
            {
               gotoAndStop(Players.equips[5][2]);
            }
         }
         catch(errObject:Error)
         {
         }
         try
         {
            this.tentacle.visible = false;
            this.tentacle.stop();
            if(parent && !parent.zombieMode && Players.hasItem(36,5))
            {
               this.tentacle.visible = true;
               this.tentacle.play();
            }
         }
         catch(errObject:Error)
         {
         }
      }
      
      internal function frame13() : *
      {
         try
         {
            this.eq = Players.equips[5][0];
            if(this.eq == 10 || this.eq == 14 || this.eq == 12 && !Options.blood)
            {
               gotoAndStop(30);
            }
            if(this.eq == 4 || this.eq == 16 || this.eq == 17 || this.eq == 19)
            {
               gotoAndStop(31);
            }
            if(this.eq == 7 || this.eq == 8 || this.eq == 11 || this.eq == 12 && Options.blood)
            {
               gotoAndStop(32);
            }
         }
         catch(e:Error)
         {
            TRACE("FUCKOFF");
         }
      }
   }
}

