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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9333")]
   public dynamic class Syphon extends SpellMC
   {
      public function Syphon()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,55,this.frame56,62,this.frame63);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame10() : *
      {
         Text.speech(Text.natzSkills[28]);
         Text.speech(Text.natzSkills[29]);
      }
      
      internal function frame56() : *
      {
         Skills.syphon();
      }
      
      internal function frame63() : *
      {
         k();
      }
   }
}

