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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9407")]
   public dynamic class Reflex extends SpellMC
   {
      public function Reflex()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,16,this.frame17,23,this.frame24,31,this.frame32);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46)
         {
            Text.speech(Text.arcade[6]);
         }
      }
      
      internal function frame17() : *
      {
         Skills.reflex();
      }
      
      internal function frame24() : *
      {
         Text.speech(Text.miscSkills[20]);
         Text.speech(Text.miscSkills[21]);
      }
      
      internal function frame32() : *
      {
         k();
      }
   }
}

