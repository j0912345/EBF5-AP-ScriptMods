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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12128")]
   public dynamic class lancenewspaper_5538 extends MovieClip
   {
      public function lancenewspaper_5538()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         if(Options.mature)
         {
            gotoAndStop(Math.floor(Math.random() * 6) * 2 + 1);
         }
         else
         {
            gotoAndStop(Math.floor(Math.random() * 4) * 2 + 1);
         }
      }
   }
}

