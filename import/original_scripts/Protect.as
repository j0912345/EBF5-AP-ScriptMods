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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9417")]
   public dynamic class Protect extends SpellMC
   {
      public function Protect()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,31,this.frame32,41,this.frame42,47,this.frame48);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Text.speech(Text.arcade[6]);
         }
      }
      
      internal function frame32() : *
      {
         Skills.protect();
      }
      
      internal function frame42() : *
      {
         Text.speech(Text.miscSkills[17]);
         Text.speech(Text.miscSkills[19]);
      }
      
      internal function frame48() : *
      {
         k();
      }
   }
}

