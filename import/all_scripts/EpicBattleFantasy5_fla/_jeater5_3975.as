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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol16354")]
   public dynamic class _jeater5_3975 extends MovieClip
   {
      public var b:int;
      
      public function _jeater5_3975()
      {
         super();
         addFrameScript(0,this.frame1,29,this.frame30,51,this.frame52,73,this.frame74);
      }
      
      public function shuffle() : *
      {
         if(Math.random() > 0.3)
         {
            return;
         }
         this.b = Math.random() * 3;
         if(this.b == 0)
         {
            gotoAndPlay("a");
         }
         if(this.b == 1)
         {
            gotoAndPlay("b");
         }
         if(this.b == 2)
         {
            gotoAndPlay("c");
         }
      }
      
      internal function frame1() : *
      {
         if(!Options.idleBackgrounds)
         {
            stop();
            gotoAndStop(4);
            this.cacheAsBitmap = true;
         }
         else
         {
            this.b = 0;
            this.b = Math.random() * 3;
            if(this.b == 0)
            {
               gotoAndPlay("a");
            }
            if(this.b == 1)
            {
               gotoAndPlay("b");
            }
            if(this.b == 2)
            {
               gotoAndPlay("c");
            }
         }
      }
      
      internal function frame30() : *
      {
         gotoAndPlay("a");
         this.shuffle();
      }
      
      internal function frame52() : *
      {
         gotoAndPlay("b");
         this.shuffle();
      }
      
      internal function frame74() : *
      {
         gotoAndPlay("c");
         this.shuffle();
      }
   }
}

