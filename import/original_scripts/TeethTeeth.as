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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7218")]
   public dynamic class TeethTeeth extends SpellMC
   {
      public function TeethTeeth()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,5,this.frame6,8,this.frame9,24,this.frame25,50,this.frame51);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame3() : *
      {
         Battle.finalHit = false;
         Skills.arcadeteeth();
      }
      
      internal function frame6() : *
      {
         Battle.finalHit = false;
         Skills.arcadeteeth();
      }
      
      internal function frame9() : *
      {
         Skills.arcadeteeth();
      }
      
      internal function frame25() : *
      {
         nextSpell();
      }
      
      internal function frame51() : *
      {
         k();
      }
   }
}

