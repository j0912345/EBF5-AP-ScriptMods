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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8942")]
   public dynamic class DarkFlare extends SpellMC
   {
      public function DarkFlare()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,7,this.frame8,13,this.frame14,19,this.frame20,22,this.frame23,31,this.frame32);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Text.speech(Text.lanceSkills[39]);
         Text.speech(Text.lanceSkills[37]);
      }
      
      internal function frame8() : *
      {
         Battle.finalHit = false;
         Skills.gravitysurge();
      }
      
      internal function frame14() : *
      {
         Battle.finalHit = false;
         Skills.gravitysurge();
      }
      
      internal function frame20() : *
      {
         Skills.gravitysurge();
      }
      
      internal function frame23() : *
      {
         Text.speech(Text.lanceSkills[38]);
      }
      
      internal function frame32() : *
      {
         k();
      }
   }
}

