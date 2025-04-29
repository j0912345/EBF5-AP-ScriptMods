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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9359")]
   public dynamic class SketchSpear extends SpellMC
   {
      public function SketchSpear()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,13,this.frame14,16,this.frame17,19,this.frame20,22,this.frame23);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame10() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.sketchspear(1);
      }
      
      internal function frame14() : *
      {
         nextSpell();
      }
      
      internal function frame17() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.sketchspear(2);
      }
      
      internal function frame20() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.library[17]);
         }
      }
      
      internal function frame23() : *
      {
         k();
      }
   }
}

