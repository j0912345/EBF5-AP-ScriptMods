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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9577")]
   public dynamic class Barrier extends SpellMC
   {
      public function Barrier()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,43,this.frame44,53,this.frame54,62,this.frame63);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Text.speech(Text.arcade[6]);
         }
      }
      
      internal function frame44() : *
      {
         Skills.barrier();
      }
      
      internal function frame54() : *
      {
         Text.speech(Text.miscSkills[18]);
         Text.speech(Text.miscSkills[19]);
      }
      
      internal function frame63() : *
      {
         k();
      }
   }
}

