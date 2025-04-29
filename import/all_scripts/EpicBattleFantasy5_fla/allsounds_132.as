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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol22127")]
   public dynamic class allsounds_132 extends MovieClip
   {
      public function allsounds_132()
      {
         super();
         addFrameScript(0,this.frame1,97,this.frame98,98,this.frame99);
      }
      
      internal function frame1() : *
      {
         Options.setVolume(this);
         visible = false;
         stop();
      }
      
      internal function frame98() : *
      {
         gotoAndStop(int(Math.random() * 10 + 120));
      }
      
      internal function frame99() : *
      {
         gotoAndStop(int(Math.random() * 3 + 130));
      }
   }
}

