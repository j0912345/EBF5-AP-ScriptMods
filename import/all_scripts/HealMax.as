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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8275")]
   public dynamic class HealMax extends SpellMC
   {
      public function HealMax()
      {
         super();
         addFrameScript(0,this.frame1,48,this.frame49,59,this.frame60,75,this.frame76);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame49() : *
      {
         Skills.ninelives();
      }
      
      internal function frame60() : *
      {
         Text.speech(Text.nolegsSkills[20]);
      }
      
      internal function frame76() : *
      {
         k();
      }
   }
}

