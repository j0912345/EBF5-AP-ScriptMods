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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol20304")]
   public dynamic class templebackwall_1354 extends MovieClip
   {
      public function templebackwall_1354()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,142,this.frame143,149,this.frame150);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame2() : *
      {
         ++parent.busy;
      }
      
      internal function frame143() : *
      {
         --parent.busy;
         Flags.EVIL_NOLEGS_DEFEATED.quantity = 2;
      }
      
      internal function frame150() : *
      {
         stop();
      }
   }
}

