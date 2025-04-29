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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9556")]
   public dynamic class Bullet extends SpellMC
   {
      public function Bullet()
      {
         super();
         addFrameScript(0,this.frame1,10,this.frame11,14,this.frame15,17,this.frame18,24,this.frame25,33,this.frame34);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame11() : *
      {
         nextSpell(isSummon,Spells.bullet);
      }
      
      internal function frame15() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame18() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.bulletbob();
      }
      
      internal function frame25() : *
      {
         Text.speech(Text.miscSkills[2]);
      }
      
      internal function frame34() : *
      {
         k();
      }
   }
}

