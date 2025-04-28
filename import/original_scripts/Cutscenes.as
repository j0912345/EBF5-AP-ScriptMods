package
{
   import flash.accessibility.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1837")]
   public dynamic class Cutscenes extends MovieClip
   {
      public var MovieClip1062:MovieClip;
      
      public var blood:Boolean;
      
      public var animation:Boolean;
      
      public function Cutscenes()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         this.blood = false;
         this.animation = true;
      }
   }
}

