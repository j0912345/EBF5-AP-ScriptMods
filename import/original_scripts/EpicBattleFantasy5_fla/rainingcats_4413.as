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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15389")]
   public dynamic class rainingcats_4413 extends MovieClip
   {
      public var head:MovieClip;
      
      public var cat:int;
      
      public function rainingcats_4413()
      {
         super();
         addFrameScript(0,this.frame1,29,this.frame30);
      }
      
      internal function frame1() : *
      {
         this.cat = Math.random() * 6 + 1;
         this.head.eyes.gotoAndStop("die");
      }
      
      internal function frame30() : *
      {
         gotoAndPlay(currentFrame + int(Math.random() * 60));
      }
   }
}

