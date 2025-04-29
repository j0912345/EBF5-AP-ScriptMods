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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11289")]
   public dynamic class Symbol1354_4267 extends MovieClip
   {
      public function Symbol1354_4267()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         visible = false;
         stop();
         if(Boolean(parent) && Boolean(parent.parent) && parent.parent.skin == 4)
         {
            visible = true;
         }
         if(Boolean(parent) && Boolean(parent.parent) && parent.parent.skin == 5)
         {
            visible = true;
            nextFrame();
         }
         if(Boolean(parent) && Boolean(parent.parent) && parent.parent.skin == 6)
         {
            visible = true;
            gotoAndStop(3);
         }
      }
   }
}

