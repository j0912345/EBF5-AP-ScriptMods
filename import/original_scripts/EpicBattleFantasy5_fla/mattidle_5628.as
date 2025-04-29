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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11889")]
   public dynamic class mattidle_5628 extends MovieClip
   {
      public var lowHP:Boolean;
      
      public var zombieMode:Boolean;
      
      public var zombieMatt:Boolean;
      
      public var b:int;
      
      public var juggleItem:int;
      
      public var juggle:Boolean;
      
      public function mattidle_5628()
      {
         super();
         addFrameScript(0,this.frame1,58,this.frame59,184,this.frame185,185,this.frame186,190,this.frame191,226,this.frame227);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(!Options.idlePlayers && !parent.zombieMode || !Options.idleFoes && parent.zombieMode)
            {
               stop();
               cacheAsBitmap = true;
            }
         }
         catch(e:Error)
         {
         }
         this.lowHP = parent.lowHP;
         this.zombieMode = parent.zombieMode;
         this.zombieMatt = parent.zombieMatt;
      }
      
      internal function frame59() : *
      {
         try
         {
            if(Boolean(parent) && Boolean(parent.zombieMode))
            {
               gotoAndPlay(1);
            }
            else
            {
               this.b = Math.random() * 200;
               if(this.b == 0)
               {
                  gotoAndPlay("idle1");
               }
               else if(this.b == 1)
               {
                  gotoAndPlay("idle2");
               }
               else
               {
                  gotoAndPlay(1);
               }
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame185() : *
      {
         gotoAndPlay("sleep");
      }
      
      internal function frame186() : *
      {
         this.juggleItem = Math.floor(Math.random() * 60) + 580;
         if(Math.random() < 0.5)
         {
            this.juggleItem = Math.floor(Math.random() * 54) + 521;
         }
      }
      
      internal function frame191() : *
      {
         this.juggle = true;
      }
      
      internal function frame227() : *
      {
         gotoAndPlay("juggle");
      }
   }
}

