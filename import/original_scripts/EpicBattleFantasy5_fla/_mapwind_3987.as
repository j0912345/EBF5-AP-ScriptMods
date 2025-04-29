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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol16272")]
   public dynamic class _mapwind_3987 extends MovieClip
   {
      public function _mapwind_3987()
      {
         super();
         addFrameScript(1,this.frame2,15,this.frame16,64,this.frame65);
      }
      
      internal function frame2() : *
      {
         if(!Options.idleBackgrounds)
         {
            stop();
            this.cacheAsBitmap = true;
         }
      }
      
      internal function frame16() : *
      {
         if(Math.random() > 0.1)
         {
            gotoAndPlay(2);
         }
      }
      
      internal function frame65() : *
      {
         gotoAndPlay(2);
      }
   }
}

