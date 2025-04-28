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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8991")]
   public dynamic class Toxic extends SpellMC
   {
      public function Toxic()
      {
         super();
         addFrameScript(0,this.frame1,23,this.frame24,45,this.frame46);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame24() : *
      {
         Skills.toxic();
      }
      
      internal function frame46() : *
      {
         k();
      }
   }
}

