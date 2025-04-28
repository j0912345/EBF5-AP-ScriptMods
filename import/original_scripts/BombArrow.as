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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8444")]
   public dynamic class BombArrow extends SpellMC
   {
      public function BombArrow()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,7,this.frame8,10,this.frame11,15,this.frame16,31,this.frame32);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeXY();
      }
      
      internal function frame5() : *
      {
         Text.speech(Text.annaSkills[26]);
      }
      
      internal function frame8() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.nitroarrow();
      }
      
      internal function frame11() : *
      {
         nextSpell();
      }
      
      internal function frame16() : *
      {
         Text.speech(Text.annaSkills[28]);
      }
      
      internal function frame32() : *
      {
         k();
      }
   }
}

