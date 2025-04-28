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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10149")]
   public dynamic class Stalactite extends SpellMC
   {
      public function Stalactite()
      {
         super();
         addFrameScript(0,this.frame1,22,this.frame23,24,this.frame25,55,this.frame56);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame23() : *
      {
         Skills.stalactite();
      }
      
      internal function frame25() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame56() : *
      {
         k();
      }
   }
}

