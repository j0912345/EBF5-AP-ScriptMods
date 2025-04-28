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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9290")]
   public dynamic class LightBlade extends SpellMC
   {
      public function LightBlade()
      {
         super();
         addFrameScript(0,this.frame1,14,this.frame15,22,this.frame23,31,this.frame32);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame15() : *
      {
         Skills.lightblade();
      }
      
      internal function frame23() : *
      {
         Text.speech(Text.mattSkills[26]);
      }
      
      internal function frame32() : *
      {
         k();
      }
   }
}

