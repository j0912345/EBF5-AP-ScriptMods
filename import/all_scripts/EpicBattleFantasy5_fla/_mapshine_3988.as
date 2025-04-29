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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol16273")]
   public dynamic class _mapshine_3988 extends MovieClip
   {
      public function _mapshine_3988()
      {
         super();
         addFrameScript(1,this.frame2,13,this.frame14,28,this.frame29);
      }
      
      internal function frame2() : *
      {
         if(!Options.idleBackgrounds)
         {
            stop();
            this.cacheAsBitmap = true;
         }
      }
      
      internal function frame14() : *
      {
         if(Math.random() > 0.05)
         {
            gotoAndPlay(2);
         }
      }
      
      internal function frame29() : *
      {
         gotoAndPlay(2);
      }
   }
}

