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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9573")]
   public dynamic class Berserk extends SpellMC
   {
      public function Berserk()
      {
         super();
         addFrameScript(0,this.frame1,15,this.frame16,16,this.frame17,29,this.frame30,44,this.frame45);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame16() : *
      {
         Skills.berserk();
      }
      
      internal function frame17() : *
      {
         nextSpell();
      }
      
      internal function frame30() : *
      {
         Text.speech(Text.nolegsSkills[17]);
         Text.speech(Text.nolegsSkills[18]);
         Text.speech(Text.nolegsSkills[19]);
      }
      
      internal function frame45() : *
      {
         k();
      }
   }
}

