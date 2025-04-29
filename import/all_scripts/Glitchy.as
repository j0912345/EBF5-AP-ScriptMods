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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8076")]
   public dynamic class Glitchy extends SpellMC
   {
      public function Glitchy()
      {
         super();
         addFrameScript(0,this.frame1,30,this.frame31,37,this.frame38);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL,3);
      }
      
      internal function frame31() : *
      {
         Skills.glitchy();
      }
      
      internal function frame38() : *
      {
         k();
      }
   }
}

