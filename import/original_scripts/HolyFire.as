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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9460")]
   public dynamic class HolyFire extends SpellMC
   {
      public function HolyFire()
      {
         super();
         addFrameScript(0,this.frame1,34,this.frame35,63,this.frame64);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame35() : *
      {
         Skills.holyfire();
      }
      
      internal function frame64() : *
      {
         k();
      }
   }
}

