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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8360")]
   public dynamic class SoulArrow extends SpellMC
   {
      public function SoulArrow()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,6,this.frame7,11,this.frame12,45,this.frame46);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeXY();
      }
      
      internal function frame6() : *
      {
         Text.speech(Text.annaSkills[19]);
         Text.speech(Text.annaSkills[20]);
         Text.speech(Text.annaSkills[39]);
      }
      
      internal function frame7() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.soularrow();
      }
      
      internal function frame12() : *
      {
         nextSpell();
      }
      
      internal function frame46() : *
      {
         k();
      }
   }
}

