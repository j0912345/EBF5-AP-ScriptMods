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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4951")]
   public dynamic class itemSelect extends MovieClip
   {
      public var p0:SimpleButton;
      
      public var p1:SimpleButton;
      
      public var p2:SimpleButton;
      
      public var p3:SimpleButton;
      
      public var tf1:TextField;
      
      public var tf2:TextField;
      
      public var tf3:TextField;
      
      public var tf4:TextField;
      
      public var w1:MovieClip;
      
      public function itemSelect()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         this.p0.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectItem(1);
         });
         this.p1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectItem(2);
         });
         this.p2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectItem(3);
         });
         this.p3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectItem(4);
         });
         Global.translate(this.tf1,"itemMenu1",32);
         Global.translate(this.tf2,"itemMenu2",32);
         Global.translate(this.tf3,"itemMenu3",32);
         Global.translate(this.tf4,"itemMenu4",32);
      }
   }
}

