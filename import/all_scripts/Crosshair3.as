package
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12736")]
   public dynamic class Crosshair3 extends MovieClip
   {
      public var target:Player;
      
      public function Crosshair3()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function onRollOverHandler(param1:MouseEvent) : *
      {
         gotoAndStop(3);
      }
      
      public function onRollOutHandler(param1:MouseEvent) : *
      {
         gotoAndStop(2);
      }
      
      public function onClickHandler(param1:MouseEvent) : *
      {
      }
      
      public function onPressHandler(param1:MouseEvent) : *
      {
         Battle.menu.quickSwapPlayer(this.target);
         gotoAndStop(4);
      }
      
      public function onReleaseHandler(param1:MouseEvent) : *
      {
         gotoAndStop(3);
      }
      
      internal function frame1() : *
      {
         stop();
         buttonMode = true;
         useHandCursor = true;
         addEventListener(MouseEvent.ROLL_OVER,this.onRollOverHandler);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOutHandler);
         addEventListener(MouseEvent.CLICK,this.onClickHandler);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onPressHandler);
         addEventListener(MouseEvent.MOUSE_UP,this.onReleaseHandler);
      }
   }
}

