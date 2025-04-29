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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8590")]
   public dynamic class PlasmaWave extends SpellMC
   {
      public function PlasmaWave()
      {
         super();
         addFrameScript(0,this.frame1,17,this.frame18,22,this.frame23,43,this.frame44);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame18() : *
      {
         Skills.plasmawave();
      }
      
      internal function frame23() : *
      {
         Text.speech(Text.lanceSkills[34]);
         Text.speech(Text.lanceSkills[35]);
      }
      
      internal function frame44() : *
      {
         k();
      }
   }
}

