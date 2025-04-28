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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19221")]
   public dynamic class mapwindline_1811 extends MovieClip
   {
      public function mapwindline_1811()
      {
         super();
         addFrameScript(14,this.frame15,15,this.frame16);
      }
      
      internal function frame15() : *
      {
         if(Math.random() < 0.9)
         {
            gotoAndPlay(2);
         }
      }
      
      internal function frame16() : *
      {
         x = Math.random() * 700 - 100;
         y = Math.random() * 400 + 80;
      }
   }
}

