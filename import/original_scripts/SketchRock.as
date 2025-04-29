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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9379")]
   public dynamic class SketchRock extends SpellMC
   {
      public function SketchRock()
      {
         super();
         addFrameScript(0,this.frame1,11,this.frame12,12,this.frame13,13,this.frame14,29,this.frame30);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame12() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.sketchrock();
      }
      
      internal function frame13() : *
      {
         Battle.shake("small");
      }
      
      internal function frame14() : *
      {
         nextSpell();
      }
      
      internal function frame30() : *
      {
         k();
      }
   }
}

