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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10148")]
   public dynamic class Stalactite2 extends SpellMC
   {
      public function Stalactite2()
      {
         super();
         addFrameScript(0,this.frame1,22,this.frame23,24,this.frame25,27,this.frame28,29,this.frame30,32,this.frame33,34,this.frame35,68,this.frame69);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame23() : *
      {
         Battle.finalHit = false;
         Skills.stalactite2();
      }
      
      internal function frame25() : *
      {
         Battle.shake("small");
      }
      
      internal function frame28() : *
      {
         Battle.finalHit = false;
         Skills.stalactite2();
      }
      
      internal function frame30() : *
      {
         Battle.shake("small");
      }
      
      internal function frame33() : *
      {
         Skills.stalactite2();
      }
      
      internal function frame35() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame69() : *
      {
         k();
      }
   }
}

