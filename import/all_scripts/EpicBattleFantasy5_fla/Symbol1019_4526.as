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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol14899")]
   public dynamic class Symbol1019_4526 extends MovieClip
   {
      public function Symbol1019_4526()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3);
      }
      
      internal function frame1() : *
      {
         if(parent)
         {
            gotoAndStop(parent.skin);
         }
      }
      
      internal function frame3() : *
      {
         if(!Options.blood)
         {
            prevFrame();
         }
      }
   }
}

