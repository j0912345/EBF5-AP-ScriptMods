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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7998")]
   public dynamic class Radiation extends SpellMC
   {
      public function Radiation()
      {
         super();
         addFrameScript(0,this.frame1,28,this.frame29,49,this.frame50);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL,1);
      }
      
      internal function frame29() : *
      {
         Skills.radiation();
      }
      
      internal function frame50() : *
      {
         k();
      }
   }
}

