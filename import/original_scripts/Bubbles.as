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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9558")]
   public dynamic class Bubbles extends SpellMC
   {
      public function Bubbles()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,9,this.frame10,14,this.frame15,15,this.frame16,39,this.frame40);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame5() : *
      {
         Battle.finalHit = false;
         Skills.bubbles();
      }
      
      internal function frame10() : *
      {
         Battle.finalHit = false;
         Skills.bubbles();
      }
      
      internal function frame15() : *
      {
         Skills.bubbles();
      }
      
      internal function frame16() : *
      {
         nextSpell();
      }
      
      internal function frame40() : *
      {
         k();
      }
   }
}

