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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9491")]
   public dynamic class Flare extends SpellMC
   {
      public function Flare()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,47,this.frame48,63,this.frame64);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Text.speech(Text.miscSkills[26]);
      }
      
      internal function frame48() : *
      {
         Skills.flare();
      }
      
      internal function frame64() : *
      {
         k();
      }
   }
}

