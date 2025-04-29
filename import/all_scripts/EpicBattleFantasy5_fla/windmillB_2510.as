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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19696")]
   public dynamic class windmillB_2510 extends MovieClip
   {
      public function windmillB_2510()
      {
         super();
         addFrameScript(1,this.frame2,2,this.frame3);
      }
      
      internal function frame2() : *
      {
         stop();
         if(Flags.TURBINES_FIXED.quantity)
         {
            nextFrame();
         }
      }
      
      internal function frame3() : *
      {
         stop();
      }
   }
}

