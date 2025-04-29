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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol20356")]
   public dynamic class undertalepost_1202 extends MovieClip
   {
      public function undertalepost_1202()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         if(Flags.UNDERLEGS_DEFEATED.quantity == 1)
         {
            gotoAndStop(2);
         }
         if(Flags.UNDERLEGS_DEFEATED.quantity == 2)
         {
            gotoAndStop(3);
         }
      }
   }
}

