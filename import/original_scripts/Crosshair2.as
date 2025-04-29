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
   import text.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12739")]
   public dynamic class Crosshair2 extends MovieClip
   {
      public var type:int;
      
      public var target:Target;
      
      public var alternative:Boolean;
      
      public function Crosshair2()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function onRollOverHandler(param1:MouseEvent) : *
      {
         gotoAndStop(3);
         if(this.type == 1)
         {
            GUI.showTooltip(parent,x - 100,y,{"name":SetStrings.getString("menus","targetAllFoes")},3);
         }
         if(this.type == 2)
         {
            GUI.showTooltip(parent,x + 100,y,{"name":SetStrings.getString("menus","targetAllPlayers")},6);
         }
         if(this.type == 3)
         {
            GUI.showTooltip(parent,x + 100,y,{"name":SetStrings.getString("menus","targetAll")},6);
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
         Battle.menu.selectTarget(this.target,this.alternative,this.type);
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

