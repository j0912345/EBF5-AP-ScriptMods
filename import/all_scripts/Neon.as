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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8019")]
   public dynamic class Neon extends SpellMC
   {
      public function Neon()
      {
         super();
         addFrameScript(0,this.frame1,29,this.frame30,45,this.frame46);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL,3);
      }
      
      internal function frame30() : *
      {
         Skills.neon();
      }
      
      internal function frame46() : *
      {
         k();
      }
   }
}

