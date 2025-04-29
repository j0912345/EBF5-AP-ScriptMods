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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7963")]
   public dynamic class Wind extends SpellMC
   {
      public function Wind()
      {
         super();
         addFrameScript(0,this.frame1,27,this.frame28,46,this.frame47);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL,3);
      }
      
      internal function frame28() : *
      {
         Skills.wind();
      }
      
      internal function frame47() : *
      {
         k();
      }
   }
}

