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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12750")]
   public dynamic class Frame extends MovieClip
   {
      public var errorBox:TextField;
      
      public var shake:MovieClip;
      
      public function Frame()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         mouseEnabled = false;
         mouseChildren = false;
         visible = false;
         this.errorBox.mouseEnabled = false;
         Game.frame = this;
      }
   }
}

