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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9097")]
   public dynamic class Bless extends SpellMC
   {
      public function Bless()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,29,this.frame30,32,this.frame33,36,this.frame37);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame3() : *
      {
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Text.speech(Text.arcade[8]);
         }
      }
      
      internal function frame30() : *
      {
         Skills.starpower();
      }
      
      internal function frame33() : *
      {
         Text.speech(Text.natzSkills[5]);
      }
      
      internal function frame37() : *
      {
         k();
      }
   }
}

