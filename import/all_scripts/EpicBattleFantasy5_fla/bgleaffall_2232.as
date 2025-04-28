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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19909")]
   public dynamic class bgleaffall_2232 extends MovieClip
   {
      public function bgleaffall_2232()
      {
         super();
         addFrameScript(0,this.frame1,20,this.frame21,185,this.frame186);
      }
      
      internal function frame1() : *
      {
         x = Math.random() * 1020;
         y = Math.random() * 200 + 200;
      }
      
      internal function frame21() : *
      {
         if(Math.random() > 0.04)
         {
            gotoAndPlay(1);
         }
      }
      
      internal function frame186() : *
      {
         if(Math.random() > 0.2)
         {
            gotoAndPlay(2);
         }
      }
   }
}

