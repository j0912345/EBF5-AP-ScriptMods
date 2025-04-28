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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3849")]
   public dynamic class animationcodeball_1033 extends MovieClip
   {
      public function animationcodeball_1033()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         visible = false;
         try
         {
            if(!Options.idleBackgrounds)
            {
               parent.stop();
               parent.cacheAsBitmap = true;
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}

