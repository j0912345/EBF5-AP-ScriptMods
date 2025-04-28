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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9366")]
   public dynamic class SketchSkull extends SpellMC
   {
      public function SketchSkull()
      {
         super();
         addFrameScript(0,this.frame1,21,this.frame22,26,this.frame27,42,this.frame43);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame22() : *
      {
         nextSpell();
      }
      
      internal function frame27() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.sketchskull();
      }
      
      internal function frame43() : *
      {
         k();
      }
   }
}

