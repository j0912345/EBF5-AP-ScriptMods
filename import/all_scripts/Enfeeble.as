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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9502")]
   public dynamic class Enfeeble extends SpellMC
   {
      public function Enfeeble()
      {
         super();
         addFrameScript(0,this.frame1,31,this.frame32,40,this.frame41,49,this.frame50);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame32() : *
      {
         Skills.enfeeble();
      }
      
      internal function frame41() : *
      {
         Text.speech(Text.miscSkills[22]);
         Text.speech(Text.miscSkills[23]);
      }
      
      internal function frame50() : *
      {
         k();
      }
   }
}

