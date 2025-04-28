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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9453")]
   public dynamic class LaserSword extends SpellMC
   {
      public function LaserSword()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,3,this.frame4,14,this.frame15,15,this.frame16,56,this.frame57);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Battle.shake("small");
      }
      
      internal function frame4() : *
      {
         Skills.lasersword();
      }
      
      internal function frame15() : *
      {
         Text.speech(Text.miscSkills[1]);
      }
      
      internal function frame16() : *
      {
         nextSpell(isSummon,Spells.lasersword);
      }
      
      internal function frame57() : *
      {
         k();
      }
   }
}

