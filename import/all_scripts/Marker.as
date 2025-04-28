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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2359")]
   public dynamic class Marker extends MovieClip
   {
      public var b:SimpleButton;
      
      public var ID:int;
      
      public function Marker()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4);
      }
      
      internal function frame1() : *
      {
         stop();
         this.b.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.updated = true;
            ++SaveData.markerData[ID][2];
            nextFrame();
         });
      }
      
      internal function frame4() : *
      {
         parent.removeChild(this);
      }
   }
}

