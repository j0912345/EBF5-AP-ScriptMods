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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10130")]
   public dynamic class talisman1_6236 extends MovieClip
   {
      public function talisman1_6236()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         if(Options.blood)
         {
            gotoAndStop(Math.floor(Math.random() * 4 + 1));
         }
         else
         {
            gotoAndStop(Math.floor(Math.random() * 3 + 1));
         }
      }
   }
}

