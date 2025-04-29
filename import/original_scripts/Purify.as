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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9411")]
   public dynamic class Purify extends SpellMC
   {
      public function Purify()
      {
         super();
         addFrameScript(0,this.frame1,21,this.frame22,28,this.frame29,52,this.frame53);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY_OR_ALL_ALLY,3);
      }
      
      internal function frame22() : *
      {
         Skills.purify();
      }
      
      internal function frame29() : *
      {
         Text.speech(Text.miscSkills[29]);
      }
      
      internal function frame53() : *
      {
         k();
      }
   }
}

