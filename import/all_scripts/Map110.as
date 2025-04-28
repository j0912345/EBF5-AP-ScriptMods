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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19761")]
   public dynamic class Map110 extends Maps
   {
      public function Map110()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      internal function frame1() : *
      {
         if(Boolean(Flags.EVIL_REACHED.quantity) && Math.random() < 0.2)
         {
            Flags.GLITCHINESS.quantity = 2;
         }
         init();
      }
      
      internal function frame2() : *
      {
         MapData.init(currentFrame,this);
      }
   }
}

