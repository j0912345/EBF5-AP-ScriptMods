package
{
   import fl.transitions.easing.*;
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10333")]
   public dynamic class PlasmaBall extends SpellMC
   {
      public function PlasmaBall()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,24,this.frame25,47,this.frame48,56,this.frame57);
      }
      
      internal function frame1() : *
      {
         skipPositioning = true;
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame5() : *
      {
         setXY();
         move(0,40,Regular.easeInOut);
      }
      
      internal function frame25() : *
      {
         Battle.selectedTarget = selectedTarget;
         gotoTargetDepth();
      }
      
      internal function frame48() : *
      {
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            Summons.BatThunder.effect2();
         }
         else
         {
            Skills.plasmaball();
         }
      }
      
      internal function frame57() : *
      {
         k();
      }
   }
}

