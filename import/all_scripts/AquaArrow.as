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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8453")]
   public dynamic class AquaArrow extends SpellMC
   {
      public function AquaArrow()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,7,this.frame8,8,this.frame9,31,this.frame32);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeXY();
      }
      
      internal function frame6() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.aquaarrow();
      }
      
      internal function frame8() : *
      {
         Text.speech(Text.annaSkills[17]);
         Text.speech(Text.annaSkills[18]);
      }
      
      internal function frame9() : *
      {
         nextSpell();
      }
      
      internal function frame32() : *
      {
         k();
      }
   }
}

