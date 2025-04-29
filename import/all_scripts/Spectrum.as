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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9017")]
   public dynamic class Spectrum extends SpellMC
   {
      public function Spectrum()
      {
         super();
         addFrameScript(0,this.frame1,10,this.frame11,17,this.frame18,23,this.frame24,24,this.frame25,28,this.frame29);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame11() : *
      {
         Skills.spectrum();
      }
      
      internal function frame18() : *
      {
         Text.speech(Text.natzSkills[26]);
      }
      
      internal function frame24() : *
      {
         if(!Battle.bonusSpellFlag)
         {
            Battle.bonusSpell();
         }
      }
      
      internal function frame25() : *
      {
         drainage();
      }
      
      internal function frame29() : *
      {
         k();
      }
   }
}

