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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9708")]
   public dynamic class Symbol1651_6368 extends MovieClip
   {
      public var swoosh:MovieClip;
      
      public function Symbol1651_6368()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         myColorTransform = new ColorTransform();
         myColorTransform.color = Global.getElementColor();
         this.swoosh.transform.colorTransform = myColorTransform;
      }
   }
}

