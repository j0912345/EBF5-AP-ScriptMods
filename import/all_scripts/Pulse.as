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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9030")]
   public dynamic class Pulse extends SpellMC
   {
      public function Pulse()
      {
         super();
         addFrameScript(0,this.frame1,6,this.frame7,9,this.frame10,25,this.frame26);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame7() : *
      {
         Skills.pulse();
      }
      
      internal function frame10() : *
      {
         Text.speech(Text.natzSkills[20]);
         Text.speech(Text.natzSkills[21]);
         Text.speech(Text.natzSkills[22]);
      }
      
      internal function frame26() : *
      {
         k();
      }
   }
}

