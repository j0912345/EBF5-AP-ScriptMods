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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8441")]
   public dynamic class FrostArrow extends SpellMC
   {
      public function FrostArrow()
      {
         super();
         addFrameScript(0,this.frame1,20,this.frame21,21,this.frame22,45,this.frame46);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeXY();
      }
      
      internal function frame21() : *
      {
         Text.speech(Text.annaSkills[22]);
         Text.speech(Text.annaSkills[21]);
         Battle.selectedTarget = selectedTarget;
         Skills.frostarrow();
      }
      
      internal function frame22() : *
      {
         nextSpell();
      }
      
      internal function frame46() : *
      {
         k();
      }
   }
}

