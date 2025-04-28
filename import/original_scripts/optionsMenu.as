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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4599")]
   public dynamic class optionsMenu extends MovieClip
   {
      public var b1:SimpleButton;
      
      public var db:SimpleButton;
      
      public var menu:optionsMenu2;
      
      public function optionsMenu()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         if(!Options.applicationFeatures || !Main.messagesEnabled)
         {
            gotoAndStop(2);
         }
         this.db.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            debug.visible = true;
         });
      }
   }
}

