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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4936")]
   public dynamic class equipsMenu3 extends MovieClip
   {
      public var cancel:SimpleButton;
      
      public var remove:SimpleButton;
      
      public var tx1:TextField;
      
      public var tx2:TextField;
      
      public var window:MovieClip;
      
      public function equipsMenu3()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         this.cancel.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.cancelEquipSelection();
         });
         this.remove.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.removeFlair();
         });
         Global.translate(this.tx1,"remove",15);
         Global.translate(this.tx2,"cancel",15);
         stop();
      }
   }
}

