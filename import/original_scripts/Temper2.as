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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9113")]
   public dynamic class Temper2 extends SpellMC
   {
      public function Temper2()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,49,this.frame50,57,this.frame58,63,this.frame64);
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
      
      internal function frame50() : *
      {
         Skills.temper();
      }
      
      internal function frame58() : *
      {
         Text.speech(Text.mattSkills[14]);
      }
      
      internal function frame64() : *
      {
         k();
      }
   }
}

