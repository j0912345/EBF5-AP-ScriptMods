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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2858")]
   public dynamic class confirmSave extends MovieClip
   {
      public var b1:SimpleButton;
      
      public var b2:SimpleButton;
      
      public var b3:SimpleButton;
      
      public var txt1:TextField;
      
      public var txt2:TextField;
      
      public var txt3:TextField;
      
      public function confirmSave()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         this.b1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.overwrite(false);
         });
         this.b2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.overwrite(true);
         });
         this.b3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.overwrite(false);
         });
         Global.translate(this.txt1,"save5",0,"",false,"",false,true);
         Global.translate(this.txt2,"quit2");
         Global.translate(this.txt3,"quit3");
         stop();
      }
   }
}

