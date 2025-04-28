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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9062")]
   public dynamic class Iceshard extends SpellMC
   {
      public function Iceshard()
      {
         super();
         addFrameScript(0,this.frame1,19,this.frame20,22,this.frame23,46,this.frame47);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame20() : *
      {
         Skills.iceshard();
      }
      
      internal function frame23() : *
      {
         Text.speech(Text.natzSkills[15]);
      }
      
      internal function frame47() : *
      {
         k();
      }
   }
}

