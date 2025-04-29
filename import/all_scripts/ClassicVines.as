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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7286")]
   public dynamic class ClassicVines extends SpellMC
   {
      public function ClassicVines()
      {
         super();
         addFrameScript(0,this.frame1,14,this.frame15,59,this.frame60);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame15() : *
      {
         Skills.user.vines();
      }
      
      internal function frame60() : *
      {
         k();
      }
   }
}

