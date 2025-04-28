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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9291")]
   public dynamic class Vortex extends SpellMC
   {
      public function Vortex()
      {
         super();
         addFrameScript(0,this.frame1,10,this.frame11,33,this.frame34,34,this.frame35,48,this.frame49);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame11() : *
      {
         Battle.finalHit = false;
         Skills.vortex();
      }
      
      internal function frame34() : *
      {
         Skills.vortex();
      }
      
      internal function frame35() : *
      {
         Battle.shake("small");
      }
      
      internal function frame49() : *
      {
         k();
      }
   }
}

