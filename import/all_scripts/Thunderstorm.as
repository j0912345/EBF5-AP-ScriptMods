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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8994")]
   public dynamic class Thunderstorm extends SpellMC
   {
      public function Thunderstorm()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,7,this.frame8,12,this.frame13,15,this.frame16,18,this.frame19,23,this.frame24,36,this.frame37);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame3() : *
      {
         Battle.finalHit = false;
         Skills.thunderstorm();
      }
      
      internal function frame8() : *
      {
         Battle.finalHit = false;
         Skills.thunderstorm();
      }
      
      internal function frame13() : *
      {
         Battle.finalHit = false;
         Skills.thunderstorm();
      }
      
      internal function frame16() : *
      {
         Text.speech(Text.natzSkills[13]);
         Text.speech(Text.natzSkills[16]);
         Text.speech(Text.natzSkills[18]);
      }
      
      internal function frame19() : *
      {
         Battle.finalHit = false;
         Skills.thunderstorm();
      }
      
      internal function frame24() : *
      {
         Skills.thunderstorm();
      }
      
      internal function frame37() : *
      {
         k();
      }
   }
}

