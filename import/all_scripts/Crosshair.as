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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12742")]
   public dynamic class Crosshair extends MovieClip
   {
      public var target:Target;
      
      public var alternative:Boolean;
      
      public function Crosshair()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function onRollOverHandler(param1:MouseEvent) : *
      {
         gotoAndStop(3);
         if(Boolean(this.target) && this.target.isPlayer)
         {
            GUI.showTooltip(parent,x,y,this.target,6);
         }
         if(Boolean(this.target) && !this.target.isPlayer)
         {
            GUI.showTooltip(parent,x,y,this.target,3);
         }
      }
      
      public function onRollOutHandler(param1:MouseEvent) : *
      {
         gotoAndStop(2);
         GUI.removeTooltip();
      }
      
      public function onClickHandler(param1:MouseEvent) : *
      {
      }
      
      public function onPressHandler(param1:MouseEvent) : *
      {
         Battle.menu.selectTarget(this.target,this.alternative);
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

