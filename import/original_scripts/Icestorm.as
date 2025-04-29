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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9058")]
   public dynamic class Icestorm extends SpellMC
   {
      public function Icestorm()
      {
         super();
         addFrameScript(0,this.frame1,6,this.frame7,13,this.frame14,20,this.frame21,22,this.frame23,44,this.frame45);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame7() : *
      {
         Battle.finalHit = false;
         Skills.icestorm();
      }
      
      internal function frame14() : *
      {
         Battle.finalHit = false;
         Skills.icestorm();
      }
      
      internal function frame21() : *
      {
         Skills.icestorm();
      }
      
      internal function frame23() : *
      {
         Text.speech(Text.natzSkills[16]);
         Text.speech(Text.natzSkills[17]);
         Text.speech(Text.natzSkills[14]);
      }
      
      internal function frame45() : *
      {
         k();
      }
   }
}

