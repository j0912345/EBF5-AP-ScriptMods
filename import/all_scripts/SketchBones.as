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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9385")]
   public dynamic class SketchBones extends SpellMC
   {
      public function SketchBones()
      {
         super();
         addFrameScript(0,this.frame1,17,this.frame18,19,this.frame20,20,this.frame21,26,this.frame27,31,this.frame32);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame18() : *
      {
         Battle.finalHit = false;
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            Summons.SketchXolotl.effect2();
         }
         else
         {
            Skills.sketchbones();
         }
      }
      
      internal function frame20() : *
      {
         nextSpell(isSummon,Spells.sketchBones);
      }
      
      internal function frame21() : *
      {
         Battle.finalHit = false;
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            Summons.SketchXolotl.effect2();
         }
         else
         {
            Skills.sketchbones();
         }
      }
      
      internal function frame27() : *
      {
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            Summons.SketchXolotl.effect2();
         }
         else
         {
            Skills.sketchbones();
         }
      }
      
      internal function frame32() : *
      {
         k();
      }
   }
}

