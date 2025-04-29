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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2991")]
   public dynamic class Symbol73_5792 extends MovieClip
   {
      public function Symbol73_5792()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         if(!Options.mature)
         {
            nextFrame();
         }
         else if(Players.P5equips[2] == 4 || Players.P5equips[2] == 10)
         {
            gotoAndStop(3);
         }
      }
   }
}

