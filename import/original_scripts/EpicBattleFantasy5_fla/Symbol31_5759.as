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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9072")]
   public dynamic class Symbol31_5759 extends MovieClip
   {
      public var swoosh:MovieClip;
      
      public var myColorTransform:*;
      
      public function Symbol31_5759()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         gotoAndStop(Global.circle);
         if(Global.circle == 1)
         {
            this.myColorTransform = new ColorTransform();
            this.myColorTransform.color = Global.getElementColor();
            this.swoosh.transform.colorTransform = this.myColorTransform;
         }
      }
   }
}

