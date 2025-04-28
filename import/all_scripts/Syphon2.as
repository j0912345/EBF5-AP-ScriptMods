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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9331")]
   public dynamic class Syphon2 extends SpellMC
   {
      public function Syphon2()
      {
         super();
         addFrameScript(0,this.frame1,12,this.frame13,57,this.frame58,68,this.frame69);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame13() : *
      {
         Text.speech(Text.natzSkills[30]);
         Text.speech(Text.natzSkills[29]);
      }
      
      internal function frame58() : *
      {
         Skills.syphon2();
      }
      
      internal function frame69() : *
      {
         k();
      }
   }
}

