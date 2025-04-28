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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7987")]
   public dynamic class Sandstorm extends SpellMC
   {
      public function Sandstorm()
      {
         super();
         addFrameScript(0,this.frame1,35,this.frame36,44,this.frame45);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL,3);
      }
      
      internal function frame36() : *
      {
         Skills.sandstorm();
      }
      
      internal function frame45() : *
      {
         k();
      }
   }
}

