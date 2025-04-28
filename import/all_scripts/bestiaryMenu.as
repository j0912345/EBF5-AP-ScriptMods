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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4503")]
   public dynamic class bestiaryMenu extends MovieClip
   {
      public var num1:TextField;
      
      public var num2:TextField;
      
      public var num3:TextField;
      
      public var num4:TextField;
      
      public var num5:TextField;
      
      public var page1:SimpleButton;
      
      public var page2:SimpleButton;
      
      public var page3:SimpleButton;
      
      public var page4:SimpleButton;
      
      public var page5:SimpleButton;
      
      public var txt1:TextField;
      
      public var txt13:TextField;
      
      public var txt2:TextField;
      
      public var txt3:TextField;
      
      public function bestiaryMenu()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         Global.translate(this.txt2,"bestiary1",15,"",false,"",false,true);
         Global.translate(this.txt1,"bestiary2",15);
         this.txt3.text = "" + Foes.scannedFoes.length;
         Global.translate(this.txt13,"summons13",10);
         this.page1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.initBestiary(1);
         });
         this.page2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.initBestiary(2);
         });
         this.page3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.initBestiary(3);
         });
         this.page4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.initBestiary(4);
         });
         this.page5.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.initBestiary(5);
         });
      }
   }
}

