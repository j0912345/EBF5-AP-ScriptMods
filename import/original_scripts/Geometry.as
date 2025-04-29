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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10506")]
   public dynamic class Geometry extends SpellMC
   {
      public function Geometry()
      {
         super();
         addFrameScript(0,this.frame1,16,this.frame17,18,this.frame19,23,this.frame24,29,this.frame30,35,this.frame36,46,this.frame47);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame17() : *
      {
         nextSpell();
      }
      
      internal function frame19() : *
      {
         Battle.selectedTarget = selectedTarget;
         Battle.finalHit = false;
         Skills.geometry();
      }
      
      internal function frame24() : *
      {
         Battle.selectedTarget = selectedTarget;
         Battle.finalHit = false;
         Skills.geometry();
      }
      
      internal function frame30() : *
      {
         Battle.selectedTarget = selectedTarget;
         Battle.finalHit = false;
         Skills.geometry();
      }
      
      internal function frame36() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.geometry();
      }
      
      internal function frame47() : *
      {
         k();
      }
   }
}

