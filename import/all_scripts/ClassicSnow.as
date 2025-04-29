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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10656")]
   public dynamic class ClassicSnow extends SpellMC
   {
      public function ClassicSnow()
      {
         super();
         addFrameScript(0,this.frame1,31,this.frame32,60,this.frame61);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame32() : *
      {
         Skills.user.snow();
      }
      
      internal function frame61() : *
      {
         k();
      }
   }
}

