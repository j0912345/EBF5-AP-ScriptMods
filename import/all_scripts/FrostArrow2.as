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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8440")]
   public dynamic class FrostArrow2 extends SpellMC
   {
      public function FrostArrow2()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,23,this.frame24,29,this.frame30,45,this.frame46);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame4() : *
      {
         Text.speech(Text.annaSkills[22]);
         Text.speech(Text.annaSkills[21]);
      }
      
      internal function frame24() : *
      {
         Skills.frostarrow2();
      }
      
      internal function frame30() : *
      {
         Text.speech(Text.annaSkills[23]);
      }
      
      internal function frame46() : *
      {
         k();
      }
   }
}

