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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9568")]
   public dynamic class BigBullet extends SpellMC
   {
      public function BigBullet()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,15,this.frame16,19,this.frame20,23,this.frame24,24,this.frame25,26,this.frame27,43,this.frame44);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame16() : *
      {
         nextSpell(isSummon,Spells.bigbullet);
      }
      
      internal function frame20() : *
      {
         Battle.shake("small");
      }
      
      internal function frame24() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.bigbullet();
      }
      
      internal function frame25() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame27() : *
      {
         Text.speech(Text.miscSkills[2]);
      }
      
      internal function frame44() : *
      {
         k();
      }
   }
}

