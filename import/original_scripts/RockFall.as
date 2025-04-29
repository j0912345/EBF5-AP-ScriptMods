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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10275")]
   public dynamic class RockFall extends SpellMC
   {
      public function RockFall()
      {
         super();
         addFrameScript(0,this.frame1,14,this.frame15,15,this.frame16,18,this.frame19,20,this.frame21,22,this.frame23,25,this.frame26,54,this.frame55);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame15() : *
      {
         nextSpell();
      }
      
      internal function frame16() : *
      {
         Battle.selectedTarget = selectedTarget;
         Battle.finalHit = false;
         Skills.rockfall();
      }
      
      internal function frame19() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame21() : *
      {
         Battle.selectedTarget = selectedTarget;
         Battle.finalHit = false;
         Skills.rockfall();
      }
      
      internal function frame23() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame26() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.rockfall();
      }
      
      internal function frame55() : *
      {
         k();
      }
   }
}

