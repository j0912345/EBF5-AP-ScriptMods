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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10964")]
   public dynamic class Fog extends SpellMC
   {
      public function Fog()
      {
         super();
         addFrameScript(0,this.frame1,49,this.frame50,74,this.frame75);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL,3);
      }
      
      internal function frame50() : *
      {
         Skills.fog();
      }
      
      internal function frame75() : *
      {
         k();
      }
   }
}

