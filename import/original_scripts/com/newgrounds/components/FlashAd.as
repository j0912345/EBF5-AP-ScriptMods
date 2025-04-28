package com.newgrounds.components
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2333")]
   public dynamic class FlashAd extends FlashAdBase
   {
      public var adContainer:MovieClip;
      
      public var newgroundsButton:SimpleButton;
      
      public var playButton:MovieClip;
      
      public function FlashAd()
      {
         super();
         addFrameScript(0,this.frame1,29,this.frame30);
      }
      
      public function onPlayClick(param1:MouseEvent) : void
      {
         removeAd();
         if(parent)
         {
            parent.removeChild(this);
         }
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame30() : *
      {
         if(this["playButton"])
         {
            this["playButton"].addEventListener(MouseEvent.CLICK,this.onPlayClick);
         }
      }
   }
}

