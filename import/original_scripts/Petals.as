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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8004")]
   public dynamic class Petals extends SpellMC
   {
      public function Petals()
      {
         super();
         addFrameScript(0,this.frame1,54,this.frame55,82,this.frame83);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL,3);
      }
      
      internal function frame55() : *
      {
         Skills.petals();
      }
      
      internal function frame83() : *
      {
         k();
      }
   }
}

