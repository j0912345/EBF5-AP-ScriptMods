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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10395")]
   public dynamic class MermaidFish extends SpellMC
   {
      public function MermaidFish()
      {
         super();
         addFrameScript(0,this.frame1,33,this.frame34,38,this.frame39,45,this.frame46,52,this.frame53,59,this.frame60,99,this.frame100);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame34() : *
      {
         nextSpell();
      }
      
      internal function frame39() : *
      {
         Battle.selectedTarget = selectedTarget;
         Battle.finalHit = false;
         Skills.arcadefish();
      }
      
      internal function frame46() : *
      {
         Battle.selectedTarget = selectedTarget;
         Battle.finalHit = false;
         Skills.arcadefish();
      }
      
      internal function frame53() : *
      {
         Battle.selectedTarget = selectedTarget;
         Battle.finalHit = false;
         Skills.arcadefish();
      }
      
      internal function frame60() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.arcadefish();
      }
      
      internal function frame100() : *
      {
         k();
      }
   }
}

