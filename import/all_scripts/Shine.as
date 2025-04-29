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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9023")]
   public dynamic class Shine extends SpellMC
   {
      public function Shine()
      {
         super();
         addFrameScript(0,this.frame1,25,this.frame26,26,this.frame27,36,this.frame37);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame26() : *
      {
         Skills.shine();
      }
      
      internal function frame27() : *
      {
         Text.speech(Text.natzSkills[24]);
      }
      
      internal function frame37() : *
      {
         k();
      }
   }
}

