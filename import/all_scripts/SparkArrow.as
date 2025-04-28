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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8352")]
   public dynamic class SparkArrow extends SpellMC
   {
      public function SparkArrow()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,6,this.frame7,8,this.frame9,19,this.frame20);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeXY();
      }
      
      internal function frame6() : *
      {
         randomizeRotation();
      }
      
      internal function frame7() : *
      {
         Text.speech(Text.annaSkills[24]);
         Text.speech(Text.annaSkills[25]);
         Battle.selectedTarget = selectedTarget;
         Skills.sparkarrow();
      }
      
      internal function frame9() : *
      {
         nextSpell();
      }
      
      internal function frame20() : *
      {
         k();
      }
   }
}

