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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8289")]
   public dynamic class Charm extends SpellMC
   {
      public function Charm()
      {
         super();
         addFrameScript(0,this.frame1,14,this.frame15,15,this.frame16,28,this.frame29,29,this.frame30,54,this.frame55);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame15() : *
      {
         Skills.charm();
      }
      
      internal function frame16() : *
      {
         nextSpell();
      }
      
      internal function frame29() : *
      {
         if(Flags.battleEvent == Flags.NATALIE_BATTLE)
         {
            Text.speech(Text.natalie[7]);
         }
      }
      
      internal function frame30() : *
      {
         Text.speech(Text.nolegsSkills[14]);
         Text.speech(Text.nolegsSkills[15]);
         if(Battle.selectedSkill == Spells.charm2)
         {
            Text.speech(Text.nolegsSkills[16]);
         }
      }
      
      internal function frame55() : *
      {
         k();
      }
   }
}

