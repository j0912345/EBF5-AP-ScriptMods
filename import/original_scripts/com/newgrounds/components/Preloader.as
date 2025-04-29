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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2302")]
   public dynamic class Preloader extends MovieClip
   {
      public var loadingBar:MovieClip;
      
      public var playButton:MovieClip;
      
      public var autoPlay:Boolean;
      
      public var className:String;
      
      public function Preloader()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      public function enterFrameHandler(param1:Event) : void
      {
         var _loc2_:Number = 0;
         if(loaderInfo)
         {
            _loc2_ = loaderInfo.bytesLoaded / loaderInfo.bytesTotal;
         }
         if(this.loadingBar)
         {
            this.loadingBar.gotoAndStop(int(_loc2_ * (this.loadingBar.totalFrames - 1)) + 1);
         }
         if(_loc2_ >= 1)
         {
            removeEventListener(Event.ENTER_FRAME,this.enterFrameHandler);
            gotoAndStop("loaded");
         }
      }
      
      public function _onPlayClick(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = root as MovieClip;
         var _loc3_:MovieClip = parent as MovieClip;
         if(_loc2_)
         {
            _loc2_.play();
            _loc2_.nextFrame();
         }
         if(Boolean(_loc3_) && Boolean(_loc3_._onLoaded))
         {
            _loc3_._onLoaded();
         }
      }
      
      internal function frame1() : *
      {
         stop();
         addEventListener(Event.ENTER_FRAME,this.enterFrameHandler);
      }
      
      internal function frame10() : *
      {
         if(this.playButton)
         {
            this.playButton.addEventListener(MouseEvent.CLICK,this._onPlayClick);
            this.playButton.stop();
            this.playButton.buttonMode = true;
         }
         if(this.autoPlay)
         {
            this._onPlayClick(null);
         }
      }
   }
}

