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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10092")]
   public dynamic class Vines extends SpellMC
   {
      public function Vines()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,13,this.frame14,17,this.frame18,22,this.frame23,59,this.frame60);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame10() : *
      {
         Battle.finalHit = false;
         Skills.vines();
      }
      
      internal function frame14() : *
      {
         Battle.finalHit = false;
         Skills.vines();
      }
      
      internal function frame18() : *
      {
         Battle.finalHit = false;
         Skills.vines();
      }
      
      internal function frame23() : *
      {
         Skills.vines();
      }
      
      internal function frame60() : *
      {
         k();
      }
   }
}

