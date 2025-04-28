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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10570")]
   public dynamic class Symbol625_4599 extends MovieClip
   {
      public function Symbol625_4599()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         if(parent && !parent.skin && parent.parent && Boolean(parent.parent.skin))
         {
            gotoAndStop(parent.parent.skin);
         }
         if(Boolean(parent) && Boolean(parent.skin))
         {
            gotoAndStop(parent.skin);
         }
      }
   }
}

